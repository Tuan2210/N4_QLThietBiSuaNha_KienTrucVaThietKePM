package com.se.suanha.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.type.StringNVarcharType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.se.suanha.entity.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Product getProductById(int id) {
		Session session;

		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
		}
		Product product = session.get(Product.class, id);
		session.close();
		return product;
	}

	@Override
	public List<Product> getProductsByPage(Integer offset, Integer maxResults) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> theQuery = currentSession.createQuery("from Product as prd", Product.class)
				.setFirstResult(offset != null ? offset : 0).setMaxResults(maxResults != null ? maxResults : 15);
		List<Product> products = theQuery.getResultList();
		return products;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProductsByPage(Integer offset, Integer maxResults, String title) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> theQuery = currentSession
				.createQuery("from Product as prd where prd.title like :title AND prd.status like 'true'", Product.class)
				.setParameter("title", "%" + title + "%", StringNVarcharType.INSTANCE)
				.setFirstResult(offset != null ? offset : 0).setMaxResults(maxResults != null ? maxResults : 15);
		List<Product> products = theQuery.getResultList();
		return products;
	}

	@Override
	public Long count(String title) {
		Session currentSession = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		Query<Long> query = currentSession
				.createQuery("select count(*) from Product as prd where prd.title  like :title")
				.setParameter("title", "%" + title + "%", StringNVarcharType.INSTANCE);
		Long count = (Long) query.uniqueResult();
		return count;
	}

	@Override
	public Long count() {
		Session currentSession = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		Query<Long> query = currentSession.createQuery("select count(*) from Product as prd");
		Long count = (Long) query.uniqueResult();
		return count;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> search(String keyword) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<String> theQuery = currentSession
				.createQuery("SELECT prd.title from Product as prd where prd.title like '%" + keyword + "%'");
		List<String> titles = (List<String>) theQuery.list();
		return titles;
	}

	@Override
	public List<Product> getProducts() {
		Session session = sessionFactory.getCurrentSession();

		Query<Product> theQuery = session.createQuery("from Product", Product.class);

		List<Product> products = theQuery.getResultList();
		return products;
	}

	@Override
	public void updateStatus(int idProduct, String value) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "update products set status = ? where id=?";
		session.createNativeQuery(sql).setParameter(1, value)
				.setParameter(2, idProduct).executeUpdate();
	}
	
	@Override
	public void saveProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
	}
}
