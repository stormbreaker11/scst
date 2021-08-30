package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FilePetitionController {

	@RequestMapping( value = "filepetition.htm")
	public String filepettion(@RequestParam String type, @RequestParam String category, Model model) {
		model.addAttribute("ptype", type);
		model.addAttribute("pcategory", category);
		return "PETITIONDETAILS";
		
	}
}
