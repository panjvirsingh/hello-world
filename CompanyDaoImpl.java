package com.order.management.dao;

import java.util.Collection;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.order.management.domain.Company;
import com.order.management.domain.Contact;

@Repository("companyDao")
public class CompanyDaoImpl implements CompanyDao {

	@Autowired
	private SessionFactory sessionfactory;

	public List<Company> getCompanies() {
		@SuppressWarnings("unchecked")
		List<Company> contactList = sessionfactory.getCurrentSession()
				.createCriteria(Company.class).list();
		return contactList;
	}


	@Override
	public void saveUser(Company company) {
		sessionfactory.getCurrentSession().saveOrUpdate(company);
		Collection<Contact> contactList=company.getContactCollection();
		if(contactList!=null && contactList.size()>0){
			for(Contact contact:contactList){
				if(contact!=null){
				sessionfactory.getCurrentSession().saveOrUpdate(contact);
				}
			}
		}
		
	}

}
