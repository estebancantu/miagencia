package com.miagencia.core.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.VehicleFeatureValueDAO;
import com.miagencia.core.model.VehicleFeatureValue;

/**
 * 01/08/2016
 * @author agustinbala
 */
@Repository
public class VehicleFeatureValueDAOImpl implements VehicleFeatureValueDAO {

	@Autowired
	private SessionFactory sessionFactory;
	


	@Override
	public List<VehicleFeatureValue> findValueByName(String valueName) {
		return (List<VehicleFeatureValue>) sessionFactory.getCurrentSession().createQuery("from VehicleFeatureValue where feature.name = '"+valueName+"'").uniqueResult();
	}


    @Override
    public VehicleFeatureValue findMercadoLibreFeatureByValue(String value) {
        return (VehicleFeatureValue) sessionFactory.getCurrentSession().createQuery("from VehicleFeatureValue where value='"+value+"'").uniqueResult();
    }
    
}
