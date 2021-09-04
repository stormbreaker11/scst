package com.nic.in.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nic.in.dao.LandDao;
import com.nic.in.dao.PetitionDao;
import com.nic.in.model.Land;
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
		String petitionId = (String) httpServletRequest.getSession().getAttribute("petitionID");
		int saveLandPetition = landdao.saveLandPetition(land, login, petitionId);
		if(saveLandPetition==1) {
			model.addAttribute("pid", petitionId);
			model.addAttribute("petitionerId", land.getPetitionerId());
			return "saveDetails";
		}
		model.addAttribute("error", "Error: Saving Petition Details Failed");
		model.addAttribute("petitionland", new Petitition_Land());
		return "land_petition";
	}

	@RequestMapping(value = "petitionlanddetails.htm/{pid}") //pid petitioner id
	public String landDetails(HttpServletRequest httpServletRequest, Model model, @PathVariable("pid") String petitionerId ) {
		model.addAttribute("landdetails", new Land());
		model.addAttribute("petitionerId", petitionerId);
		
		HttpSession httpSession = httpServletRequest.getSession();
		String petId = (String) httpSession.getAttribute("petitionID");
		List<Land> lands=landdao.getLanddetailssByPetition(petId);
		model.addAttribute("lands", lands);
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
	
	
}
