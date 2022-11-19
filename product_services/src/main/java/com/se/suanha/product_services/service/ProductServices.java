package com.se.suanha.product_services.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.suanha.product_services.model.Product;
import com.se.suanha.product_services.repository.ProductRepository;

@Service
public class ProductServices {

	@Autowired
	private ProductRepository productRepository;
	
	public List<Product> listProducts() {
		return productRepository.findAll();
	}
	
	public Product findByIntId(int id) {
		return productRepository.findByIntId(id);
	}
	
	public Optional<Product> findById(String id) {
		return productRepository.findById(id);
	}
	
	public Product addProduct(Product product) {
		return productRepository.save(product);
	}
	
	public void deleteProduct(Product product) {
		productRepository.delete(product);
	}
	
	public Product updateProduct(Product product) {
		return productRepository.save(product);
	}
}
