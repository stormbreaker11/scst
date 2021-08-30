package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	// home page request mapper
	@RequestMapping(value = "/home")
	public String home() {
		return "index";
	}

	// home1 page request mapper
	@RequestMapping(value = "/home1.htm")
	public String adminhome() {
		return "home";
	}

	@RequestMapping(value = "/dashboard.htm")
	public String dashboard() {
		return "dashboard";
	}

	// home1 page request mapper
	@RequestMapping(value = "/home.htm")
	public String home1() {
		return "petitionsection";
	}

	// header
	@RequestMapping(value = "/headers.htm")
	public String header() {
		return "deptlog";
	}

	@RequestMapping(value = "/header2.htm")
	public String header2() {
		return "header2";
	}

	@RequestMapping(value = "/menu.htm")
	public String menu() {
		return "sidemenu";
	}
	@RequestMapping(value = "/footer.htm")
	public String footer() {
		return "footer";
	}

}
