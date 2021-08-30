package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UploadController {

	@RequestMapping("uploaddocs")
	public String uploaddocs() {
		
		return "uploaddoc";
		
	}

	@RequestMapping("uploaddocsbyid")
	public String uploaddocsbyid() {
		return "uploaddocbyid";
		
	}
}
