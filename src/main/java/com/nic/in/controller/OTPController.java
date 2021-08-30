package com.nic.in.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.nic.in.util.OTPGenerator;

@RestController
public class OTPController {

	
	@RequestMapping(value = "getotp.htm", method = RequestMethod.GET)
	public String generateOtp() {
		
		int otpGenerator = OTPGenerator.otpGenerator();
		return ""+otpGenerator;
		
	}
}
