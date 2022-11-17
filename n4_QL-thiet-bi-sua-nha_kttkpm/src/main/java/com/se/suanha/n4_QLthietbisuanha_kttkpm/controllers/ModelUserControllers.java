package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ModelUserControllers {

	@GetMapping("/api/users")
	public String userPage() {
		
		
		return "user";
	}
}
