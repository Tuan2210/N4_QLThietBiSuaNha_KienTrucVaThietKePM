package com.se.suanha.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customers")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "ten", columnDefinition = "Nvarchar(50)")
	private String ten;

	@Column(name = "sdt")
	private String sdt;

	@Column(name = "gioi_tinh")
	private String gioiTinh;

	@Column(name = "email")
	private String email;

	@Column(name = "username")
	private String userName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Customer() {
	}

	public Customer(String ten, String sdt, String gioiTinh, String email) {
		super();
		this.ten = ten;
		this.sdt = sdt;
		this.gioiTinh = gioiTinh;
		this.email = email;
	}

	public Customer(String userName, String ten, String sdt, String gioiTinh, String email) {
		super();
		this.userName = userName;
		this.ten = ten;
		this.sdt = sdt;
		this.gioiTinh = gioiTinh;
		this.email = email;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", ten=" + ten + ", sdt=" + sdt + ", gioiTinh=" + gioiTinh + ", email=" + email
				+ ", userName=" + userName + "]";
	}
	
	

}
