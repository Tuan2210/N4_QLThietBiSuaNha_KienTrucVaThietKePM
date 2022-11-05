package com.se.suanha.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.type.StringNVarcharType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.se.suanha.entity.Cart;
import com.se.suanha.entity.Customer;
@Repository
public class CustomerDAOImpl implements CustomerDAO {
	// need to inject the session factory
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public List<Customer> getCustomers() {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();
        // create a query  ... sort by last name
        Query<Customer> theQuery = 
                        currentSession.createQuery("from Customer order by lastName",
                                                                                Customer.class);
        // execute query and get result list
        List<Customer> customers = theQuery.getResultList();
        // return the results		
        return customers;
    }
    @Override
    public void saveCustomer(Customer theCustomer) {
            // get current hibernate session
            Session currentSession = sessionFactory.getCurrentSession();
            // save/upate the customer ... finally
            currentSession.saveOrUpdate(theCustomer);
    }
    
   
    @Override
    public Customer getCustomer(int theId) {
            // get the current hibernate session
            Session currentSession = sessionFactory.getCurrentSession();
            // now retrieve/read from database using the primary key
            Customer theCustomer = currentSession.get(Customer.class, theId);
            return theCustomer;
    }
    @Override
    public void deleteCustomer(int theId) {
            // get the current hibernate session
            Session currentSession = sessionFactory.getCurrentSession();
            // delete object with primary key
            Query theQuery = 
                            currentSession.createQuery("delete from Customer where id=:customerId");
            theQuery.setParameter("customerId", theId);

            theQuery.executeUpdate();		
    }
	@Override
	public void addCustomer(Customer theCustomer) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String sql = "insert into customers values (?, ?, ?, ?, ?)";
		session.createNativeQuery(sql).setParameter(1, theCustomer.getTen())
		.setParameter(2, theCustomer.getSdt())
		.setParameter(3, theCustomer.getGioiTinh())
		.setParameter(4, theCustomer.getEmail())
		.setParameter(5, theCustomer.getUserName()).executeUpdate();
	}
	@Override
	public Customer getCustomer(String username) {
		
		   // get the current hibernate session
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			Query<Customer> theQuery = currentSession
					.createQuery("from Customer as u where u.userName like :username", Customer.class)
					.setParameter( "username", "%" + username + "%");

			Customer customer = theQuery.getSingleResult();
			return customer;
		} catch (NoResultException e) {
			return null;
		}
	}
    

}











