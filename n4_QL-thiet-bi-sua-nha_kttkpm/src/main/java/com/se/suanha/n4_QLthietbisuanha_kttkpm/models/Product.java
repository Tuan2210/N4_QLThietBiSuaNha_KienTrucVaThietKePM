package com.se.suanha.n4_QLthietbisuanha_kttkpm.models;

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
	@Column(name = "idprd")
	private int idprd;

	@Column(name = "title")
	private String title;

	@Column(name = "price")
	private String price;

	@Column(name = "link")
	private String link;

	@Column(name = "describedetails")
	private String describedetails;

	@Column(name = "statusprd")
	private String statusprd;

	public int getIdprd() {
		return idprd;
	}

	public void setIdprd(int idprd) {
		this.idprd = idprd;
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

	public String getDescribedetails() {
		return describedetails;
	}

	public void setDescribedetails(String describedetails) {
		this.describedetails = describedetails;
	}

	public String getStatusprd() {
		return statusprd;
	}

	public void setStatusprd(String statusprd) {
		this.statusprd = statusprd;
	}

	public Product(int idprd, String title, String price, String link, String describedetails, String statusprd) {
		super();
		this.idprd = idprd;
		this.title = title;
		this.price = price;
		this.link = link;
		this.describedetails = describedetails;
		this.statusprd = statusprd;
	}

	public Product() {
		super();
	}

	@Override
	public String toString() {
		return "Product [idprd=" + idprd + ", title=" + title + ", price=" + price + ", link=" + link
				+ ", describedetails=" + describedetails + ", statusprd=" + statusprd + "]";
	}

}
