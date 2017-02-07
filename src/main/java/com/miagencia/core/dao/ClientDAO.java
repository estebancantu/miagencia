

package com.miagencia.core.dao;

import java.util.List;

import com.miagencia.core.model.Client;



public interface ClientDAO {
	
	
	public Long add(Client client);
	
	public void edit(Client client);
	
	public void delete(Long clientId);
	
	public Client find(Long clientId);
	
	public Client getClient(String firstName, String lastName);
	
	public List<Client> getAllClients(Long accountId);
	
	public int countTotalClients(Long accountId);
	

}
