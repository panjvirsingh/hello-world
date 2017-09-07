package com.order.management.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.order.management.domain.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public void saveUser(User user) {
		sessionfactory.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	public List<User> getUser() {
		@SuppressWarnings("unchecked")
		List<User> userlist = sessionfactory.getCurrentSession()
				.createCriteria(User.class).list();
		return userlist;
	}

	@Override
	public void updateUser(User user) {
		try{
		sessionfactory.getCurrentSession().update(user);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
