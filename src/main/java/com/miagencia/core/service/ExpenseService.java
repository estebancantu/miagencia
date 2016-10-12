package com.miagencia.core.service;

import java.util.List;

import com.miagencia.rest.dto.ExpenseDTO;

public interface ExpenseService {
	
	
	
	public Long add(ExpenseDTO expense, Long vehicleId);
	
	public ExpenseDTO find(Long expenseId);
	
	public List<ExpenseDTO> getAllExpenses(Long vehicleId);
	
	public void delete(Long expenseId);

	void edit(ExpenseDTO expenseDto);

}
