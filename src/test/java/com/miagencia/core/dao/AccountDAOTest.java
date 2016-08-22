package com.miagencia.core.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.model.Account;


@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration(locations="classpath*:application-context-test.xml")
public class AccountDAOTest {
	
	@Autowired
	private AccountDAO accountDAO;
	
	
	@Test
	@Transactional
	public void testAccount() {
//		Account account = accountDAO.find(1l);
//		System.out.println("Account -----"+account.getUsername());
//		System.out.println("Dealership -----"+account.getDealership().getName());
//		System.out.println("Location Address -----"+account.getDealership().getLocation().getAddressLine());
//		System.out.println("Location Country -----"+account.getDealership().getLocation().getCountry().getName());
//		System.out.println("Location State Country -----"+account.getDealership().getLocation().getState().getCountry().getName());
//		System.out.println("Location State -----"+account.getDealership().getLocation().getState().getName());
//		System.out.println("Location City -----"+account.getDealership().getLocation().getCity().getName());
//		System.out.println("Location Neighborhood -----"+account.getDealership().getLocation().getNeighborhood().getName());
//		
	}

}
