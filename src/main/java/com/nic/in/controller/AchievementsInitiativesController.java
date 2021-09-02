package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AchievementsInitiativesController {
	@RequestMapping("/achievementsandinitiatives.htm")
	public String achievementsandInitiatives() {
		System.out.println("");
		return "AchievementsandInitiatives";
		
	}
}
