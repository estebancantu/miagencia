package com.miagencia.core.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.StateDAO;
import com.miagencia.core.model.State;

/**
 * 08/08/2016
 * @author Agustin Bala
 */
@Repository
public class StateDAOImpl implements StateDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	


	@Override
	public State find(Long stateId) {
		if (stateId == null) throw new IllegalArgumentException("State id argument cannot be null");
		return (State)sessionFactory.getCurrentSession().get(State.class, stateId);
	}


}
