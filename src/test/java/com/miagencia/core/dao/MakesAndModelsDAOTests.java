package com.miagencia.core.dao;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.model.Make;
import com.miagencia.core.model.VehicleType;
import com.miagencia.rest.dto.VehicleTypeDTO;


@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations="classpath*:application-context-test.xml")
public class MakesAndModelsDAOTests {
	
	@Autowired
	private MakesAndModelsDAO makesAndModelsDao;
	
	
	@Test
	@Transactional
	public void testGetAllMakesAndModels() {
		
		
		List<Make> makes = makesAndModelsDao.getAllMakesAndModels(VehicleType.CAR);
		
	}

}
