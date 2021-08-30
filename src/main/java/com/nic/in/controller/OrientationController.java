package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrientationController {

	@RequestMapping("/OrientationProgrammes.htm")
	public String orientationProgrammes() {
		return "OrientationProgrammes";
		
	}
}
