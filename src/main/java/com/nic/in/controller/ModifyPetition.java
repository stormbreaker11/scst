package com.nic.in.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nic.in.commons.ScstCommons;
import com.nic.in.dao.AtrocityDao;
import com.nic.in.dao.DocDao;
import com.nic.in.dao.GeneralDao;
import com.nic.in.dao.JointPetitionerDao;
import com.nic.in.dao.LandDao;
import com.nic.in.dao.PetitionDao;
import com.nic.in.dao.RespondentDao;
import com.nic.in.dao.ServiceDao;
import com.nic.in.model.Atrocity;
import com.nic.in.model.District;
import com.nic.in.model.Documents;
import com.nic.in.model.General;
import com.nic.in.model.Land;
import com.nic.in.model.Petition;
import com.nic.in.model.Petitioner;
import com.nic.in.model.Petitition_Land;
import com.nic.in.model.Respondent;
import com.nic.in.model.Service;
import com.nic.in.model.State;


@Controller
public class ModifyPetition {
	
	@Autowired
	private LandDao landdao;
	
	@Autowired
	private RespondentDao respondentdao;
	
	
	@Autowired
	private ServiceDao servicedao;
	
	@Autowired
	private AtrocityDao atrocitydao;
	
	@Autowired
	private GeneralDao generaldao;
	
	@Autowired
	private DocDao doc;
	
	@Autowired
	private PetitionDao petitiondao; 
	
	@Autowired
	private JointPetitionerDao jpDao;
	@Autowired
	private ScstCommons commons;
	@RequestMapping(value = "modifypetition.htm/{petitioner}/{petition}/{type}/{cat}")
	public String petitionDetails(HttpServletRequest httpServletRequest, Model model, @PathVariable String petition,
			@PathVariable String type, @PathVariable String cat, @PathVariable String petitioner  ) {
	
		String view="";
		
		
		model.addAttribute("type", type);
		model.addAttribute("petId", petition);
		List<Respondent> respondents=  respondentdao.getRespondents(petition);
		List<Land> lands=landdao.getLanddetailssByPetition(petition);
		model.addAttribute("lands", lands);
		model.addAttribute("respondents", respondents);
		model.addAttribute("respondent", new Respondent());
		model.addAttribute("upload", new Documents());
		model.addAttribute("landdetails", new Land());
		List<Documents> uploadedDocsByPid = doc.getUploadedDocsByPid(petition);
		//List<District> districtResp = commons.getDistrict("36");
		List<District> district = commons.getDistrict("36");
		
		model.addAttribute("district", district);
		model.addAttribute("uploadedDocsByPid", uploadedDocsByPid);
		model.addAttribute("pid", petitioner);
		HttpSession httpSession=httpServletRequest.getSession();
		httpSession.setAttribute("petitionID", petition);
		List<State> states = commons.getStates();
		List<Petitioner> jplist= jpDao.getJointPetioners(petition); //fetching joint petioners for group petition
		model.addAttribute("jplist", jplist);
		Petition grppetition= petitiondao.getPetitionDetails(petition); //group petition details
		model.addAttribute("petition", grppetition );
		if(cat.equals("L")) {//Land
			Petitition_Land landAppeal = landdao.getLandAppeal(petition);
			//System.out.println(landAppeal.getCourtComp()+ " "+landAppeal.getCourtComp().length() );
			model.addAttribute("petitionland", landAppeal);
			model.addAttribute("states", states);
			model.addAttribute("category", "Land");
			if(type.equals("G")) {
				model.addAttribute("jointpetitioner", new Petitioner() );
				view="edit_petition_group";
			}
			else {
				view="edit_petition";
			}
		}
		
		if(cat.equals("S")) {	//Service
			Service service= servicedao.getSerivePetiton(petition);
			//`
		//	System.out.println(landAppeal.getCourtComp()+ " "+landAppeal.getCourtComp().length() );
			model.addAttribute("service", service);
			model.addAttribute("category", "Service");
			
			if(type.equals("G")) {
				//model.addAttribute("jointpetitioner", new Petitioner() );
				model.addAttribute("jointpetitioner", new Petitioner() );
				view="edit_service_group";
			}else {
				
				view="edit_service";
			}
		}
		if(cat.equals("A")) {	//Atrocity
			Atrocity updateatrocity = atrocitydao.getAtrocityPetition(petition);
			List<Atrocity> atrocities=commons.getAtrocities();
			
			model.addAttribute("atrocities", atrocities);
			//System.out.println(landAppeal.getCourtComp()+ " "+landAppeal.getCourtComp().length() );
			model.addAttribute("updateatrocity", updateatrocity);
			model.addAttribute("category", "Atrocity");
			
			if(type.equals("G")) {
				model.addAttribute("jointpetitioner", new Petitioner() );
				
				view="edit_atrocity_group";
			}else {
				view="edit_atrocity";
			}
		}
		if(cat.equals("G")) {	//General
			General updategeneral = generaldao.getGeneralPetition(petition);
			//System.out.println(landAppeal.getCourtComp()+ " "+landAppeal.getCourtComp().length() );
			model.addAttribute("updategeneral", updategeneral);
			model.addAttribute("category", "General");
			
			if(type.equals("G")) {
				//model.addAttribute("jointpetitioner", new Petitioner() );
				model.addAttribute("jointpetitioner", new Petitioner() );
				view="edit_general_group";
			}else 
			{
				view="edit_general";
			}
		}
		
		return view;
	}	
}
