package com.miagencia.core.dao.impl;

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
import com.miagencia.core.model.Client;
import com.miagencia.rest.dto.MakeDTO;
import com.miagencia.rest.dto.ModelDTO;

@Repository
public class MakesAndModelsDAOImpl implements MakesAndModelsDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	

	
	

	
	@Override
	public List<MakeDTO> getAllMakesAndModels(Long vehicleType) {
		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select ID, INFOAUTO_MAKE, NAME from MAKES m where m.VEHICLE_TYPE = :vehicleType").setParameter("vehicleType", vehicleType);;
		List result = query.list();
		
		List<MakeDTO> makes = new ArrayList<MakeDTO>();
		
		Iterator it = result.iterator();
		while(it.hasNext()) {
			Object[] makeObject= (Object[]) it.next();
			MakeDTO makeDto = new MakeDTO();
			makeDto.setId(Long.valueOf((Integer)makeObject[0]));
			makeDto.setInfoautoMake(Long.valueOf((Integer)makeObject[1]));
			makeDto.setName((String)makeObject[2]);
			
			// ir a buscar los modelos de este make, chequear con servicio
			List<ModelDTO> models = getAllModelsForMake(makeDto.getId());
			makeDto.setModels(models);
			
			makes.add(makeDto);
		}
		
		return makes;
	}
	
	
	
	@Deprecated
	@Override
	public Map<Long, String> getAllMakesForVehicleType(Long vehicleType) {
		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select id, name from MAKES m where m.VEHICLE_TYPE = :vehicleType").setParameter("vehicleType", vehicleType);;
		List result = query.list();
		
		Map<Long, String> makes = new HashMap<Long, String>();
		
		Iterator it = result.iterator();
		while(it.hasNext()) {
			Object[] makeObject= (Object[]) it.next();
			makes.put(Long.valueOf((Integer)makeObject[0]), (String)makeObject[1]);
		}
		
		return makes;
	}
	
	
	private List<ModelDTO> getAllModelsForMake(Long make) {
		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select ID, COD_INFOAUTO, NAME from MODELS m where m.MAKE_ID = :make").setParameter("make", make);;
		List result = query.list();
		
		List<ModelDTO> models = new ArrayList<ModelDTO>();
		
		Iterator it = result.iterator();
		while(it.hasNext()) {
			Object[] modelObject= (Object[]) it.next();
			ModelDTO modelDto = new ModelDTO();
			modelDto.setId(Long.valueOf((Integer)modelObject[0]));
			modelDto.setCodInfoauto(Long.valueOf((Integer)modelObject[1]));
			modelDto.setName((String)modelObject[2]);
			
			models.add(modelDto);
		
		}
		
		return models;

	}

	@Override
	public String getMake(Long makeId) {
		
		if (makeId == null )
			throw new IllegalArgumentException("makeId argument cannot be null");

		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select name from MAKES m where m.ID = :makeId").setParameter("makeId", makeId);;
		return (String)query.uniqueResult();

		
	}

	@Override
	public String getModel(Long modelId) {
		
		if (modelId == null )
			throw new IllegalArgumentException("modelId argument cannot be null");

		
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select name from MODELS m where m.ID = :modelId").setParameter("modelId", modelId);;
		return (String)query.uniqueResult();

		
	}

}
