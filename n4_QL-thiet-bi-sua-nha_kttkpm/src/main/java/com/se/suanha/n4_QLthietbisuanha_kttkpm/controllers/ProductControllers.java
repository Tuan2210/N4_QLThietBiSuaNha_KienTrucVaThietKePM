package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Product;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.services.ProductServices;

@RestController
@RequestMapping("/api/product-service")
public class ProductControllers {
	
	@Autowired
	private ProductServices productServices;
	
	@GetMapping("/products")
	public List<Product> listProducts() {
		return productServices.listProducts();
	}

}
