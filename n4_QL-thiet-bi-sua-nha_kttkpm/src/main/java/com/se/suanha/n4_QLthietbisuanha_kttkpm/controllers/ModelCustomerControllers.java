package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.util.Arrays;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Customer;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.services.CustomerServices;

@Controller
public class ModelCustomerControllers {
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Autowired
	private CustomerServices customerServices;
	
	Gson gson = new GsonBuilder().setPrettyPrinting().create();
	
	@GetMapping("/api/customers")
	public String customerPage(Model model) {
		String url = "http://localhost:8081/api/customer-service/customers";
		Object objCus = restTemplate.getForObject(url, Object[].class);
		model.addAttribute("objCustomers", objCus);
		System.out.println("Danh sách khách hàng: \n" +gson.toJson(Arrays.asList(objCus)));
		return "customer";
	}
	@GetMapping("/api/add-customer")
	public String formAddCus() {
		return "form-add-customer";
	}
	@GetMapping("/api/handleAddCustomer")
	public String handleCreateCustomer(@Valid @ModelAttribute("customer") Customer customer) {
		customerServices.addCustomer(customer);
		return "redirect:/api/customers";
	}
}
