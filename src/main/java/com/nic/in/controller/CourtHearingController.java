package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CourtHearingController {

	@RequestMapping("/courthearing.htm")
	public String courthearing() {
		return "CourtHearing";
		
	}
}
