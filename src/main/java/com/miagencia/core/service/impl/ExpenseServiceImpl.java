package com.miagencia.core.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.ExpenseDAO;
import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.model.Client;
import com.miagencia.core.model.Expense;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.service.ExpenseService;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.ExpenseDTO;
import com.miagencia.rest.dto.util.EntityDTOTranslator;

@Service
public class ExpenseServiceImpl implements ExpenseService {
	
	
	
	@Autowired
	private ExpenseDAO expenseDao;
	
	@Autowired
	private SaleItemDAO saleItemDao;
	

	@Override
	@Transactional
	public Long add(ExpenseDTO expenseDto, Long vehicleId) {
		
		
		SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicleId);
		
		Expense newExpense = EntityDTOTranslator.buildExpense(expenseDto);
		newExpense.setSaleItem(saleItem);
		
		return expenseDao.add(newExpense);
		// TODO probar seteando solamente la expense en el sale item para ver si anda con el flush
		// si no anda hacer el save del sale item tambien
		
		
	}

	@Override
	@Transactional
	public ExpenseDTO find(Long expenseId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<ExpenseDTO> getAllExpenses(Long vehicleId) {
		
		
		List<ExpenseDTO> expenseDtos = new ArrayList<ExpenseDTO>();
		List<Expense> expenses = expenseDao.getAllExpenses(vehicleId);
		
		for (Expense expense: expenses) {
			
			ExpenseDTO expenseDto = EntityDTOTranslator.buildExpenseDTO(expense);
			expenseDtos.add(expenseDto);
		}
		
		return expenseDtos;		
	}
	
	
	@Override
	@Transactional
	public void delete(Long expenseId) {
		
		expenseDao.delete(expenseId);
	}
	
	
	@Override
	@Transactional
	public void edit(ExpenseDTO expenseDto) {
		
		Expense existingExpense = expenseDao.find(expenseDto.getId());
		
		existingExpense.setName(expenseDto.getName());
		existingExpense.setCost(expenseDto.getCost());
		existingExpense.setPaid(expenseDto.isPaid());
		

	
		
		expenseDao.edit(existingExpense);
	}
	

}
