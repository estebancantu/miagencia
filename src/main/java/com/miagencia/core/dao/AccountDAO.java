package com.miagencia.core.dao;

import com.miagencia.core.model.Account;

public interface AccountDAO {
	
	public void add(Account account);
	
	public void edit(Account account);
	
	public void delete(Long accountId);
	
	public Account find(Long accountId);

}
