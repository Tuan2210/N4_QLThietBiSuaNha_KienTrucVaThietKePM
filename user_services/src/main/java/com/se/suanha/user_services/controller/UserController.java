package com.se.suanha.user_services.controller;

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

import com.se.suanha.user_services.model.User;
import com.se.suanha.user_services.service.UserServices;

@RestController
@RequestMapping("/api/user-service")
public class UserController {

	@Autowired
	private UserServices userServices;
	
	@GetMapping("/users")
	public List<User> listUsers() {
		return userServices.listUsers();
	}
	
//	@PostMapping("/user/{id}")
//	public User findUserByUserName(@PathVariable("id") int idUser) {
//		return userServices.findUserById(idUser);
//	}

	@GetMapping("/user/{id}")
	public User findByIntId(@PathVariable("id") int userId)throws Exception {
		User user = userServices.findUserById(userId);
		return user;
	}
	
	@PostMapping("/user/add")
	public User addUSer(@RequestBody User user) {
		return userServices.addUser(user);
	}
	
	@DeleteMapping("/user/{id}")
	public void deleteUset(@PathVariable("id") int userId) {
		User user = userServices.findUserById(userId);
		userServices.deleteUser(user);
		System.out.println("Đã xóa user có mã: " +userId);
	}

	@PutMapping("/user/{id}")
	public ResponseEntity<User> updateUser(@PathVariable("id") int userId, @RequestBody User user){

		User newUser = userServices.findUserById(userId);
		newUser.setUserName(user.getUserName());
		newUser.setPassword(user.getPassword());
		userServices.updateUser(newUser);

		return ResponseEntity.ok().body(newUser);
	}
}
