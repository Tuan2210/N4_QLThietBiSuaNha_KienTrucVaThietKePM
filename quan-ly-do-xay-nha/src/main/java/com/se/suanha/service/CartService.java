package com.se.suanha.service;

import java.util.List;

import com.se.suanha.entity.Cart;
import com.se.suanha.entity.CartDetail;

public interface CartService {
	public Cart getOrderByIdCustomer(int idKH);

	public List<CartDetail> getOrderDetailByOrder(int idOrder);

	public void saveCart(Cart cart);

	public void saveCartDetail(CartDetail cartDetail);

	public void updateCartDetail(CartDetail cartDetail);

	public void deleteCartDetail(int idProduct, int idCart);

	public void updateCart(Cart cart);

	public Cart getCardById(int idCart);

	public void updatePayment(int idCustomer);
	
	public List<Cart> getListCartByDate(int day, int month, int year);
}
