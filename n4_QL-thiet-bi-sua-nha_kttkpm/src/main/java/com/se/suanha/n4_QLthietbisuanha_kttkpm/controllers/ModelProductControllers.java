package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.text.DecimalFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Product;

import io.github.resilience4j.circuitbreaker.annotation.CircuitBreaker;
import io.github.resilience4j.ratelimiter.annotation.RateLimiter;
import io.github.resilience4j.retry.annotation.Retry;

//link crud rest-template:
//https://www.javaguides.net/2019/02/spring-resttemplate-spring-rest-client-get-post-put-delete-example.html

//link resilience4j: https://www.youtube.com/watch?v=9AXAUlp3DBw

@Controller
public class ModelProductControllers {
	
	@Autowired
	private RestTemplate restTemplate;
		
	Gson gson = new GsonBuilder().setPrettyPrinting().create();
	
	private DecimalFormat dfPrice = new DecimalFormat("###,###,###");
	
//	private static final String SERVICE_GATEWAY_LIST_PRDS = "serviceListProducts";
	int count = 1;
	
	@GetMapping("/api/products")
	@CircuitBreaker(name = "serviceListProducts")
	@Retry(name = "serviceListProducts")
	@RateLimiter(name = "serviceListProducts")
	public String listProducts(Model model) {
//		String url = "http://localhost:8081/api/product-service/products";
		String urlGateway = "http://localhost:8082/api/product-service/products";
		
		Object[] objPrds = restTemplate.getForObject(urlGateway, Object[].class);
		model.addAttribute("objProducts", objPrds);
		
//		System.out.println("Danh sách tất cả sản phẩm:\n" +gson.toJson(Arrays.asList(objPrds)));
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8084 PRODUCT-SERVICES => danh sách sản phẩm");
		System.out.println("Retry method called " + count++ + " times at " + new Date());
		return "product";
	}
	
	@GetMapping("/api/find-product")
	public String findPrd() {
		return "find-product";
	}
	
	@GetMapping("/api/handleFindProduct/{id}")
	public String findProduct(@PathVariable("id") int prdId, Model theModel) {
//		if(product != null) {
			String urlGateway = "http://localhost:8082/api/product-service/product/" +prdId;
			Object theProduct = restTemplate.getForObject(urlGateway, Object.class);
			theModel.addAttribute("findProduct", theProduct);
			System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8084 PRODUCT-SERVICES => tìm sản phẩm theo mã");
			System.out.println(gson.toJson(theProduct));
//		}
		
//		else {
//			String urlGateway = "http://localhost:8082/api/product-service/products";
//			Object[] objPrds = restTemplate.getForObject(urlGateway, Object[].class);
//			model.addAttribute("objProducts", objPrds);
//			System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8084 PRODUCT-SERVICES => không tìm đc sản phẩm");
//		}
		return "find-product";
	}
	
	@GetMapping("/api/add-product")
	public String formAddPrd() {
		return "form-add-product";
	}
	
	@GetMapping("/api/handleAddProduct")
	public String handleCreateProduct(@Valid @ModelAttribute("product") Product product) {
		String linkImg = "images/" +product.getLink();
		product.setLink(linkImg);
		product.setPrice(dfPrice.format(Double.parseDouble(product.getPrice())) +" ₫");
		product.setStatusPrd("true");
		
//		String url = "http://localhost:8081/api/product-service/product/add";
		String urlGateway = "http://localhost:8082/api/product-service/product/add";
		restTemplate.postForObject(urlGateway, product, Product.class);
		
//		System.out.println("Đã thêm sản phẩm: " +gson.toJson(product));
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8084 PRODUCT-SERVICES => thêm sản phẩm");
		return "redirect:/api/products";
	}
	
	@RequestMapping("/api/handleDeleteProduct/{id}")
	public String handleDeleteProduct(@PathVariable("id") int prdId) {
//		String url = "http://localhost:8081/api/product-service/product/" +prdId;
		String urlGateway = "http://localhost:8082/api/product-service/product/" +prdId;
		restTemplate.delete(urlGateway);
		
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8084 PRODUCT-SERVICES => xóa sản phẩm");
		return "redirect:/api/products";
	}
	
	@GetMapping("/api/update-product")
	public String formUpdatePrd() {
		return "form-update-product";
	}
	
	@GetMapping("/api/handleUpdateProduct")
	public String handleUpdateProduct(@Valid @ModelAttribute("product") Product product) {
		String linkImg = "images/" +product.getLink();
		product.setLink(linkImg);
		product.setPrice(dfPrice.format(Double.parseDouble(product.getPrice())) +" ₫");
		product.setStatusPrd("true");
		
//		String url = "http://localhost:8081/api/product-service/product/" +product.getIdPrd();
		String urlGateway = "http://localhost:8082/api/product-service/product/" +product.getIdPrd();
		restTemplate.put(urlGateway, product, Product.class);
		
//		System.out.println("Đã cập nhật sản phẩm: " +gson.toJson(product));
		System.out.println("Cổng 8081 => cổng 8082 gateway => cổng 8084 PRODUCT-SERVICES => cập nhật thông tin sản phẩm");
		return "redirect:/api/products";
	}
}
