package com.miagencia.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.AccountDAO;
import com.miagencia.core.model.Account;
import com.miagencia.core.model.Client;
import com.miagencia.core.model.Dealership;
import com.miagencia.core.service.AccountService;
import com.miagencia.rest.dto.AccountDTO;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.util.EntityDTOTranslator;

@Service
public class AccountServiceImpl implements AccountService {
	
	
	@Autowired
	private AccountDAO accountDao;
	

	@Override
	@Transactional
	public void add(AccountDTO accountDto) {
		
		Account account = new Account(accountDto.getUsername(), accountDto.getPassword());
		Dealership dealership = new Dealership(accountDto.getDealershipName(), account);
		
		account.setDealership(dealership);
		
		accountDao.add(account);
		

	}

	// TODO NO VA LEVANTAR UNA CUENTA POR ID, QUE MANDE USER Y LO UNICO QUE 
	// SE PODRIA ACTUALIZAR ES EL PASS
	@Override
	@Transactional
	public void edit(AccountDTO accountDto) {
		
	//	Account account = new Account(accountDto.getUsername(), accountDto.getPassword());
	//	account.setId(id);
	//	clientDao.edit(client);

	}

	@Override
	public void delete(Long accountId) {
		// TODO Auto-generated method stub

	}

	@Override
	public AccountDTO find(Long accountId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	@Transactional
	public AccountDTO find(String username) {
		
		AccountDTO accountDto = null;
		Account account = accountDao.find(username);
		
		
		if (account != null) {
			accountDto = EntityDTOTranslator.buildAccountDTO(account);
		}
		
		return accountDto;
		
		
		
		
	}

}
