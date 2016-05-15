package com.miagencia.rest.dto.util;

import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.operations.BuyVehicleRequestDTO;

public class DTOValidator {
	
	
	

	public static boolean validFields(ClientDTO client) {
		
		if(client.getFirstName() != null &&  client.getLastName() != null &&
				(client.getPhone() != null || client.getMobile() != null)) {
			return true;
		}
		return false;
	}

	public static boolean validateBuyRequestDTO(BuyVehicleRequestDTO buyRequestDto){
		
		if( buyRequestDto.getSellerId() != null  && buyRequestDto.getVehicleDto() != null ) {
			return true;
		}
		return false;
	}

}
