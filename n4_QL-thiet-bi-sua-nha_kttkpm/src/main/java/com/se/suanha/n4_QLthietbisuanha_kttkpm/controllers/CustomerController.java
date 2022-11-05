package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Customer;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.ResponseTemplateDTO;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.services.CustomerServices;

@RestController
@RequestMapping("/api/customer-service")
public class CustomerController {
	
	@Autowired
	private CustomerServices customerServices;
	
	@GetMapping("/customers")
	public List<Customer> listCustomers() {
		return customerServices.listCustomers();
	}
	
	@GetMapping("/customer/{id}")
	public ResponseTemplateDTO getCustomerWithUser(@PathVariable("id") int idCus) {
		return customerServices.getCustomerWithUser(idCus);
	}

}
