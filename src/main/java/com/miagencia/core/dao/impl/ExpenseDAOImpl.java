package com.miagencia.core.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.ExpenseDAO;
import com.miagencia.core.model.Client;
import com.miagencia.core.model.Expense;
import com.miagencia.core.model.Vehicle;

@Repository
public class ExpenseDAOImpl implements ExpenseDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;

	
	
	
	@Override
	public Expense find(Long expenseId) {
		
		if (expenseId == null) throw new IllegalArgumentException("Expense id argument cannot be null");
		return (Expense)sessionFactory.getCurrentSession().get(Expense.class, expenseId);
	}

	@Override
	public List<Expense> getAllExpenses(Long vehicleId) {
		
		if (vehicleId == null) 
			throw new IllegalArgumentException("Vehicle id argument cannot be null");
		
		Query query = sessionFactory.getCurrentSession().createQuery("from Expense e where e.saleItem.vehicle.id = :vehicleId");
		query.setParameter("vehicleId", vehicleId);
		return query.list();
	}

	@Override
	public Long add(Expense expense) {
		
		if (expense == null) throw new IllegalArgumentException("Expense argument cannot be null");
		return (Long) sessionFactory.getCurrentSession().save(expense);
	}
	
	@Override
	public void delete(Long expenseId) {
		
		if (expenseId == null) throw new IllegalArgumentException("Expense id argument cannot be null");
		Expense expense = (Expense)sessionFactory.getCurrentSession().load(Expense.class, expenseId);
		
		if (expense == null) throw new IllegalArgumentException("There is no Expense record for id " + expenseId);
		sessionFactory.getCurrentSession().delete(expense);
	}
	
	@Override
	public void edit(Expense expense) {
		
		if (expense == null) throw new IllegalArgumentException("Expense argument cannot be null");	
		if (expense.getId() == null) throw new IllegalArgumentException("Expense id argument cannot be null");

		sessionFactory.getCurrentSession().update(expense);
	}

}
