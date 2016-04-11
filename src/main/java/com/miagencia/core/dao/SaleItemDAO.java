package com.miagencia.core.dao;

import com.miagencia.core.model.SaleItem;

public interface SaleItemDAO {
	
	public void add(SaleItem saleItem);
	
	public void edit(SaleItem saleItem);
	
	public void delete(Long saleItemId);
	
	public SaleItem find(Long saleItemId);
	
	public SaleItem getSaleItemByVehicleId(Long vehicleId);

}
