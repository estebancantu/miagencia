package com.miagencia.rest.dto.operations;

import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.VehicleDTO;




// TODO por ahora no lo usamos
public abstract class NewVehicleOperationDTO {
	
	
	private VehicleDTO vehicleDto;
	
	private ClientDTO clientDto;
	

	
	
	
	public VehicleDTO getVehicleDto() {
		return vehicleDto;
	}

	public void setVehicleDto(VehicleDTO vehicleDto) {
		this.vehicleDto = vehicleDto;
	}

	public ClientDTO getClientDto() {
		return clientDto;
	}

	public void setClientDto(ClientDTO clientDto) {
		this.clientDto = clientDto;
	}

}
