package com.se.suanha.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class LoginController {
	 @GetMapping("/home")
	    public String showHomePage() {
	        return "home";
	    }

	    @GetMapping("/LoginPage")
	    public String showMyLoginPage() {

	        return "login";

	    }
	    @GetMapping("/RegisterPage")
	    public String showMyRegisterPage() {
	    	return "customer-form-register";
	    }
	    // add request mapping for /access-denied
	    @GetMapping("/access-denied")
	    public String showAccessDenied() {

	        return "access-denied";

	    }
}
