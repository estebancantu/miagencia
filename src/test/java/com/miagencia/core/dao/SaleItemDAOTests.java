package com.miagencia.core.dao;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.model.Color;
import com.miagencia.core.model.FuelType;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Transmission;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.VehicleCondition;
import com.miagencia.core.model.VehicleStatus;
import com.miagencia.core.model.VehicleType;
import com.miagencia.core.model.Year;


@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations="classpath*:application-context-test.xml")
public class SaleItemDAOTests {

	@Autowired
	private SaleItemDAO saleItemDao;
	
	
	@Test
	@Transactional
	public void testAddSaleItem() {
		
		Vehicle newVehicle = new Vehicle(VehicleType.CAR, 1, 1, Year.DOS_MIL_CINCO, "ABC123", 
			Color.AMARILLO, "12345678", "323432344", 140000l, FuelType.GASOLINE, 
				Transmission.MANUAL, "Un lindo auto", "Problemas de motor.", "Buenos Aires", 3, VehicleCondition.NEW);
		
		SaleItem saleItem = new SaleItem(newVehicle, 120000);
		

		saleItemDao.add(saleItem);
		
		System.out.println(newVehicle.getId());
		SaleItem retrievedSaleItem = saleItemDao.find(saleItem.getId());
		assertEquals(saleItem.getVehicle().getPlate(), retrievedSaleItem.getVehicle().getPlate());
	}
}
