package com.miagencia.core.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.CityDAO;
import com.miagencia.core.dao.StateDAO;
import com.miagencia.core.model.City;
import com.miagencia.core.model.State;

/**
 * 08/08/2016
 * @author Agustin Bala
 */
@Repository
public class CityDAOImpl implements CityDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public City find(Long cityId) {
		if (cityId == null) throw new IllegalArgumentException("City id argument cannot be null");
		return (City)sessionFactory.getCurrentSession().get(City.class, cityId);
	}


}
