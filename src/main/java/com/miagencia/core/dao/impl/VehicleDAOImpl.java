package com.miagencia.core.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.VehicleDAO;
import com.miagencia.core.model.Client;
import com.miagencia.core.model.Vehicle;

/**
 * 19/9/2015
 * @author estebancantu
 */
@Repository
public class VehicleDAOImpl implements VehicleDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	


	@Override
	public Vehicle find(Long vehicleId) {
		
		if (vehicleId == null) throw new IllegalArgumentException("Vehicle id argument cannot be null");
		return (Vehicle)sessionFactory.getCurrentSession().get(Vehicle.class, vehicleId);
	}




	@Override
	public List<Vehicle> getAllVehicles(Long accountId) {

	Query query = sessionFactory.getCurrentSession().createQuery("select v from Vehicle v where v.dealership.id = :accountId");
	query.setLong("accountId", accountId);	
	return query.list();

	}




	@Override
	public void deleteVehicle(Long vehicleId) {
		

		if (vehicleId == null) throw new IllegalArgumentException("Vehicle id argument cannot be null");
		Vehicle vehicle = (Vehicle)sessionFactory.getCurrentSession().load(Vehicle.class, vehicleId);
		
		if (vehicle == null) throw new IllegalArgumentException("There is no Vehicle record for id " + vehicleId);
		sessionFactory.getCurrentSession().delete(vehicle);
		
	}




	@Override
	public int countTotalVehicles(Long accountId) {
		Query query = sessionFactory.getCurrentSession().createQuery("select count(v) from Vehicle v where v.dealership.id = :accountId");
		query.setLong("accountId", accountId);	
		Long count = (Long)query.uniqueResult();
		return count.intValue();
	}




	@Override
	public Long addVehicle(Vehicle vehicle) {

		if (vehicle == null) throw new IllegalArgumentException("Vehicle argument cannot be null");
		return (Long) sessionFactory.getCurrentSession().save(vehicle);	
	}

}
