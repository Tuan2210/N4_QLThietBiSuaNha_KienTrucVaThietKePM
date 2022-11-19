package com.se.suanha.n4_QLthietbisuanha_kttkpm.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.Customer;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.ResponseTemplateDTO;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.User;
import com.se.suanha.n4_QLthietbisuanha_kttkpm.repositories.CustomerRepository;

@Service
public class CustomerServices {

	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private RestTemplate restTemplate;
	
	public List<Customer> listCustomers() {
		return customerRepository.findAll();
	}
	
	public ResponseTemplateDTO getCustomerWithUser(int idCus) {
		Customer customer = customerRepository.findCusById(idCus);
		User user = restTemplate.getForObject("http://localhost:8081/api/user-service/user/" +customer.getIdUser(), User.class);
		return new ResponseTemplateDTO(customer, user);
	}
	
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
