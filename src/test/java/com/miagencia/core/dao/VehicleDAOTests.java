package com.miagencia.core.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;




@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations="classpath*:application-context-test.xml")
public class VehicleDAOTests {
	
	@Autowired
	private VehicleDAO vehicleDao;

//	@Test
//	@Transactional
//	public void testAddVehicle() {
//		
//		Vehicle newVehicle = new Vehicle(VehicleType.CAR_TRUCK, 1, 1, 2016, "ABC123", 
//			"Rojo", "12345678", "323432344", 140000l, FuelType.GASOLINE, 
//				Transmission.MANUAL, "Un lindo auto", "Buenos Aires", 3, VehicleCondition.NEW);
//		
//		Vehicle newVehicle2 = new Vehicle(VehicleType.CAR_TRUCK, 3, 5, 2012, "CDI123", 
//				"Rojo", "12345348", "33423344", 141000l, FuelType.GASOLINE, 
//					Transmission.MANUAL, "Un auto usado pero como cero.", "Buenos Aires", 3, VehicleCondition.USED);
//				
//		System.out.println(newVehicle.getId());
//		vehicleDao.add(newVehicle);
//		vehicleDao.add(newVehicle2);
//		System.out.println(newVehicle.getId());
//		Vehicle vehicle = vehicleDao.find(newVehicle.getId());
//		assertEquals(newVehicle.getPlate(), vehicle.getPlate());
//	}
//
//	@Test
//	public void testEdit() {
//		//fail("Not yet implemented");
//	}
//
//	@Test
//	@Transactional
//	public void testDelete() {
//		
//		Vehicle newVehicle = new Vehicle(VehicleType.CAR_TRUCK, 1, 1, 2016, "ABC123", 
//				"Rojo", "12345678", "323432344", 140000l, FuelType.GASOLINE, 
//					Transmission.MANUAL, "Un lindo auto", "Buenos Aires", 3, VehicleCondition.NEW);
//		
//		vehicleDao.add(newVehicle);
//		
//		Vehicle retrievedVehicle = vehicleDao.find(newVehicle.getId());
//		assertEquals(retrievedVehicle.getId(), newVehicle.getId());
//		
//		vehicleDao.delete(newVehicle.getId());
//		retrievedVehicle = vehicleDao.find(newVehicle.getId());
//		assertEquals(retrievedVehicle, null);
//	}

	@Test
	public void testFind() {
		//fail("Not yet implemented");
	}

}
