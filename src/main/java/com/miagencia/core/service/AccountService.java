package com.miagencia.core.service;

import com.miagencia.rest.dto.AccountDTO;

public interface AccountService {
	
	
	public void add(AccountDTO accountDto);
	
	public void edit(AccountDTO accountDto);
	
	public void delete(Long accountId);
	
	public AccountDTO find(Long accountId);

}
