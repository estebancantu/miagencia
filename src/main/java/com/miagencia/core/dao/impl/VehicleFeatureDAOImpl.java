package com.miagencia.core.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.VehicleFeatureDAO;
import com.miagencia.core.model.VehicleFeature;

/**
 * 01/08/2016
 * @author agustinbala
 */
@Repository
public class VehicleFeatureDAOImpl implements VehicleFeatureDAO {

	@Autowired
	private SessionFactory sessionFactory;
	

    @Override
    public VehicleFeature findByMercadoLibreId(String mercadoLibreId) {
        return (VehicleFeature) sessionFactory.getCurrentSession().createQuery("from VehicleFeature where mercadoLibreId = '"+mercadoLibreId+"'").uniqueResult();
    }

}
