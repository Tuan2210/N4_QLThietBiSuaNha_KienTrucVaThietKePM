package com.se.suanha.customer_services.model;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResponseTemplateDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Customer customer;
	private User user;
}
