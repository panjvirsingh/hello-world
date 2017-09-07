package com.order.management.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.order.management.domain.OrderDocument;


@Repository("OrderDocumentDao")
public class OrderDocumentDaoImpl extends AbstractDao<Integer, OrderDocument> implements OrderDocumentDao{

	@SuppressWarnings("unchecked")
	public List<OrderDocument> findAll() {
		Criteria crit = createEntityCriteria();
		return (List<OrderDocument>)crit.list();
	}

	public void save(OrderDocument document) {
		persist(document);
	}

	
	public OrderDocument findById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<OrderDocument> findAllByUserId(int userId){
		Criteria crit = createEntityCriteria();
		Criteria userCriteria = crit.createCriteria("user");
		userCriteria.add(Restrictions.eq("id", userId));
		return (List<OrderDocument>)crit.list();
	}

	
	public void deleteById(int id) {
		OrderDocument document =  getByKey(id);
		delete(document);
	}

}
