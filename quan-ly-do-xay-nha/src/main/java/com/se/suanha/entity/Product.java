package com.se.suanha.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "title")
	private String title;

	@Column(name = "price")
	private String price;

	@Column(name = "link")
	private String link;

	@Column(name = "description")
	private String description;

	@Column(name = "status")
	private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Product(int id, String title, String price, String link, String description, String status) {
		super();
		this.id = id;
		this.title = title;
		this.price = price;
		this.link = link;
		this.description = description;
		this.status = status;
	}

	public Product(String title, String price, String link, String description, String status) {
		super();
		this.title = title;
		this.price = price;
		this.link = link;
		this.description = description;
		this.status = status;
	}

	public Product(int id, String title, String price, String link, String description) {
		super();
		this.id = id;
		this.title = title;
		this.price = price;
		this.link = link;
		this.description = description;
	}

	public Product(String title, String price, String link, String description) {
		super();
		this.title = title;
		this.price = price;
		this.link = link;
		this.description = description;
	}

	public Product() {
	}

}
