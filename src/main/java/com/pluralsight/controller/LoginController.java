package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		System.out.println("in the login method");

		// This tells InternalResourceViewResolver inside servlet-config that we want
		// it to look to WEB-INF/jsp directory for a ".jsp". This is going to look for
		// login.jsp;
		return "login";
	}
}