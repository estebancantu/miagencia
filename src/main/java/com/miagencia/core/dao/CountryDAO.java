package com.miagencia.core.dao;

import com.miagencia.core.model.Country;

/**
 * 08/08/2016
 * @author Agustin Bala
 */
public interface CountryDAO {
	
	public Country find(Long countryId);

}
