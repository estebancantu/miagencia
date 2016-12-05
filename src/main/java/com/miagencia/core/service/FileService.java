package com.miagencia.core.service;

import java.io.InputStream;

public interface FileService {
	
	InputStream getReceiptFile(Long vehicleId);
	
	InputStream getSalesContractFile(Long vehicleId);

}
