package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewingController {

	
	@RequestMapping("/reviewmeeting.htm")
	public String reviewMeeting() {
		return "ReviewMeeting";
		
	}
}
