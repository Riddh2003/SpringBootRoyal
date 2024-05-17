package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Bean.UserBean;

@Controller
public class SessionController {
	@GetMapping("/signup")
	public String signup() {
		return "Signup";// jsp file name
	}

	@GetMapping("/login")
	public String login() {
		return "Login";// jsp file name
	}

	@GetMapping("/")
	public String welcome() {
		return "Welcome";// jsp file name
	}

	@PostMapping("/user")
	public String form(UserBean user) {
		System.out.println(user.getFirstname());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		return "Login";// jsp file name
	}
}
