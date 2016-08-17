package com.miagencia.core.dao.impl;


import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.MakesAndModelsDAO;
import com.miagencia.core.model.Make;
import com.miagencia.core.model.Model;
import com.miagencia.core.model.VehicleType;


@Repository
public class MakesAndModelsDAOImpl implements MakesAndModelsDAO {

	
	
	
	@Autowired
	private SessionFactory sessionFactory;
	

	
	

	
	@Override
	public List<Make> getAllMakesAndModels(VehicleType vehicleType) {
		
		List<Make> makes = new ArrayList<Make>();
		
		// TODO falta ver como es con el ordinal
		Query query = sessionFactory.getCurrentSession().createQuery("from Make m where m.vehicleType = :vehicleType");
		query.setParameter("vehicleType", vehicleType);
		makes = query.list();

		
		return makes;
	}
	
	
	
	@Deprecated
	@Override
	public Map<Long, String> getAllMakesForVehicleType(VehicleType vehicleType) {
		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select id, name from MAKES m where m.VEHICLE_TYPE = :vehicleType").setParameter("vehicleType", vehicleType);;
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
