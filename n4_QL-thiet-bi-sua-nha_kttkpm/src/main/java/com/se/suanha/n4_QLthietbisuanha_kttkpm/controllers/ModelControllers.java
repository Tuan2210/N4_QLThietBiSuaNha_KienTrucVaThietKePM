package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class ModelControllers {
	
	@Autowired
	private RestTemplate restTemplate;
	
	Gson gson = new GsonBuilder().setPrettyPrinting().create();
	
	@GetMapping("/product")
	public String listProducts(Model model) {
		String url = "http://localhost:8081/api/product-service/products";
		Object[] objPrds = restTemplate.getForObject(url, Object[].class);
		
		model.addAttribute("objProducts", objPrds);
		System.out.println("Danh sách tất cả sản phẩm:\n" +gson.toJson(Arrays.asList(objPrds)));
		
		return "product";
	}
}
