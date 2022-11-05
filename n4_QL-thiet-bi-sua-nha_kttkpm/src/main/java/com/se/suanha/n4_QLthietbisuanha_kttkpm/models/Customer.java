package com.se.suanha.n4_QLthietbisuanha_kttkpm.models;

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
	@Column(name = "idcus")
	private int idcus;

	@Column(name = "cusname", columnDefinition = "Nvarchar(50)")
	private String cusname;

	@Column(name = "phone")
	private String phone;

	@Column(name = "sex")
	private String sex;

	@Column(name = "username")
	private String userName;

	public int getIdcus() {
		return idcus;
	}

	public void setIdcus(int idcus) {
		this.idcus = idcus;
	}

	public String getCusname() {
		return cusname;
	}

	public void setCusname(String cusname) {
		this.cusname = cusname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Customer(int idcus, String cusname, String phone, String sex, String userName) {
		super();
		this.idcus = idcus;
		this.cusname = cusname;
		this.phone = phone;
		this.sex = sex;
		this.userName = userName;
	}

	public Customer() {
		super();
	}

	@Override
	public String toString() {
		return "Customer [idcus=" + idcus + ", cusname=" + cusname + ", phone=" + phone + ", sex=" + sex + ", userName="
				+ userName + "]";
	}

}
