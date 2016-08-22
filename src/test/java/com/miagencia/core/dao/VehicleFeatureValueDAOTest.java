package com.miagencia.core.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.model.VehicleFeatureValue;


@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations="classpath*:application-context-test.xml")
public class VehicleFeatureValueDAOTest {
	
	@Autowired
	private VehicleFeatureValueDAO vehicleFeatureValueDAO;
	
	
	@Test
	@Transactional
	public void testGetFeatureValue() {
//		List<VehicleFeatureValue> value = vehicleFeatureValueDAO.findValueByName("Color");
//		for (VehicleFeatureValue vehicleFeatureValue : value) {
//			System.out.println(vehicleFeatureValue.getOlxId());
//		}
		
	}

}
