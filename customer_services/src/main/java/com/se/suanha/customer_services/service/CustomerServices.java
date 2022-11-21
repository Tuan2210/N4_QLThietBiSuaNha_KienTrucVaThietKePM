package com.se.suanha.customer_services.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.stereotype.Service;
//import org.springframework.web.client.RestTemplate;
import org.springframework.web.client.RestTemplate;

import com.se.suanha.customer_services.model.Customer;
import com.se.suanha.customer_services.model.ResponseTemplateDTO;
import com.se.suanha.customer_services.model.User;
//import com.se.suanha.customer_services.model.ResponseTemplateDTO;
//import com.se.suanha.customer_services.model.User;
import com.se.suanha.customer_services.repository.CustomerRepository;

@Service
public class CustomerServices {

	@Autowired
	private CustomerRepository customerRepository;
	
//	@Autowired
//	@LoadBalanced
//	private RestTemplate restTemplate; //rest-template not working in class service
	
	public List<Customer> listCustomers() {
		return customerRepository.findAll();
	}
	
//	public ResponseTemplateDTO getCustomerWithUser(int idCus) {
//		Customer customer = customerRepository.findCusById(idCus);
//		User user = restTemplate.getForObject("http://USER-SERVICES/api/user-service/user/" +customer.getIdUser(), User.class);
//		return new ResponseTemplateDTO(customer, user);
//	}
	
	public Customer findByIntId(int id) {
		return customerRepository.findCusById(id);
	}
	
	public Optional<Customer> findById(String id){
		return customerRepository.findById(id);
	}
	public Customer addCustomer(Customer customer) {
		return customerRepository.save(customer);
	}
	public void deletedCustomer(Customer customer) {
		customerRepository.delete(customer);
	}
	public Customer updateCustomer(Customer customer) {
		return customerRepository.save(customer);
	}
}
