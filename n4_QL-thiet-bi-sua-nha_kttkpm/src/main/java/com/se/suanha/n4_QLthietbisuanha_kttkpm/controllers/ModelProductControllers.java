package com.se.suanha.n4_QLthietbisuanha_kttkpm.controllers;

import java.text.DecimalFormat;
import java.util.Arrays;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Product;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.services.ProductServices;

@Controller
public class ModelProductControllers {
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Autowired
	private ProductServices productServices;
	
	Gson gson = new GsonBuilder().setPrettyPrinting().create();
	
	private DecimalFormat dfPrice = new DecimalFormat("###,###,###");
	
	@GetMapping("/api/products")
	public String listProducts(Model model) {
		String url = "http://localhost:8081/api/product-service/products";
		Object[] objPrds = restTemplate.getForObject(url, Object[].class);
		model.addAttribute("objProducts", objPrds);
		System.out.println("Danh sách tất cả sản phẩm:\n" +gson.toJson(Arrays.asList(objPrds)));
		
		
		return "product";
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
		
		productServices.addProduct(product);
		System.out.println("Đã thêm sản phẩm: " +product);
		return "redirect:/api/products";
	}
}
