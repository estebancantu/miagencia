package com.miagencia.core.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.ClientDAO;
import com.miagencia.core.model.Client;
import com.miagencia.core.service.ClientService;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.ClientSummaryDTO;
import com.miagencia.rest.dto.VehicleDTO;
import com.miagencia.rest.dto.util.EntityDTOTranslator;

// TODO los servicios tienen que tirar excepciones si pasa algo
// ej no encuentra al cliente, despues el controller las atrapa y las wrapea en 
// otra exception de spring, las del lado de rest que terminan mostrando un http status de error

@Service
public class ClientServiceImpl implements ClientService {
	
	@Autowired
	private ClientDAO clientDao;

	
	@Override
	@Transactional
	public Long add(ClientDTO client) {
		
		Client newClient = EntityDTOTranslator.buildClient(client);
		return clientDao.add(newClient);

	}

	@Override
	@Transactional
	public void edit(ClientDTO client) {
		
		Client existingClient = clientDao.find(client.getId());
		
		existingClient.setFirstName(client.getFirstName());
		existingClient.setLastName(client.getLastName());
		existingClient.setDni(client.getDni());
		existingClient.setEmail(client.getEmail());
		existingClient.setPhone(client.getPhone());
		existingClient.setMobile(client.getMobile());
		existingClient.setAddress(client.getAddress());
		existingClient.setCity(client.getCity());
		existingClient.setProvince(client.getProvince());
		existingClient.setPostalCode(client.getPostalCode());
		existingClient.setCountry(client.getCountry());
		existingClient.setDateOfBirth(client.getDateOfBirth());
	
		
		clientDao.edit(existingClient);
	}

	@Override
	@Transactional
	public void delete(Long clientId) {
		clientDao.delete(clientId);

	}

	@Override
	@Transactional
	public ClientDTO find(Long clientId) {
		
		ClientDTO clientDto = null;
		Client client = clientDao.find(clientId);
		
		
		if (client != null) {
			clientDto = EntityDTOTranslator.buildClientDTO(client);
		}
		
		return clientDto;
	}

	@Override
	@Transactional
	public List<ClientSummaryDTO> getAllClients() {
		
		List<ClientSummaryDTO> clientsDto = new ArrayList<ClientSummaryDTO>();
		
		List<Client> clients = clientDao.getAllClients();
		
		for (Iterator iterator = clients.iterator(); iterator.hasNext();) {
			
			Client client = (Client) iterator.next();
			
			ClientSummaryDTO clientDto = EntityDTOTranslator.buildClientSummaryDTO(client);
			clientsDto.add(clientDto);
		}
		
		return clientsDto;
	}
	
	@Override
	@Transactional
	public boolean isClientExist(String firstName, String lastName){
		
		Client oldClient = null;
		oldClient = clientDao.getClient(firstName, lastName);
		
		if (oldClient != null) {
			return true;
		}
		return false;
	}

}
