package com.nic.in.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nic.in.dao.PetitionDao;
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
			List<Petition> petitions = petitiondao.getSubmittedPetition(login.getCompid());
			mode.addAttribute("petitions", petitions);
			return "viewPetition";
		}
}
