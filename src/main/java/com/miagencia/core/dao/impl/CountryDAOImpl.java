package com.miagencia.core.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.CountryDAO;
import com.miagencia.core.model.Country;

/**
 * 08/08/2016
 * @author Agustin Bala
 */
@Repository
public class CountryDAOImpl implements CountryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	


	@Override
	public Country find(Long countryId) {
		
		if (countryId == null) throw new IllegalArgumentException("Country id argument cannot be null");
		return (Country)sessionFactory.getCurrentSession().get(Country.class, countryId);
	}


}
