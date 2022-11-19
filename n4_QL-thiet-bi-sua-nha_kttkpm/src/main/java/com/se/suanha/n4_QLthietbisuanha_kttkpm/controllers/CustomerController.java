package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
//	
//	@GetMapping("/customer/{id}")
//	public Customer findByIntId(@PathVariable("id") int idCus) {
//		Customer customer = customerServices.findByIntId(idCus);
//		return customer;
//	}
	@PostMapping("/customer/add")
	public Customer addCustomer(@RequestBody Customer customer) {
		return customerServices.addCustomer(customer);
	}
	@DeleteMapping("/customer/{id}")
	public void deleteCustomer(@PathVariable("id") int idCus) {
		Customer customer = customerServices.findByIntId(idCus);
		customerServices.deletedCustomer(customer);
		System.out.println("Đã xóa khách hàng có mã: " + idCus);
	}
	@PutMapping("/customer/{id}")
	public ResponseEntity<Customer> updateCustomer(@PathVariable("id") int idCus, @RequestBody Customer customer){
		Customer newCus = customerServices.findByIntId(idCus);
		newCus.setCusName(customer.getCusName());
		newCus.setPhone(customer.getPhone());
		newCus.setSex(customer.getSex());
		
		customerServices.updateCustomer(customer);
		return ResponseEntity.ok().body(newCus);
	}
}
