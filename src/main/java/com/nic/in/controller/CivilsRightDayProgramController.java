package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CivilsRightDayProgramController {

	@RequestMapping("/civilrightsday.htm")
	public String civilsrightday() {
		return "CivilRightsDay";
		
	}
}
