package com.nic.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller


public class MemberController {

	@RequestMapping("/member.htm")
	public String districtvigilance() {
		return "DistrictVigilance";
		
	}
}
