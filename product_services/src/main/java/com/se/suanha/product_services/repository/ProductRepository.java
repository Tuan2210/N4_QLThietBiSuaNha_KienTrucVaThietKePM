package com.se.suanha.product_services.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.se.suanha.product_services.model.Product;

public interface ProductRepository extends JpaRepository<Product, String>{

	@Query(value = "SELECT * FROM product where IdPrd = ?", nativeQuery = true)
	public Product findByIntId(int id);
	
}
