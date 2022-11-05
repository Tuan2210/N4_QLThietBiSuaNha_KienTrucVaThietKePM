package com.se.suanha.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@IdClass(CartDetailPK.class)
@Table(name = "cart_detail")
public class CartDetail {
	@Id
	@ManyToOne
	@JoinColumn(name = "id_order")
	private Cart cart;

	@Id
	@ManyToOne
	@JoinColumn(name = "id_product")
	private Product product;

	@Column(name = "so_luong")
	private int soLuong;

	@Column(name = "gia")
	private String gia;

	public CartDetail(Cart cart, Product product, int soLuong, String gia) {
		super();
		this.cart = cart;
		this.product = product;
		this.soLuong = soLuong;
		this.gia = gia;
	}

	public CartDetail() {
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getGia() {
		return gia;
	}

	public void setGia(String gia) {
		this.gia = gia;
	}

	@Override
	public String toString() {
		return "CartDetail [cart=" + cart.getId() + ", product=" + product.getId() + ", soLuong=" + soLuong + ", gia=" + gia + "]";
	}

}
