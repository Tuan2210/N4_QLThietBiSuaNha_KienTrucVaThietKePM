package com.se.suanha.entity;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class CartDetailPK implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4916784602683599156L;
	private int cart;
	private int product;

	@Override
	public int hashCode() {
		return Objects.hash(cart, product);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartDetailPK other = (CartDetailPK) obj;
		return cart == other.cart && product == other.product;
	}

}
