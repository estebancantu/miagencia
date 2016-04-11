package com.miagencia.rest.dto;



public abstract class VehicleOperationDTO {
	

	
	private VehicleDTO vehicleDto;
	
	private ClientDTO clientDto;
	
	//private OperationDetailsDTO operationDetailsDto;


	
	
	
	
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
