package com.se.suanha.n4_QLthietbisuanha_kttkpm.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, String>{

	@Query(value = "SELECT * FROM customer where IdCus = ?", nativeQuery = true)
	public Customer findCusById(int idCus);
	
}
