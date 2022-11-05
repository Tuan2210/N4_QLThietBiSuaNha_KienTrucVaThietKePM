package com.se.suanha.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cart")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "ngay_lap")
	private LocalDate ngayLap;

	@Column(name = "thanh_tien")
	private String thanhTien;

	@ManyToOne
	@JoinColumn(name = "id_kh")
	private Customer customer;

	@Column(name = "thanh_toan")
	private String thanhToan;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDate getNgayLap() {
		return ngayLap;
	}

	public void setNgayLap(LocalDate ngayLap) {
		this.ngayLap = ngayLap;
	}

	public String getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(String thanhTien) {
		this.thanhTien = thanhTien;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getThanhToan() {
		return thanhToan;
	}

	public void setThanhToan(String thanhToan) {
		this.thanhToan = thanhToan;
	}

	public Cart(int id, LocalDate ngayLap, String thanhTien, Customer customer, String thanhToan) {
		super();
		this.id = id;
		this.ngayLap = ngayLap;
		this.thanhTien = thanhTien;
		this.customer = customer;
		this.thanhToan = thanhToan;
	}

	public Cart(LocalDate ngayLap, String thanhTien, Customer customer, String thanhToan) {
		super();
		this.ngayLap = ngayLap;
		this.thanhTien = thanhTien;
		this.customer = customer;
		this.thanhToan = thanhToan;
	}

	public Cart() {
	}

	@Override
	public String toString() {
		return "Cart [id=" + id + ", ngayLap=" + ngayLap + ", thanhTien=" + thanhTien + ", customer=" + customer
				+ ", thanhToan=" + thanhToan + "]";
	}

}
