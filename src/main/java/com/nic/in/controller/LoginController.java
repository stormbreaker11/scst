package com.nic.in.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nic.in.dao.LoginDao;
import com.nic.in.model.Login;
import com.nic.in.util.UserIdGenerator;

@Controller
public class LoginController {

	@Autowired
	private LoginDao logindao;
	
	@RequestMapping(value = "login.htm", method = RequestMethod.POST)
	public String login(@RequestParam String mobile, @RequestParam String enterotp, HttpServletRequest request,
			Model model) {

		Login user = logindao.getUser(mobile);
		HttpSession httpSession = request.getSession();
		if (user.getMobile() == null) {
			String generateRandomNumber = UserIdGenerator.generateRandomNumber();
			int createUser = logindao.createUser(mobile, enterotp, generateRandomNumber);
			if (createUser == 1) {
				user.setCompid(generateRandomNumber);
				user.setMobile(mobile);
				httpSession.setAttribute("login", user);
				return "redirect:home.htm";
			} else {
				return "Error Login";
			}
		} else {
			httpSession.setAttribute("login", user);
			return "redirect:home.htm";
		}
	}
}
