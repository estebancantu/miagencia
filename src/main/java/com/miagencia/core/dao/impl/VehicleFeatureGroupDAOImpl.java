package com.miagencia.core.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.VehicleFeatureGroupDAO;
import com.miagencia.core.model.VehicleFeatureGroup;

/**
 * 01/08/2016
 * @author agustinbala
 */
@Repository
public class VehicleFeatureGroupDAOImpl implements VehicleFeatureGroupDAO {

	@Autowired
	private SessionFactory sessionFactory;
	


	@SuppressWarnings("unchecked")
	@Override
	public List<VehicleFeatureGroup> findAll() {
		return sessionFactory.getCurrentSession().createQuery("from VehicleFeatureGroup").list();
	}

}
