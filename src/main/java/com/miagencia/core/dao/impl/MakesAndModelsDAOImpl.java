package com.miagencia.core.dao.impl;

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
			makes.put(Long.valueOf((Integer)makeObject[0]), (String)makeObject[1]);
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
			models.put(Long.valueOf((Integer)modelObject[0]), (String)modelObject[1]);
		}
		
		return models;

	}

	@Override
	public String getMake(Long makeId) {
		
		if (makeId == null )
			throw new IllegalArgumentException("makeId argument cannot be null");

		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select name from Makes m where m.id = :makeId").setParameter("makeId", makeId);;
		return (String)query.uniqueResult();

		
	}

	@Override
	public String getModel(Long modelId) {
		
		if (modelId == null )
			throw new IllegalArgumentException("modelId argument cannot be null");

		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select name from Models m where m.id = :modelId").setParameter("modelId", modelId);;
		return (String)query.uniqueResult();

		
	}

}
