package com.miagencia.core.dao;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.model.VehicleType;


@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations="classpath*:application-context-test.xml")
public class MakesAndModelsDAOTests {
	
	@Autowired
	private MakesAndModelsDAO makesAndModelsDao;
	
	
	@Test
	@Transactional
	public void testGetAllMakesAndModels() {
		
		
		Map<Long, String> makes = makesAndModelsDao.getAllMakesForVehicleType(Long.valueOf(VehicleType.CAR.ordinal()));
		
	}

}
