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
import com.nic.in.model.District;

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
}
