package com.se.suanha.product_services.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
@Entity
@Table(name = "product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idprd")
	private int idPrd;

	@Column(name = "title")
	private String title;

	@Column(name = "price")
	private String price;

	@Column(name = "describedetails")
	private String describeDetails;
	
	@Column(name = "link")
	private String link;

	@Column(name = "statusprd")
	private String statusPrd;

}
