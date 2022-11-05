package com.se.suanha.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.type.StringNVarcharType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.se.suanha.entity.Cart;
import com.se.suanha.entity.CartDetail;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Cart getOrderByIdCustomer(int idKH) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			Query<Cart> theQuery = currentSession
					.createQuery("from Cart where id_kh = " + idKH + " AND thanh_toan like :thanhToan", Cart.class)
					.setParameter("thanhToan", "chưa thanh toán", StringNVarcharType.INSTANCE);

			Cart cart = theQuery.getSingleResult();
			return cart;
		} catch (NoResultException e) {
			return null;
		}
	}

	@Override
	public List<CartDetail> getOrderDetailByOrder(int idOrder) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<CartDetail> theQuery = currentSession.createQuery("from CartDetail where id_order = " + idOrder,
				CartDetail.class);
		List<CartDetail> orderDetails = theQuery.getResultList();
		return orderDetails;
	}

	@Override
	public void saveCart(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cart);
	}

	@Override
	public void saveCartDetail(CartDetail cartDetail) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "insert into cart_detail values(?, ?, ?, ?)";
		session.createNativeQuery(sql).setParameter(1, cartDetail.getCart().getId())
				.setParameter(2, cartDetail.getProduct().getId()).setParameter(3, cartDetail.getSoLuong())
				.setParameter(4, cartDetail.getGia()).executeUpdate();
	}

	@Override
	public void updateCartDetail(CartDetail cartDetail) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "update cart_detail set so_luong = " + cartDetail.getSoLuong() + ", gia = N'" + cartDetail.getGia()
				+ "' where id_order = " + cartDetail.getCart().getId() + " and id_product = "
				+ cartDetail.getProduct().getId();
		session.createNativeQuery(sql).executeUpdate();
	}

	@Override
	public void updateCart(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "update cart set ngay_lap = '" + cart.getNgayLap() + "', thanh_tien = N'" + cart.getThanhTien()
				+ "', id_kh = " + cart.getCustomer().getId() + ", thanh_toan = N'" + cart.getThanhToan()
				+ "' where id = " + cart.getId();
		session.createNativeQuery(sql).executeUpdate();
	}

	@Override
	public void deleteCartDetail(int idProduct, int idCart) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "delete from cart_detail where id_product=? and id_order=?";
		session.createNativeQuery(sql).setParameter(1, idProduct).setParameter(2, idCart).executeUpdate();
	}

	@Override
	public Cart getCardById(int idCart) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			Query<Cart> theQuery = currentSession.createQuery("from Cart where id = " + idCart, Cart.class);
			Cart cart = theQuery.getSingleResult();
			return cart;
		} catch (NoResultException e) {
			return null;
		}
	}

	@Override
	public void updatePayment(int idCustomer) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "update cart set thanh_toan = ? where id_kh=?";
		session.createNativeQuery(sql).setParameter(1, "Đã thanh toán").setParameter(2, idCustomer).executeUpdate();
	}

	@Override
	public List<Cart> getListCartByDate(int day, int month, int year) {
		String ngay = day < 1 ? "" : day + "";
		String thang = month < 1 ? "" : month + "";
		String nam = year < 1 ? "" : year + "";
		List<Cart> listCart = new ArrayList<Cart>();
		Session session = sessionFactory.getCurrentSession();
		String sql = "select * from cart where MONTH(ngay_lap) like '%" + thang + "%' and YEAR(ngay_lap) like '%" + nam
				+ "%' and DAY(ngay_lap) like '%" + ngay + "%' and thanh_toan like N'Đã thanh toán'";
		Query<Cart> query = session.createNativeQuery(sql, Cart.class);
		listCart = query.getResultList();
		return listCart;
	}
}
