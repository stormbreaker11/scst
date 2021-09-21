package com.nic.in.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nic.in.commons.ScstCommons;
import com.nic.in.dao.PetitionDao;
import com.nic.in.model.Atrocity;
import com.nic.in.model.District;
import com.nic.in.model.General;
import com.nic.in.model.Login;
import com.nic.in.model.NodalOfficer;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitition_Land;
import com.nic.in.model.Service;
import com.nic.in.model.State;

@Controller
@RequestMapping("petition")
public class PetitionController {

	@Autowired
	private PetitionDao petitiondao;
	
	@Autowired
	private ScstCommons scstdao;

	@RequestMapping(value = "/petitiondetails.htm", method = RequestMethod.POST)
	public String petitionDetails(HttpServletRequest httpServletRequest, @ModelAttribute("nodal") NodalOfficer no, @RequestParam("file") MultipartFile nodalSign, Model model, @RequestParam String type, @RequestParam String pid, @RequestParam String category ) throws IOException {
		
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String petitionId=petitiondao.createPetitionId(pid, type);
		if(!petitionId.equals("")) {
			
			model.addAttribute("type", type);
			model.addAttribute("category", category);
			model.addAttribute("pid", pid);
			
			Petition petition= new Petition();
			petition.setPetitionCat(category);
			petition.setPetitionType(type);
			petition.setPetitionerId(pid);
			petition.setPetitionId(petitionId);
			model.addAttribute("pid", pid); // pid is petitioner id
			if (category.equals("L")) {
				model.addAttribute("typeVal", "L");
				model.addAttribute("typeOpt", "Land");
			}
			if (category.equals("A")) {
				model.addAttribute("typeVal", "A");
				model.addAttribute("typeOpt", "Atrocity");
			}
			if (category.equals("S")) {
				model.addAttribute("typeVal", "S");
				model.addAttribute("typeOpt", "Service");
			}
			if (category.equals("G")) {
				model.addAttribute("typeVal", "G");
				model.addAttribute("typeOpt", "General");
			}
			List<State> states = scstdao.getStates();
			List<District> district = scstdao.getDistrict("36");
			model.addAttribute("district", district);
			byte[] bytes = IOUtils.toByteArray(nodalSign.getInputStream());
			no.setNodalSign(bytes); /// setting nodal sign

		    //inserting petition 
			int insertPetition = petitiondao.insertPetition(petition, no, login);
			if(insertPetition==1) {
				HttpSession httpSession=httpServletRequest.getSession();
				httpSession.setAttribute("petitionID", petitionId);
				if(category.equals("L")) {  //L for land
					model.addAttribute("petitionland", new Petitition_Land());
					model.addAttribute("states", states);
					return "land_petition";
				}
				if(category.equals("A")) { //A for Atrocity
					List<Atrocity> atrocities=scstdao.getAtrocities();
					
					model.addAttribute("atrocities", atrocities);
					model.addAttribute("atrocity", new Atrocity());
					return "atrocity_petition"; //
				}
				if(category.equals("S")) { //S for Service
					model.addAttribute("service", new Service());
					return "service_petition";
				}
				if(category.equals("G")) { //G for general
					model.addAttribute("general", new General());
					return "general_petition";
				}
			}
			else {
				model.addAttribute("error",
						"Error : Petition is already filed or failed to file a new petition, try again");
				return "filepetition";
			}
		}
			model.addAttribute("error",
					"Error : Filing Petition, try again ");
			return "filepetition";
	}
	
	@RequestMapping(value = "finalsubmit.htm" , method = RequestMethod.POST)
	public String finalSubmit(HttpServletRequest httpServletRequest, @RequestParam String petitionerId, @RequestParam String category, @RequestParam String type, Model model) {
		String pid = (String) httpServletRequest.getSession().getAttribute("petitionID");
		int submit=petitiondao.submitPetition(petitionerId,pid);
		model.addAttribute("pid", pid);
		model.addAttribute("type", type);
		model.addAttribute("category", category);
		if(submit==0) {
			model.addAttribute("error", "Error: Occured while Submitting Petition. try again");
			//Petition petition=petitiondao.getPetition(petitionerId, pid);
			//model.addAttribute("petition", petition);
			return "viewpetitionstatus";
		}
		else {
			model.addAttribute("pid", pid.substring(0,2)+"/"+pid.substring(2,6)+"/"+pid.substring(6,10));
			return "submittedpetition";
		}
	}
	

	/*
	 * @RequestMapping(value = "submitpetition.htm" , method = RequestMethod.POST)
	 * public String submitPetition(HttpServletRequest
	 * httpServletRequest, @RequestParam String pid, @RequestParam String type,
	 * Model model ) { String petid = (String)
	 * httpServletRequest.getSession().getAttribute("petitionID"); Petition
	 * petition=landdao.getPetition(pid, petid);
	 * 
	 * model.addAttribute("type", type); model.addAttribute("pid", petid);
	 * model.addAttribute("petid",
	 * petid.substring(0,2)+"/"+petid.substring(2,6)+"/"+petid.substring(6,10));
	 * model.addAttribute("petition", petition); return "viewpetitionstatus"; }
	 */
	
}
