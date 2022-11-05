package com.se.suanha.n4_QLthietbisuanha_kttkpm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class N4QlThietBiSuaNhaKttkpmApplication {
	
	@Bean
	public RestTemplate getRestTemplate() {
		return new RestTemplate();
	}

	public static void main(String[] args) {
		SpringApplication.run(N4QlThietBiSuaNhaKttkpmApplication.class, args);
	}

}
