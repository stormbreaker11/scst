package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FieldVisitController {

	@RequestMapping("/fieldvisitofthecommission.htm")
	public String fielDvisitoftheCommission() {
		return "FieldVisitoftheCommission";
		
	}
}