package com.miagencia.core.service;

import java.util.List;

import com.miagencia.core.model.Client;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.ClientSummaryDTO;


public interface ClientService {
	
	
	public Long add(ClientDTO client);
	
	public void edit(ClientDTO client);
	
	public void delete(Long clientId);
	
	public ClientDTO find(Long clientId);
	
	public List<ClientSummaryDTO> getAllClients(Long accountId);
	
	public boolean isClientExist(String firstName, String lastName);

}
