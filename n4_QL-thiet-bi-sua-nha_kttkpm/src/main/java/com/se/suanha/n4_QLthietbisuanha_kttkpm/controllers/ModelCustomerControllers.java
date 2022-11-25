package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.util.Arrays;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Customer;

@Controller
public class ModelCustomerControllers {
	
	@Autowired
	private RestTemplate restTemplate;
	
	Gson gson = new GsonBuilder().setPrettyPrinting().create();
	
	@GetMapping("/api/customers")
	public String customerPage(Model model) {
//		String url = "http://localhost:8081/api/customer-service/customers";
		String urlGateway = "http://localhost:8082/api/customer-service/customers";
		Object objCus = restTemplate.getForObject(urlGateway, Object[].class);
		model.addAttribute("objCustomers", objCus);
		
//		System.out.println("Danh sách khách hàng: \n" +gson.toJson(Arrays.asList(objCus)));
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8085 CUSTOMER-SERVICES => danh sách khách hàng");
		return "customer";
	}
	@GetMapping("/api/add-customer")
	public String formAddCus() {
		return "form-add-customer";
	}
	@GetMapping("/api/handleAddCustomer")
	public String handleCreateCustomer(@Valid @ModelAttribute("customer") Customer customer) {
//		customerServices.addCustomer(customer);
		
		String urlGateway = "http://localhost:8082/api/customer-service/customer/add";
		restTemplate.postForObject(urlGateway, customer, Customer.class);
		
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8085 CUSTOMER-SERVICES => thêm khách hàng");
		return "redirect:/api/customers";
	}
	@RequestMapping("/api/handleDeleteCustomer/{id}")
	public String handleDeleteCustomer (@PathVariable("id") int idCus) {
//		String url = "http://localhost:8081/api/customer-service/customer/" + idCus;
		String urlGateway = "http://localhost:8082/api/customer-service/customer/" + idCus;
		restTemplate.delete(urlGateway);
		
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8085 CUSTOMER-SERVICES => xóa khách hàng");
		return "redirect:/api/customers";
	}
	@GetMapping("/api/update-customer")
	public String formUpdateCus() {
		return "form-update-customer";
	}
	@GetMapping("/api/handleUpdateCustomer")
	public String handleUpdateCustomer(@Valid @ModelAttribute("customer") Customer customer) {
//		String url = "http://localhost:8081/api/customer-service/customer/" + customer.getIdCus();
		String urlGateway = "http://localhost:8082/api/customer-service/customer/" + customer.getIdCus();
		restTemplate.put(urlGateway, customer,Customer.class);
		
//		System.out.println("Đã cập nhật thông tin khách hàng" + gson.toJson(customer));
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8085 CUSTOMER-SERVICES => cập nhật thông tin khách hàng");
		return "redirect:/api/customers";
	}
}
