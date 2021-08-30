package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ChairmanController {


	@RequestMapping("/chairman.htm")
	public String chairman() {
		return "Chairman";
		
	}
}
