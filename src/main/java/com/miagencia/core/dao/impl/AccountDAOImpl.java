package com.miagencia.core.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.AccountDAO;
import com.miagencia.core.model.Account;
import com.miagencia.core.model.Client;

@Repository
public class AccountDAOImpl implements AccountDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void add(Account account) {
		
		if (account == null) throw new IllegalArgumentException("Account argument cannot be null");
		sessionFactory.getCurrentSession().save(account);	
		
	}

	@Override
	public void edit(Account account) {
		
		// TODO aca me parece que hay que usar merge() en lugar de update(), porque si client es una 
		// instancia detached, update va a tirar non unique exception. habria que usar merge(), y 
		// quedarse con la instancia de client que devuelve merge y devolverla en el metodo, porque
		// esa es la instancia persistent, no la que va como parametro que queda siempre detached.
		
		if (account == null) throw new IllegalArgumentException("Account argument cannot be null");
		sessionFactory.getCurrentSession().update(account);
		
	}

	@Override
	public void delete(Long accountId) {
		
		if (accountId == null) throw new IllegalArgumentException("Account id argument cannot be null");
		Account account = (Account)sessionFactory.getCurrentSession().load(Account.class, accountId);
		
		if (account == null) throw new IllegalArgumentException("There is no Account record for id " + accountId);
		sessionFactory.getCurrentSession().delete(account);
		
	}

	@Override
	public Account find(Long accountId) {
		
		if (accountId == null) throw new IllegalArgumentException("Account id argument cannot be null");
		return (Account)sessionFactory.getCurrentSession().get(Client.class, accountId);
	}

}
