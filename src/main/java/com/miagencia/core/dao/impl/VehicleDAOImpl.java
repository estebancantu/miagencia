package com.miagencia.core.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.VehicleDAO;
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
	public List<Vehicle> getAllVehicles() {
		return sessionFactory.getCurrentSession().createQuery("from Vehicle").list();
	}

}
