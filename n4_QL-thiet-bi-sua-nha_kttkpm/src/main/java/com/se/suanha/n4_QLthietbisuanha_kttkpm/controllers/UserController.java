package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.User;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.services.UserServices;

@RestController
@RequestMapping("/api/user-service")
public class UserController {

	@Autowired
	private UserServices userServices;
	
	@GetMapping("/users")
	public List<User> listUsers() {
		return userServices.listUsers();
	}
	
	@GetMapping("/user/{id}")
	public User findUserByUserName(@PathVariable("id") int idUser) {
		return userServices.findUserById(idUser);
	}
}
