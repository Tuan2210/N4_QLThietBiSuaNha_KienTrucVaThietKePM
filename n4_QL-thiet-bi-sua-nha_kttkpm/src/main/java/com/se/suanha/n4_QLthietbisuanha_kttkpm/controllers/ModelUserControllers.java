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
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Product;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.User;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.services.UserServices;

@Controller
public class ModelUserControllers {
	@Autowired
	private RestTemplate restTemplate;
	
	@Autowired
	private UserServices userServices;
	
	Gson gson = new GsonBuilder().setPrettyPrinting().create();
	
	@GetMapping("/api/users")
	public String listUsers(Model model) {
		String url = "http://localhost:8081/api/user-service/users";
		Object[] objUsers = restTemplate.getForObject(url, Object[].class);
		model.addAttribute("objUsers", objUsers);
		System.out.println("Danh sách tất cả sản phẩm:\n" +gson.toJson(Arrays.asList(objUsers)));
		return "user";
	}
	
	@GetMapping("/api/add-users")
	public String formAddUser() {
		return "form-add-user";
	}
	
	@GetMapping("/api/handleAddUser")
	public String handleCreateUser(@Valid @ModelAttribute("user") User user) {
		userServices.addUser(user);
		return "redirect:/api/users";
	}

	@RequestMapping("api/handleDeleteUser/{id}")
	public String handleDeleteUser(@PathVariable("id") int userId) {
		String url = "http://localhost:8081/api/user-service/user/" +userId;
		restTemplate.delete(url);
		return "redirect:/api/users";
	}
	@GetMapping("api/update-user")
	public String formUpdateUser() {
		return "form-update-user";
	}
//	@GetMapping("/api/handleUpdateCustomer")
//	public String handleUpdateCustomer(@Valid @ModelAttribute("customer") Customer customer) {
//		String url = "http://localhost:8081/api/customer-service/customers" + customer.getIdCus();
//		restTemplate.put(url, customer,Customer.class);
//		
//		System.out.println("Đã cập nhật thông tin khách hàng" + gson.toJson(customer));
//		return "redirect:/api/customers";
//	}
	
	@GetMapping("/api/handleUpdateUser")
	public String handleUpdateUser(@Valid @ModelAttribute("user") User user) {
		String url = "http://localhost:8081/api/user-service/user/"+ user.getIdUser();
		restTemplate.put(url, user,User.class);
		System.out.println("Đã cập nhật thông tin user"+ gson.toJson(user));
		return "redirect:/api/users";
	}
}
