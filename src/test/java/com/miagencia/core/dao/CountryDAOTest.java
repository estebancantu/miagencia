package com.miagencia.core.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.model.City;
import com.miagencia.core.model.Country;
import com.miagencia.core.model.Neighborhood;
import com.miagencia.core.model.State;


@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations="classpath*:application-context-test.xml")
public class CountryDAOTest {
	
	@Autowired
	private CountryDAO countryDAO;
	
	
	@Test
	@Transactional
	public void testGetAllMakesAndModels() {
		Country country = countryDAO.find(1l);
		System.out.println("Country -----"+country.getName());
		for (State state : country.getStateList()) {
			System.out.println("State -----"+state.getName());
			for (City city: state.getCityList()) {
				System.out.println("City -----"+city.getName());
				for (Neighborhood neighborhood : city.getNeighborhoodList()) {
					System.out.println("Neighborhood -----"+neighborhood.getName());
				}
			}
		}
		
	}

}
