package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ModelCustomerControllers {

	@GetMapping("/api/customers")
	public String customerPage() {
		
		
		return "customer";
	}
	
}
