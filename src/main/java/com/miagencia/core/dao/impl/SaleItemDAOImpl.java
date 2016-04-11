package com.miagencia.core.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.model.SaleItem;

@Repository
public class SaleItemDAOImpl implements SaleItemDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public void add(SaleItem saleItem) {
		
		if (saleItem == null) throw new IllegalArgumentException("Sale Item argument cannot be null");
		sessionFactory.getCurrentSession().save(saleItem);
	}

	@Override
	public void edit(SaleItem saleItem) {
		// TODO aca me parece que hay que usar merge() en lugar de update(), porque si saleItem es una 
		// instancia detached, update va a tirar non unique exception. habria que usar merge(), y 
		// quedarse con la instancia de saleItem que devuelve merge y devolverla en el metodo, porque
		// esa es la instancia persistent, no la que va como parametro que queda siempre detached.
		
		if (saleItem == null) throw new IllegalArgumentException("Sale Item argument cannot be null");
		sessionFactory.getCurrentSession().update(saleItem);

	}

	@Override
	public void delete(Long saleItemId) {
		
		if (saleItemId == null) throw new IllegalArgumentException("Sale Item id argument cannot be null");
		SaleItem saleItem = (SaleItem)sessionFactory.getCurrentSession().load(SaleItem.class, saleItemId);
		
		if (saleItem == null) throw new IllegalArgumentException("There is no Sale Item record for id " + saleItemId);
		sessionFactory.getCurrentSession().delete(saleItem);

	}

	@Override
	public SaleItem find(Long saleItemId) {
		
		if (saleItemId == null) throw new IllegalArgumentException("Sale Item id argument cannot be null");
		return (SaleItem)sessionFactory.getCurrentSession().get(SaleItem.class, saleItemId);
	}

	@Override
	public SaleItem getSaleItemByVehicleId(Long vehicleId) {
		
		if (vehicleId == null )
			throw new IllegalArgumentException("Vehicle Id argument cannot be null");
		
		Query query = sessionFactory.getCurrentSession().createQuery("from SaleItem s where s.vehicle.id = :vehicleId");
		query.setParameter("vehicleId", vehicleId);
		return (SaleItem)query.uniqueResult();
	}

}
