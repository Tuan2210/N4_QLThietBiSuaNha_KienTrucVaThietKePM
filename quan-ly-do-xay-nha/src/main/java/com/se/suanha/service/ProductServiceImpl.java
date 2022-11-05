package com.se.suanha.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.se.suanha.dao.ProductDAO;
import com.se.suanha.entity.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Override
	public Product getProductById(int id) {
		return productDAO.getProductById(id);
	}

	@Transactional
	public List<Product> getProductsByPage(Integer offset, Integer maxResults, String title) {
		return productDAO.getProductsByPage(offset, maxResults, title);
	}

	@Override
	@Transactional
	public Long count(String title) {
		return productDAO.count(title);
	}

	@Override
	@Transactional
	public List<String> search(String keyword) {
		return productDAO.search(keyword);
	}

	@Override
	@Transactional
	public List<Product> getProducts() {
		return productDAO.getProducts();
	}

	@Override
	@Transactional
	public Long count() {
		return productDAO.count();
	}

	@Override
	@Transactional
	public List<Product> getProductsByPage(Integer offset, Integer maxResults) {
		return productDAO.getProductsByPage(offset, maxResults);
	}

	@Override
	@Transactional
	public void updateStatus(int idProduct, String value) {
		productDAO.updateStatus(idProduct, value);
	}

	@Override
	@Transactional
	public void saveProduct(Product product) {
		productDAO.saveProduct(product);
	}

}
