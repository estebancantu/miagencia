package com.miagencia.core.dao.impl;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;








import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.MakesAndModelsDAO;
import com.miagencia.core.model.Client;
import com.miagencia.core.model.Make;
import com.miagencia.core.model.Model;
import com.miagencia.core.model.Vehicle;

@Repository
public class MakesAndModelsDAOImpl implements MakesAndModelsDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Map<Long, String> getAllMakesForVehicleType(Long vehicleType) {
		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select id, name from Makes m where m.vehicleType = :vehicleType").setParameter("vehicleType", vehicleType);;
		List result = query.list();
		
		Map<Long, String> makes = new HashMap<Long, String>();
		
		Iterator it = result.iterator();
		while(it.hasNext()) {
			Object[] makeObject= (Object[]) it.next();
			makes.put(((BigInteger)makeObject[0]).longValue(), (String)makeObject[1]);
		}
		
		return makes;
	}

	@Override
	public Map<Long, String> getAllModelsForMake(Long make) {
		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select id, name from Models m where m.make = :make").setParameter("make", make);;
		List result = query.list();
		
		Map<Long, String> models = new HashMap<Long, String>();
		
		Iterator it = result.iterator();
		while(it.hasNext()) {
			Object[] modelObject= (Object[]) it.next();
			models.put(((BigInteger)modelObject[0]).longValue(), (String)modelObject[1]);
		}
		
		return models;

	}

	@Override
	public Make getMake(Long makeId) {
		if (makeId == null )
			throw new IllegalArgumentException("makeId argument cannot be null");
		return (Make)sessionFactory.getCurrentSession().get(Make.class, makeId);
	}

	@Override
	public Model getModel(Long modelId) {
		if (modelId == null )
			throw new IllegalArgumentException("modelId argument cannot be null");
		return (Model)sessionFactory.getCurrentSession().get(Model.class, modelId);
		
	}

}
