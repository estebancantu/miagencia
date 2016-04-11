package com.miagencia.core.dao.impl;

import java.util.List;



// ej dao paginacion

// List<User>	getStudents(long id, int first, int count) 
// list of students in the course
//





import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.miagencia.core.dao.ClientDAO;
import com.miagencia.core.model.Client;


@Repository
public class ClientDAOImpl implements ClientDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void add(Client client) {
		
		if (client == null) throw new IllegalArgumentException("Client argument cannot be null");
		sessionFactory.getCurrentSession().save(client);	
	}

	@Override
	public void edit(Client client) {
		
		
		// TODO aca me parece que hay que usar merge() en lugar de update(), porque si client es una 
		// instancia detached, update va a tirar non unique exception. habria que usar merge(), y 
		// quedarse con la instancia de client que devuelve merge y devolverla en el metodo, porque
		// esa es la instancia persistent, no la que va como parametro que queda siempre detached.
		
		if (client == null) throw new IllegalArgumentException("Client argument cannot be null");
		sessionFactory.getCurrentSession().update(client);
	}

	@Override
	public void delete(Long clientId) {
		
		if (clientId == null) throw new IllegalArgumentException("Client id argument cannot be null");
		Client client = (Client)sessionFactory.getCurrentSession().load(Client.class, clientId);
		
		if (client == null) throw new IllegalArgumentException("There is no Client record for id " + clientId);
		sessionFactory.getCurrentSession().delete(client);
	}

	@Override
	public Client find(Long clientId) {
		
		if (clientId == null) throw new IllegalArgumentException("Client id argument cannot be null");
		return (Client)sessionFactory.getCurrentSession().get(Client.class, clientId);
	}
	
	public Client getClient(String firstName, String lastName) {
		
		if (firstName == null || lastName == null)
			throw new IllegalArgumentException("Neither firstName nor lastName arguments can be null");

		Query query = sessionFactory.getCurrentSession().createQuery("from Client where firstName = :firstName and lastName = :lastName");
		query.setParameter("firstName", firstName);
		query.setParameter("lastName", lastName);
		return (Client)query.uniqueResult();
	}

	@Override
	public List<Client> getAllClients() {
		return sessionFactory.getCurrentSession().createQuery("from Client").list();
	}

}
