package com.se.suanha.n4_QLthietbisuanha_kttkpm.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Product;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.repositories.ProductRepository;

@Service
public class ProductServices {

	@Autowired
	private ProductRepository productRepository;
	
	public List<Product> listProducts() {
		return productRepository.findAll();
	}
	
	public Product findPrdByIntId(int id) {
		return productRepository.findByIntId(id);
	}
}
