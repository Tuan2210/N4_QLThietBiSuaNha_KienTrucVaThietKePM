package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	@GetMapping("/product/{id}")
	public Product findByIntId(@PathVariable("id") int idPrd) throws Exception {
		Product product = productServices.findByIntId(idPrd);
//		Product product = productServices.findById("'" +idPrd +"'")
//										 .orElseThrow(() -> new Exception("Không tìm thấy sản phẩm có mã: " +idPrd));
		return product;
	}
	
	@PostMapping("/product/add")
	public Product addProduct(@RequestBody Product product) {
		return productServices.addProduct(product);
	}
	
	@DeleteMapping("/product/{id}")
	public void deleteProduct(@PathVariable("id") int idPrd) {
		Product product = productServices.findByIntId(idPrd);
		productServices.deleteProduct(product);
		System.out.println("Đã xóa sản phẩm có mã: " +idPrd);
	}

}
