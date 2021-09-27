package com.nic.in.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.itextpdf.text.DocumentException;
import com.nic.in.commons.ScstCommons;
import com.nic.in.dao.DocDao;
import com.nic.in.dao.LandDao;
import com.nic.in.dao.PetitionDao;
import com.nic.in.dao.PetitionerDao;
import com.nic.in.model.District;
import com.nic.in.model.Documents;
import com.nic.in.model.Land;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitioner;
import com.nic.in.model.Petitition_Land;
import com.nic.in.util.PDFViewPoint;

@Controller
@RequestMapping("/petition/land/")
public class LandPetitionController {

	@Autowired
	PetitionDao petitiondao;
	
	@Autowired
	LandDao landdao;
	
	@Autowired
	PetitionerDao prDao;
	
	@Autowired
	private ScstCommons commons;
	
	@Autowired
	private DocDao docdao;
	@RequestMapping(value = "savepetitiondetails.htm")
	public String savePetitionDetails(HttpServletRequest httpServletRequest, Model model,@ModelAttribute("petitionland") Petitition_Land land, @RequestParam String type, @RequestParam String category) {
		
		
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String petitionId = (String) httpServletRequest.getSession().getAttribute("petitionID");
		model.addAttribute("type", type);
		List<District> district = commons.getDistrict("36");
		model.addAttribute("district", district);
		int saveLandPetition = landdao.saveLandPetition(land, login, petitionId);
		if(saveLandPetition==1) {
			/*
			 * model.addAttribute("pid",
			 * petitionId.substring(0,2)+"/"+petitionId.substring(2,6)+"/"+petitionId.
			 * substring(6,10));
			 */
		
			model.addAttribute("landdetails", new Land());
			model.addAttribute("petitionerId", land.getPetitionerId());
			model.addAttribute("type", type);
			List<Land> lands=landdao.getLanddetailssByPetition(petitionId);
			model.addAttribute("lands", lands);
			model.addAttribute("petId", petitionId);
			return "land_details";
		}
		model.addAttribute("error", "Error : Filing Petition failed, try again");
		if(type.equals("L")) {
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

	@RequestMapping(value = "petitionlanddetails.htm/{pid}/{type}") //pid petitioner id
	public String landDetails(HttpServletRequest httpServletRequest, Model model, @PathVariable("pid") String petitionerId, @PathVariable("type") String type ) {
		model.addAttribute("landdetails", new Land());
		model.addAttribute("petitionerId", petitionerId);
		model.addAttribute("type", type);
		
		HttpSession httpSession = httpServletRequest.getSession();
		String petId = (String) httpSession.getAttribute("petitionID");
		List<Land> lands=landdao.getLanddetailssByPetition(petId);
		List<District> district = commons.getDistrict("36");
		model.addAttribute("district", district);
		model.addAttribute("lands", lands);
		model.addAttribute("petId", petId);
		return "land_details";
	}
	

	
	@ResponseBody
	@RequestMapping(value = "addlanddetails.htm" , method = RequestMethod.POST)
	public String addlanddetails(HttpServletRequest httpServletRequest, @ModelAttribute("landdetails") Land land ) {
		
		String save="N";
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String pid = (String) httpServletRequest.getSession().getAttribute("petitionID");
		int savedata=landdao.addLand(land, login ,pid);
		
		if(savedata>=1) {
			save=""+savedata;
		}
		return save;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "deleteattachmentresult.htm" , method = RequestMethod.POST)
	public String deleteLand(HttpServletRequest httpServletRequest, @RequestParam String landcode, @RequestParam String petitionerId ) {
		
		String delete="N";
		int deleteLand=landdao.deleteLand(landcode, petitionerId);
		if(deleteLand==1) {
			delete="Y";
		}
		return delete;
	}
	
	@RequestMapping(value = "submitpetition.htm" , method = RequestMethod.POST)
	public String submitPetition(HttpServletRequest httpServletRequest, @RequestParam String pid, @RequestParam String type, 
			@RequestParam String category, Model model ) throws ParseException {
		String petid = (String) httpServletRequest.getSession().getAttribute("petitionID");
		Petition petition=landdao.getPetition(pid, petid);
		List<Petition> petitionEvidence=petitiondao.getEvedince(pid, petid);
		model.addAttribute("category", category);
		model.addAttribute("type", type);
		model.addAttribute("pid", petid);
		model.addAttribute("petitionEvidence", petitionEvidence);
		model.addAttribute("petid", petid.substring(0,2)+"/"+petid.substring(2,6)+"/"+petid.substring(6,10));
		model.addAttribute("petition", petition);
		return "viewpetitionstatus";
	}
	
	@ResponseBody
	@RequestMapping(value = "getLanddetails.htm" , method = RequestMethod.GET)
	public String landDetails(HttpServletRequest httpServletRequest, @RequestParam String landcode, @RequestParam String petitionerId ) {
		
		Land land=landdao.landdetails(landcode, petitionerId);
		Gson gson=new Gson();
		return gson.toJson(land);
	}
	
	
	@ResponseBody
	@RequestMapping(value = "updatelanddetails.htm/{landcode}" , method = RequestMethod.POST)
	public String updateLanddetails(HttpServletRequest httpServletRequest, @ModelAttribute("editland") Land land ,@PathVariable String landcode) {
		String response="N";
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		land.setLandId(Integer.parseInt(landcode));
	
		int update=landdao.updateLand(land, login);
		if(update==1) {
			response="Y";
		}
		return response;

		
		
	}
	@ResponseBody
	@RequestMapping(value = "getLandDetailsAjax.htm" , method = RequestMethod.GET)
	public String updateLanddetails(HttpServletRequest httpServletRequest, @RequestParam String petid) {
		List<Land> lands=landdao.getLanddetailssByPetition(petid);
		Gson gson=new Gson();
		return gson.toJson(lands);
		
	}
	
	@ResponseBody
	@RequestMapping(value = "updateLandAppeal.htm" , method = RequestMethod.POST)
	public String updateLanddetails(@ModelAttribute("petition") Petitition_Land land,  HttpServletRequest httpServletRequest, @RequestParam("filecourt") MultipartFile courtOrder) throws IOException {
		
		
		byte[] brdocbytes = IOUtils.toByteArray(courtOrder.getInputStream());
		String update="N";
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		land.setCourtOrder(brdocbytes);
		int saveOrUpd=landdao.updateLandAppeal(land, login);
		if(saveOrUpd==1) {
			update="Y";
		}
		return update;
		
		
	}
	

	@RequestMapping(value = "/viewpetitionDetails.htm")
	public String viewPetitionstatus(HttpServletRequest httpServletRequest, Model mode) {
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		List<Petitioner> petitions = prDao.getPetitions(login.getCompid());
		mode.addAttribute("petitions", petitions);
		mode.addAttribute("type", "L");
		return "viewPetionDetails";
	}

	
	@GetMapping("/pdfViewPointExport")
	public void exportToPDF( @RequestParam String petitionerId,  @RequestParam String petid, HttpServletRequest request, HttpServletResponse response)  throws DocumentException, IOException, 
	ParseException, java.io.IOException
	{
		
		//String petid = (String) request.getSession().getAttribute("petitionID");
		String headerKey = "Content-Disposition";
		String headerValue = "inline; filename=Land" + petid + ".pdf";
		response.setHeader(headerKey, headerValue);

		Petition petition = landdao.getPetition(petitionerId, petid);
		if(petition.getPetitionId()!=null) {
			
			List<Documents> gettingDocsByPid = docdao.getUploadedDocsByPid(petid);	
			PDFViewPoint exporter = new PDFViewPoint();
			Petitioner docs = prDao.getDocs(petitionerId);
			exporter.export(request,response, petition, gettingDocsByPid, docs);			
		}

	}

	}
	
