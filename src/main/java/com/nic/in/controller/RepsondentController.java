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

import com.google.gson.Gson;
import com.nic.in.dao.RespondentDao;
import com.nic.in.model.Login;
import com.nic.in.model.Respondent;

@Controller
@RequestMapping("/petition/respondent/")
public class RepsondentController {

	@Autowired
	private RespondentDao respondentDao;
	 

	@RequestMapping(value = "respondentdetails.htm/{id}/{type}/{category}")
	public String respondentDetails(HttpServletRequest httpServletRequest, Model model, @PathVariable String id, @PathVariable String type, @PathVariable String category  ) {
		model.addAttribute("respondent", new Respondent());
		
		model.addAttribute("pid", id);
		HttpSession httpSession = httpServletRequest.getSession();
		String petId = (String) httpSession.getAttribute("petitionID");
		List<Respondent> respondents=  respondentDao.getRespondents(petId);
		model.addAttribute("respondents", respondents);
		model.addAttribute("type", type);
		model.addAttribute("petId", petId);
		model.addAttribute("typeOpt", category);
		return "respondentdetails";
	}
	

	@ResponseBody
	@RequestMapping(value = "addrespondent.htm" , method = RequestMethod.POST)
	public String addlanddetails(HttpServletRequest httpServletRequest, @ModelAttribute("respondent") Respondent respondent ) {
		
		String save="N";
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		
		int savedata=respondentDao.addRepondent(respondent, login);
		
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
	
	@ResponseBody
	@RequestMapping(value = "getRespondentdetails.htm" , method = RequestMethod.GET)
	public String getResponentdetails(HttpServletRequest httpServletRequest, @RequestParam String respcode, @RequestParam String pid ) {
		
		Respondent resp= respondentDao.getRespondentById(respcode, pid);
		return new Gson().toJson(resp);
	}
	
	@ResponseBody
	@RequestMapping(value = "updaterespondent.htm/{respcode}", method = RequestMethod.POST)
	public String updateRespondent(HttpServletRequest httpServletRequest, @PathVariable String respcode, @RequestParam("name") String name,
	        @RequestParam("address") String address, 
			@RequestParam("mobile") String mobile, @RequestParam("email") String  email, @RequestParam("district") String district, 
			@RequestParam("respondentdetails") String respondentdetails, @RequestParam("respProffesion") String respProffesion, 
			@RequestParam("caste")  String caste, @RequestParam("petition") String petition) {
		
		
		Login login = (Login) httpServletRequest.getSession().getAttribute("login");
		String response = "N";
		
		Respondent respondent = new Respondent();
		respondent.setAddress(address);
		respondent.setRespName(name);
		respondent.setMobile(mobile);
		respondent.setEmail(email);
		respondent.setDistrict(district);
		respondent.setRespType(respondentdetails);
		respondent.setRespProffesion(respProffesion);
		respondent.setCaste(caste);
		respondent.setPetition(petition);
		
		int updateRespondent = respondentDao.updateRespondent(respcode, respondent, login);
		if (updateRespondent == 1) {
			response = "Y";
		}
		return response;
	}

	@ResponseBody
	@RequestMapping(value = "getRespondentDetailsAjax.htm" , method = RequestMethod.GET)
	public String getRespondentDetailsAjax(HttpServletRequest httpServletRequest, @RequestParam String petid) {
		 List<Respondent> respondents = respondentDao.getRespondents(petid);
		return new Gson().toJson(respondents);
	}
	
}
