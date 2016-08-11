package com.miagencia.core.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.NeighborhoodDAO;
import com.miagencia.core.model.Neighborhood;

/**
 * 08/08/2016
 * @author Agustin Bala
 */
@Repository
public class NeighborhoodDAOImpl implements NeighborhoodDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Neighborhood find(Long neighborhoodId) {
		if (neighborhoodId == null) throw new IllegalArgumentException("State id argument cannot be null");
		return (Neighborhood)sessionFactory.getCurrentSession().get(Neighborhood.class, neighborhoodId);
	}


}
