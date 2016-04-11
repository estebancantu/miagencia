package com.miagencia.core.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.OperationDAO;
import com.miagencia.core.model.operations.VehicleOperation;

@Repository
public class OperationDAOImpl implements OperationDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void add(VehicleOperation operation) {
		
		if (operation == null) throw new IllegalArgumentException("Operation argument cannot be null");
		sessionFactory.getCurrentSession().save(operation);
		
	}
	
	@Override
	public VehicleOperation find(Long operationId) {
		
		if (operationId == null) throw new IllegalArgumentException("Operation id argument cannot be null");
		return (VehicleOperation)sessionFactory.getCurrentSession().get(VehicleOperation.class, operationId);
	}

}
