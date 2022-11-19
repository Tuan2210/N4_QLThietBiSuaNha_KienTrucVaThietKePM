package com.se.suanha.product_services;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class ProductServicesApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProductServicesApplication.class, args);
	}

}
