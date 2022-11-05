package com.se.suanha.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.suanha.dao.CartDao;
import com.se.suanha.entity.Cart;
import com.se.suanha.entity.CartDetail;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDao orderDao;

	@Override
	@Transactional
	public Cart getOrderByIdCustomer(int idKH) {
		return orderDao.getOrderByIdCustomer(idKH);
	}

	@Override
	@Transactional
	public List<CartDetail> getOrderDetailByOrder(int idOrder) {
		return orderDao.getOrderDetailByOrder(idOrder);
	}

	@Override
	@Transactional
	public void saveCart(Cart cart) {
		orderDao.saveCart(cart);
	}

	@Override
	@Transactional
	public void saveCartDetail(CartDetail cartDetail) {
		orderDao.saveCartDetail(cartDetail);
	}

	@Override
	@Transactional
	public void updateCartDetail(CartDetail cartDetail) {
		orderDao.updateCartDetail(cartDetail);
	}

	@Override
	@Transactional
	public void deleteCartDetail(int idProduct, int idCart) {
		orderDao.deleteCartDetail(idProduct, idCart);
	}
	public void updateCart(Cart cart) {
		orderDao.updateCart(cart);

	}

	@Override
	@Transactional
	public Cart getCardById(int idCart) {
		return orderDao.getCardById(idCart);
	}

	@Override
	@Transactional
	public void updatePayment(int idCustomer) {
		orderDao.updatePayment(idCustomer); 
	}

	@Override
	public List<Cart> getListCartByDate(int day, int month, int year) {
		return orderDao.getListCartByDate(day, month, year);
	}
}
