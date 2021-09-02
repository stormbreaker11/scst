package com.nic.in.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nic.in.dao.LandDao;
import com.nic.in.dao.PetitionDao;
import com.nic.in.model.Login;
import com.nic.in.model.Petitition_Land;

@Controller
@RequestMapping("/petition/land/")
public class LandPetitionController {

	@Autowired
	PetitionDao petitiondao;
	
	@Autowired
	LandDao landdao;
	
	@RequestMapping(value = "petitiondetails.htm")
	public String petitionDetails(HttpServletRequest httpServletRequest, Model model, @RequestParam String type, @RequestParam String pid) {
		model.addAttribute("ptype", type); 
		String petitionId=petitiondao.createPetitionId(type);
		HttpSession httpSession=httpServletRequest.getSession();
		httpSession.setAttribute("petitionID", petitionId);
		model.addAttribute("petitionland", new Petitition_Land());
		model.addAttribute("pid", pid);
		return "land_petition";
	}
	
	@RequestMapping(value = "savepetitiondetails.htm")
	public String savePetitionDetails(HttpServletRequest httpServletRequest, Model model,@ModelAttribute("petitionland") Petitition_Land land) {
		
		
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String pid = (String) httpServletRequest.getSession().getAttribute("petitionID");
		int saveLandPetition = landdao.saveLandPetition(land, login, pid);
		if(saveLandPetition==1) {
			model.addAttribute("pid", pid);
			return "saveDetails";
		}
		model.addAttribute("error", "Error: Saving Petition Details Failed");
		model.addAttribute("petitionland", new Petitition_Land());
		return "land_petition";
	}

	@RequestMapping(value = "petitionlanddetails.htm")
	public String landDetails(HttpServletRequest httpServletRequest, Model model ) {
		
		return "land_details";
	}
	
	
}
