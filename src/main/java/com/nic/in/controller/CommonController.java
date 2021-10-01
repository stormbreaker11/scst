package com.nic.in.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.nic.in.commons.ScstCommons;
import com.nic.in.model.Caste;
import com.nic.in.model.District;
import com.nic.in.model.Mandal;

@Controller
public class CommonController {

	@Autowired
	private ScstCommons commons;
	
	@ResponseBody
	@RequestMapping( value = "loaddistricts/{id}", method = RequestMethod.GET)
	public String getStates(@PathVariable String id) {
		
		List<District> dist = commons.getDistrict(id);
		return new Gson().toJson(dist);
		
	}
	
	@ResponseBody
	@RequestMapping( value = "loadcaste/{id}", method = RequestMethod.GET)
	public String getCastes(@PathVariable String id) {
		
		List<Caste> castes = commons.getCastes(id);
		return new Gson().toJson(castes);
		
	}
	
	@ResponseBody
	@RequestMapping( value = "loadmandal/{id}", method = RequestMethod.GET)
	public String getMandal(@PathVariable String id) {
		
		List<Mandal> mandals = commons.getMandals(id); 
		return new Gson().toJson(mandals);
		
	}
	
	
}
