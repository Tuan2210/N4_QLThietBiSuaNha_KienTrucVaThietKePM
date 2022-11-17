package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/home")
	public String homePage() {
		return "home";
	}

	@GetMapping("/user")
	public String userPage() {
		return "user";
	}
	
	@GetMapping("/product")
	public String productPage() {
		return "product";
	}
	
	@GetMapping("/customer")
	public String customerPage() {
		return "customer";
	}
}
