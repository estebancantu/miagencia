package com.miagencia.core.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.model.Client;
import com.miagencia.core.model.Color;
import com.miagencia.core.model.FuelType;
import com.miagencia.core.model.PaymentType;
import com.miagencia.core.model.Transmission;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.VehicleCondition;
import com.miagencia.core.model.VehicleType;
import com.miagencia.core.model.Year;
import com.miagencia.core.model.operations.BuyOperation;


@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations="classpath*:application-context-test.xml")
public class OperationDAOTests {
	
	@Autowired
	private OperationDAO operationDao;
	
	@Test
	@Transactional
	public void testAddPurchaseOperation() {
		
		Vehicle vehicle = new Vehicle(VehicleType.CAR, 1, 1, Year.DOS_MIL_CINCO, "AAA123", 
				Color.VERDE, "12312378", "323432344", 140000l, FuelType.GASOLINE, 
					Transmission.MANUAL, "Bastante bien", "La Plata", 3, VehicleCondition.NEW);
		
		
		Client seller = new Client(27528358l, "Esteban", "Cantu","estebancantu@hotmail.com",
				"2214564536","34553495459", null, null, null, null, null);
		
		BuyOperation purchase = new BuyOperation(vehicle, seller, 124000, PaymentType.CASH);
		
		operationDao.add(purchase);
		
		
		
	}

}
