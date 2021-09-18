package com.nic.in.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.nic.in.dao.AtrocityDao;
import com.nic.in.dao.PetitionDao;
import com.nic.in.dao.PetitionerDao;
import com.nic.in.model.Atrocity;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitioner;
import com.nic.in.model.Respondent;

@Controller
@RequestMapping("/petition/atrocity/")
public class AtrocityPetitionController {
	@Autowired
	private AtrocityDao dao;

	@Autowired
	private PetitionerDao petitionerdao;
	@Autowired
	private PetitionDao petitiondao;



	@RequestMapping(value = "/saveAtrocity", method = RequestMethod.POST)
	public String saveAtrocityPetition(@ModelAttribute("atrocity") Atrocity atrocity, Model model,
			@RequestParam("fir_pdfUpload") MultipartFile fir_pdfFile, HttpServletRequest httpServletRequest, @RequestParam String type, @RequestParam String category) throws IOException {
		
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String petitionID = (String) httpServletRequest.getSession().getAttribute("petitionID");
		
			byte[] bytes = IOUtils.toByteArray(fir_pdfFile.getInputStream());
			atrocity.setFir_pdf(bytes);

			model.addAttribute("type", type);
			model.addAttribute("typeVal", "A");
			model.addAttribute("typeOpt", "Atrocity");
		int saveAtrocityPetition = dao.saveAtrocityPetition(atrocity, login, petitionID);
		if (saveAtrocityPetition == 1) {
			model.addAttribute("pid", atrocity.getPetitioner_id());
			model.addAttribute("petId", petitionID);
			model.addAttribute("category", category);
			model.addAttribute("respondent", new Respondent());
			return "respondentdetails";
		}
		model.addAttribute("error", "Error: Saving Petition Details Failed");
		model.addAttribute("typeVal", "A");
		model.addAttribute("typeOpt", "Atrocity");
		
		return "filepetition";
	}

	@RequestMapping(value = "/viewpetitionDetails.htm")
	public String viewPetitionstatus(HttpServletRequest httpServletRequest, Model mode) {

		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		List<Petitioner> petitions = petitionerdao.getPetitions(login.getCompid());
		mode.addAttribute("petitions", petitions);
		mode.addAttribute("type", "A");
		return "viewPetionDetails";
	}

	@RequestMapping(value = "submitpetition.htm" , method = RequestMethod.POST)
	public String submitPetition(HttpServletRequest httpServletRequest, @RequestParam String pid, @RequestParam String type, Model model,  @RequestParam String category   ) {
		String petid = (String) httpServletRequest.getSession().getAttribute("petitionID");
		Petition petition=dao.getPetition(pid, petid);
		List<Petition> petitionEvidence=petitiondao.getEvedince(pid, petid);
		model.addAttribute("category", category);
		model.addAttribute("type", type);
		model.addAttribute("petitionEvidence", petitionEvidence);
		model.addAttribute("pid", petid);
		model.addAttribute("petid", petid.substring(0,2)+"/"+petid.substring(2,6)+"/"+petid.substring(6,10));
		model.addAttribute("petition", petition);
		return "viewpetitionstatus";
	}

	//modify Atrocity
	@ResponseBody
	@RequestMapping(value = "updateAtrocityDetails" , method = RequestMethod.POST)
	public String updateAtrocityDetails(HttpServletRequest httpServletRequest,
			@ModelAttribute("updateatrocity") Atrocity updateatrocity, Model model,
			@RequestParam("fir_pdfUpload") MultipartFile fir_pdfFile) throws IOException 
	{
		byte[] bytes = IOUtils.toByteArray(fir_pdfFile.getInputStream());
		updateatrocity.setFir_pdf(bytes);
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String save="N";
		int updteAtrocity = dao.updateAtrocity(updateatrocity , login);
		if (updteAtrocity == 1) {
			save="Y";
		}
		return save;
		}

}
