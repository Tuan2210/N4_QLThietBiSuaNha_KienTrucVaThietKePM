package com.se.suanha.n4_QLthietbisuanha_kttkpm.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.User;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.repositories.UserRepository;

@Service
public class UserServices {
	
	@Autowired
	private UserRepository userRepository;
	
	public List<User> listUsers() {
		return userRepository.findAll();
	}
	
	public User findUserById(int idUser) {
		return userRepository.findUserById(idUser);
	}
}
