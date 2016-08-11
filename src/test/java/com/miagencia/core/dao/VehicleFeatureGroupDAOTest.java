package com.miagencia.core.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.model.VehicleFeature;
import com.miagencia.core.model.VehicleFeatureGroup;
import com.miagencia.core.model.VehicleFeatureValue;


@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations="classpath*:application-context-test.xml")
public class VehicleFeatureGroupDAOTest {
	
	@Autowired
	private VehicleFeatureGroupDAO vehicleFeatureGroupDAO;
	
	
	@Test
	@Transactional
	public void testGetAllMakesAndModels() {
		List<VehicleFeatureGroup> featuresGroup = vehicleFeatureGroupDAO.findAll();
		for (VehicleFeatureGroup vehicleFeatureGroup : featuresGroup) {
			System.out.println("GROUP -----"+vehicleFeatureGroup.getName());
			for (VehicleFeature vehicleFeature : vehicleFeatureGroup.getFeatures()) {
				System.out.println("FEATURE -----"+vehicleFeature.getName());
				System.out.println("FEATURE MERCADOLIBRE ID-----"+vehicleFeature.getMercadoLibreId());
				for (VehicleFeatureValue vehicleFeatureValue : vehicleFeature.getFeatureValue()) {
					System.out.println("VALUE -----"+vehicleFeatureValue.getValue());	
				}
			}
		}
		
	}

}
