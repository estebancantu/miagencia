package com.miagencia.core.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.OperationDAO;
import com.miagencia.core.model.operations.BuyOperation;
import com.miagencia.core.model.operations.SaleOperation;
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

	@Override
	public List<VehicleOperation> findOperationsByVehicleId(Long vehicleId) {
		
		if (vehicleId == null) 
			throw new IllegalArgumentException("Vehicle id argument cannot be null");
		
		Query query = sessionFactory.getCurrentSession().createQuery("from VehicleOperation vo where vo.vehicle.id = :vehicleId");
		query.setParameter("vehicleId", vehicleId);
		return query.list();
	}

    @Override
    public BuyOperation findBuyOperationsByVehicleId(Long vehicleId) {

        if (vehicleId == null) 
            throw new IllegalArgumentException("Vehicle id argument cannot be null");
        
        Query query = sessionFactory.getCurrentSession().createQuery("from BuyOperation vo where vo.vehicle.id = :vehicleId");
        query.setParameter("vehicleId", vehicleId);
        return (BuyOperation) query.list().get(0);
    }

    @Override
    public SaleOperation findSellOperationsByVehicleId(Long vehicleId) {

        if (vehicleId == null) 
            throw new IllegalArgumentException("Vehicle id argument cannot be null");
        
        Query query = sessionFactory.getCurrentSession().createQuery("from SaleOperation vo where vo.vehicle.id = :vehicleId");
        query.setParameter("vehicleId", vehicleId);
        return (SaleOperation) query.list().get(0);
    }
    
    @Override
    public void delete(Long operationId) {
        
        if (operationId == null) throw new IllegalArgumentException("Operation id argument cannot be null");
        VehicleOperation operation = (VehicleOperation)sessionFactory.getCurrentSession().load(VehicleOperation.class, operationId);
        
        if (operation == null) throw new IllegalArgumentException("There is no Operation record for id " + operationId);
        sessionFactory.getCurrentSession().delete(operation);
    }

}
