package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

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
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.User;

@Controller
public class ModelUserControllers {
	@Autowired
	private RestTemplate restTemplate;
	
	Gson gson = new GsonBuilder().setPrettyPrinting().create();
	
	@GetMapping("/api/users")
	public String listUsers(Model model) {
//		String url = "http://localhost:8081/api/user-service/users";
		String urlGateway = "http://localhost:8082/api/user-service/users";
		Object[] objUsers = restTemplate.getForObject(urlGateway, Object[].class);
		model.addAttribute("objUsers", objUsers);
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8083 USER-SERVICES => danh sách người dùng");
		return "user";
	}
	
	@GetMapping("/api/add-users")
	public String formAddUser() {
		return "form-add-user";
	}
	
	@GetMapping("/api/handleAddUser")
	public String handleCreateUser(@Valid @ModelAttribute("user") User user) {
//		userServices.addUser(user);
		String urlGateway = "http://localhost:8082/api/user-service/user/add";
		restTemplate.postForObject(urlGateway, user, User.class);
		
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8083 USER-SERVICES => thêm người dùng");
		return "redirect:/api/users";
	}

	@RequestMapping("api/handleDeleteUser/{id}")
	public String handleDeleteUser(@PathVariable("id") int userId) {
//		String url = "http://localhost:8081/api/user-service/user/" +userId;
//		restTemplate.delete(url);
		
		String urlGateway = "http://localhost:8082/api/user-service/user/" +userId;
		restTemplate.delete(urlGateway);
		
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8083 USER-SERVICES => xóa người dùng");
		return "redirect:/api/users";
	}
	@GetMapping("api/update-user")
	public String formUpdateUser() {
		return "form-update-user";
	}
	
	@GetMapping("/api/handleUpdateUser")
	public String handleUpdateUser(@Valid @ModelAttribute("user") User user) {
//		String url = "http://localhost:8081/api/user-service/user/"+ user.getIdUser();
		
		String urlGateway = "http://localhost:8082/api/user-service/user/"+ user.getIdUser();
		restTemplate.put(urlGateway, user,User.class);
//		System.out.println("Đã cập nhật thông tin user"+ gson.toJson(user));
		
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8083 USER-SERVICES => cập nhật thông tin người dùng");
		return "redirect:/api/users";
	}
}
