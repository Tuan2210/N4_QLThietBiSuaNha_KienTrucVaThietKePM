package com.se.suanha.customer_services.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.se.suanha.customer_services.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, String>{

	@Query(value = "SELECT * FROM customer where IdCus = ?", nativeQuery = true)
	public Customer findCusById(int idCus);
	
}
