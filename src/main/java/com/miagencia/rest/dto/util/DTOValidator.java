package com.miagencia.rest.dto.util;

import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.ShareRequestDTO;
import com.miagencia.rest.dto.operations.BuyVehicleRequestDTO;
import com.miagencia.rest.dto.operations.NewVehicleRequestDTO;

public class DTOValidator {
	
	
	

	public static boolean validFields(ClientDTO client) {
		
		if(client.getFirstName() != null &&  client.getLastName() != null &&
				client.getEmail() != null) {
			return true;
		}
		System.out.println("Error: The fields " + client.getFirstName() + ", " + client.getLastName() + " and" + client.getEmail() +
				"cannot be null.");
		return false;
	}

	public static boolean validateBuyRequestDTO(BuyVehicleRequestDTO buyRequestDto){
		
		if( buyRequestDto.getSellerId() != null  && buyRequestDto.getVehicleDto() != null ) {
			return true;
		}
		return false;
	}
	
   /**
    * 
    * TODO: Solo valida que exista el cliente y el vehiculo. Validar otras propiedades internas.
    * @param newVehicleRequestDto
    * @return
    */
	public static boolean validate(NewVehicleRequestDTO newVehicleRequestDto){
		
		if( newVehicleRequestDto.getClientId() != null  && newVehicleRequestDto.getVehicleDto() != null ) {
			return true;
		}
		return false;
	}
	
	
	public static boolean validate(ShareRequestDTO shareRequestDTO){
		return (shareRequestDTO.getToken() != null &&
				!shareRequestDTO.getToken().isEmpty() && 
					shareRequestDTO.getVehicleId() != null);
	}

}
