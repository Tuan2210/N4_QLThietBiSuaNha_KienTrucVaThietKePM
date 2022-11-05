package com.se.suanha.service;

import java.util.List;

import com.se.suanha.entity.Customer;

public interface CustomerService {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public void addCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public Customer getCustomer(String username);

	public void deleteCustomer(int theId);
}
