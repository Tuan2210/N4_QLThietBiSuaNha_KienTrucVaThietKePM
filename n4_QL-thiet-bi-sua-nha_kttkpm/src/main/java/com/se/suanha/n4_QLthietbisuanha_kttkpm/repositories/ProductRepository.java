package com.se.suanha.n4_QLthietbisuanha_kttkpm.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Product;

public interface ProductRepository extends JpaRepository<Product, String>{

	@Query(value = "SELECT * FROM product where IdPrd = ?", nativeQuery = true)
	public Product findByIntId(int id);
	
	@Query(value = "delete from product where IdPrd = ?", nativeQuery = true)
	public void deleteByIntId(int id);
}
