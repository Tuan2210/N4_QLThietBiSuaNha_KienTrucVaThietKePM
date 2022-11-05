package com.se.suanha.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.se.suanha.entity.Product;
import com.se.suanha.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("/")
	public String listProductsHome(Model theModel) {
		// load sp slider
		List<Product> listProductSlider = new ArrayList<Product>();
		int tong = 7;
		for (int i = 1; i <= tong; i++) {
			int rand = ThreadLocalRandom.current().nextInt(1, 101);
			if (i != rand) {
				Product temp = productService.getProductById(rand);
				listProductSlider.add(temp);
			} else
				tong++;
		}

		// load 20 sp mo rong
		List<Product> listProduct = new ArrayList<Product>();
		for (int i = 1; i <= 20; i++) {
			Product temp20 = productService.getProductById(i);
			listProduct.add(temp20);
		}

		// load 12 sp thu gon
		List<Product> listTwelveProduct = new ArrayList<Product>();
		for (int i = 1; i <= 12; i++) {
			Product temp = productService.getProductById(i);
			listTwelveProduct.add(temp);
		}

		theModel.addAttribute("productSlider", listProductSlider);
		theModel.addAttribute("products", listProduct);
		theModel.addAttribute("twelveProducts", listTwelveProduct);

		return "home";
	}

	@GetMapping("/listProduct/info/{productId}")
	public String getProduct(@PathVariable int productId, Model theModel) {
		Product product = productService.getProductById(productId);
		List<Product> listProduct = new ArrayList<Product>();

		int[] ints = new Random().ints(1, 101).distinct().limit(4).toArray();
		for (int i : ints) {
			Product temp = productService.getProductById(i);
			listProduct.add(temp);
		}

		theModel.addAttribute("theProduct", product);
		theModel.addAttribute("products", listProduct);

		return "info-product";
	}

	@GetMapping("/listProduct")
	public String searchNull() {
		return "redirect:/";
	}

	@GetMapping("/listProduct/{title}")
	public String listProducts(@PathVariable(value = "title") String title, Model theModel, Integer offset,
			Integer maxResults) {
		List<Product> list = productService.getProductsByPage(offset, maxResults, title);
		theModel.addAttribute("count", productService.count(title));
		theModel.addAttribute("offset", offset);
		theModel.addAttribute("products", list);
		theModel.addAttribute("title", title);
		return "list-product";
	}

	@RequestMapping(value = "/search")
	@ResponseBody
	public List<String> autoName(@RequestParam(value = "term", required = false, defaultValue = "") String term) {
		List<String> titles = productService.search(term);
		return titles;
	}

	@GetMapping("/config")
	public String config(Model theModel, Integer offset, Integer maxResults) {
		List<Product> list = productService.getProductsByPage(offset, maxResults);
		theModel.addAttribute("count", productService.count());
		theModel.addAttribute("offset", offset);
		theModel.addAttribute("products", list);

		return "config-product";
	}

	@GetMapping("/config/updateStatusNgungBan/{idProduct}")
	public String updateStatusNgungBan(@PathVariable int idProduct, HttpServletRequest request) {
		productService.updateStatus(idProduct, "false");
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@GetMapping("/config/updateStatusConBan/{idProduct}")
	public String updateStatusConBan(@PathVariable int idProduct, HttpServletRequest request) {
		productService.updateStatus(idProduct, "true");
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@GetMapping("/config/createProduct")
	public String createProduct() {
		return "create-product";
	}
	
	@GetMapping("/config/updateProduct/{idProduct}")
	public String updateProduct(Model theModel,@PathVariable int idProduct) {
		
		Product product = productService.getProductById(idProduct);
		
		String link = product.getLink().replace("image/", "");
		product.setLink(link);
		theModel.addAttribute("product", product);
		
		return "update-product";
	}

	@GetMapping("/config/handleProduct")
	public String handleCreateProduct(@Valid @ModelAttribute("product") Product product) {

		String link = "image/" + product.getLink();
		product.setLink(link);
		product.setStatus("true");

		productService.saveProduct(product);

		return "redirect:/config";
	}
}
