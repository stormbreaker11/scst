package com.nic.in.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itextpdf.text.DocumentException;
import com.nic.in.commons.ScstCommons;
import com.nic.in.dao.DocDao;
import com.nic.in.dao.PetitionDao;
import com.nic.in.dao.PetitionerDao;
import com.nic.in.dao.ServiceDao;
import com.nic.in.model.District;
import com.nic.in.model.Documents;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitioner;
import com.nic.in.model.Respondent;
import com.nic.in.model.Service;
import com.nic.in.util.PDFViewPoint;

@Controller
@RequestMapping("/petition/service/")
public class ServiceController {
	
	@Autowired
	PetitionerDao petitionerdao;
	
	@Autowired
	private ServiceDao servicedao; 
	
	@Autowired
	private PetitionDao petitiondao;
	
	@Autowired
	private ScstCommons commons;
	
	@Autowired
	private DocDao docdao;
	
	@RequestMapping(value = "viewpetitionDetails.htm" , method = RequestMethod.GET)
	public String viewPetitionstatus(HttpServletRequest httpServletRequest, Model mode) {

		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		List<Petitioner> petitions = petitionerdao.getPetitions(login.getCompid());
		mode.addAttribute("petitions", petitions);
		mode.addAttribute("type", "S");
		return "viewPetionDetails";
	}

	 @RequestMapping(value="/saveService", method = RequestMethod.POST)    
	    public String saveSevicePetition(@ModelAttribute("service") Service service, Model model,HttpServletRequest httpServletRequest, @RequestParam String type, @RequestParam String category)
	 {    
		 

			Login login = (Login) httpServletRequest.getSession().getAttribute("login");
			String petitionID = (String) httpServletRequest.getSession().getAttribute("petitionID");
	        int saveServicePetition = servicedao.saveServicePetition(service,login,petitionID);
	        List<District> districts = commons.getDistrict("36");
			model.addAttribute("districts", districts);
	        if(saveServicePetition==1) {
	        	model.addAttribute("type", type);
	        	model.addAttribute("pid", service.getPetitioner_id());
				model.addAttribute("petId", petitionID);
				model.addAttribute("typeOpt", category);
				model.addAttribute("respondent", new Respondent());
				return "respondentdetails";
	        }
	        model.addAttribute("error", "Error: Saving Petition Details Failed");
	        if(category.equals("L")) {
				model.addAttribute("typeVal", "L");
				model.addAttribute("typeOpt", "Land");
			}
			if(category.equals("A")) {
				model.addAttribute("typeVal", "A");
				model.addAttribute("typeOpt", "Atrocity");
			}
			if(category.equals("S")) {
				model.addAttribute("typeVal", "S");
				model.addAttribute("typeOpt", "Service");
			}
			if(category.equals("G")) {
				model.addAttribute("typeVal", "G");
				model.addAttribute("typeOpt", "General");
			}
	        return "filepetition";   
	 }
	 
		@RequestMapping(value = "submitpetition.htm" , method = RequestMethod.POST)
		public String submitPetition(HttpServletRequest httpServletRequest, @RequestParam String pid, @RequestParam String type, Model model,  @RequestParam String category   ) {
			String petid = (String) httpServletRequest.getSession().getAttribute("petitionID");
			Petition petition=servicedao.getPetition(pid, petid);
			List<Petition> petitionEvidence=petitiondao.getEvedince(pid, petid);
			model.addAttribute("category", category);
			model.addAttribute("type", type);
			model.addAttribute("petitionEvidence", petitionEvidence);
			model.addAttribute("pid", petid);
			model.addAttribute("petid", petid.substring(0,2)+"/"+petid.substring(2,6)+"/"+petid.substring(6,10));
			model.addAttribute("petition", petition);
			return "viewpetitionstatus";
		}
		

		@ResponseBody
		@RequestMapping(value = "serviceAppeal.htm")
		public String submitPetition(@ModelAttribute ("service") Service service, HttpServletRequest httpServletRequest) {
			
			String response="N";
			Login login = (Login) httpServletRequest.getSession().getAttribute("login");
			int update=servicedao.updateServiceAppeal(service , login);
			if(update==1) {
				response="Y";
			}
			return response;
			
		}
		
		@GetMapping("/pdfViewPointExport")
		public void exportToPDF( @RequestParam String petitionerId, @RequestParam String petid,  HttpServletRequest request, HttpServletResponse response)  throws DocumentException, IOException, 
		ParseException, java.io.IOException
		{
			//response.setContentType("application/pdf");
		
		//	String petid = (String) request.getSession().getAttribute("petitionID");
			String headerKey = "Content-Disposition";
			String headerValue = "inline; filename=Atrocity" + petid + ".pdf";
			response.setHeader(headerKey, headerValue);

			Petition petition = servicedao.getPetition(petitionerId, petid);
			if(petition.getPetitionId()!=null) {
				List<Documents> gettingDocsByPid = docdao.getUploadedDocsByPid(petid);	
				PDFViewPoint exporter = new PDFViewPoint();
				Petitioner docs = petitionerdao.getDocs(petitionerId);
				exporter.export(request,response, petition, gettingDocsByPid, docs);			
			}

		}

}
