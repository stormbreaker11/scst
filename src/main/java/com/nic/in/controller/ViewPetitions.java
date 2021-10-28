package com.nic.in.controller;

import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.nic.in.dao.PetitionDao;
import com.nic.in.model.Documents;
import com.nic.in.model.Login;
import com.nic.in.model.Petition;

@Controller
public class ViewPetitions {

	
	@Autowired
	private PetitionDao petitiondao;
	// petition view status page request mapper
		@RequestMapping(value = "/viewpetition.htm")
		public String viewPetitionstatus(HttpServletRequest httpServletRequest, Model mode) {
			
			Login login = (Login) httpServletRequest.getSession().getAttribute("login");
			if (login == null) {
				return "redirect:sesexp";
			}
			List<Petition> petitions = petitiondao.getSubmittedPetition(login.getCompid());
			mode.addAttribute("petitions", petitions);
			return "viewPetition";
		}
		
		@RequestMapping(value = "viewSubmittedpetition.htm", method = RequestMethod.GET)
		public String viewSubmittedpetition(HttpServletRequest httpServletRequest, Model model) {
			
			Login login = (Login) httpServletRequest.getSession().getAttribute("login");
			if (login == null) {
				return "redirect:sesexp";
			}
			List<Petition> petitions = petitiondao.getSubmittedPetition(login.getCompid());
			
			//filter all submitted petitions using Y 
			List<Petition> collectFinalSubmit = petitions.stream().filter(x->x.getFinalsubmit().equals("Y")).collect(Collectors.toList());
			model.addAttribute("petitions", collectFinalSubmit);
			return "viewSubmittedpetition";
			
		}
	
}
