package com.se.suanha.product_services.controller;

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

import com.se.suanha.product_services.model.Product;
import com.se.suanha.product_services.service.ProductServices;

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
	public Product findByIntId(@PathVariable("id") int prdId) throws Exception {
		Product product = productServices.findByIntId(prdId);
//		Product product = productServices.findById("'" +prdId +"'")
//										 .orElseThrow(() -> new Exception("Không tìm thấy sản phẩm có mã: " +prdId));
		return product;
	}
	
	@PostMapping("/product/add")
	public Product addProduct(@RequestBody Product product) {
		return productServices.addProduct(product);
	}
	
	@DeleteMapping("/product/{id}")
	public void deleteProduct(@PathVariable("id") int prdId) {
		Product product = productServices.findByIntId(prdId);
		productServices.deleteProduct(product);
		System.out.println("Đã xóa sản phẩm có mã: " +prdId);
	}

	@PutMapping("/product/{id}")
	public ResponseEntity<Product> updateProduct(@PathVariable("id") int prdId, @RequestBody Product product) {
		Product newPrd = productServices.findByIntId(prdId);
		newPrd.setTitle(product.getTitle());
		newPrd.setPrice(product.getPrice());
		newPrd.setDescribeDetails(product.getDescribeDetails());
		newPrd.setLink(product.getLink());
		newPrd.setStatusPrd("true");
		
		productServices.updateProduct(newPrd);
		return ResponseEntity.ok().body(newPrd);
	}
	
}
