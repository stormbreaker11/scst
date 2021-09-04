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

import com.nic.in.dao.RespondentDao;
import com.nic.in.model.Login;
import com.nic.in.model.Respondent;

@Controller
@RequestMapping("/petition/respondent/")
public class ResondentController {

	@Autowired
	private RespondentDao respondentDao;
	 

	@RequestMapping(value = "respondentdetails.htm/{id}")
	public String respondentDetails(HttpServletRequest httpServletRequest, Model model, @PathVariable String id) {
		model.addAttribute("respondent", new Respondent());
		
		model.addAttribute("pid", id);
		HttpSession httpSession = httpServletRequest.getSession();
		String petId = (String) httpSession.getAttribute("petitionID");
		List<Respondent> respondents=  respondentDao.getRespondents(petId);
		model.addAttribute("respondents", respondents);
		return "respondentdetails";
	}
	

	@ResponseBody
	@RequestMapping(value = "addrespondent.htm" , method = RequestMethod.POST)
	public String addlanddetails(HttpServletRequest httpServletRequest, @ModelAttribute("respondent") Respondent respondent ) {
		
		String save="N";
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String pid = (String) httpServletRequest.getSession().getAttribute("petitionID");
		int savedata=respondentDao.addRepondent(respondent, login ,pid);
		
		if(savedata>=1) {
			save=""+savedata;
		}
		return save;
	}
	
	@ResponseBody
	@RequestMapping(value = "deleterespondent.htm" , method = RequestMethod.POST)
	public String deleteLand(HttpServletRequest httpServletRequest, @RequestParam String respcode, @RequestParam String petitionerId ) {
		
		String delete="N";
		int deleteLand=respondentDao.deleteRespondent(respcode, petitionerId);
		if(deleteLand==1) {
			delete="Y";
		}
		return delete;
	}
	
}
