package com.miagencia.core.dao;

import java.util.List;

import com.miagencia.core.model.Expense;



public interface ExpenseDAO {
	
	
	public Expense find(Long expenseId);

	public List<Expense> getAllExpenses(Long vehicleId);
	
	public Long add(Expense expense);
	
	public void delete(Long expenseId);
	
	public void edit(Expense expense);

}
