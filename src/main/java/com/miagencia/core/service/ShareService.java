package com.miagencia.core.service;

import java.io.InputStream;

import com.miagencia.rest.dto.ShareRequestDTO;

public interface ShareService {
	
	void shareFacebook(ShareRequestDTO shareRequestDTO);
	
	void postMercadoLibre(ShareRequestDTO shareRequestDTO)  throws Exception;
	
	String postOLX(ShareRequestDTO shareRequestDTO);
	
	void postAutocosmos(ShareRequestDTO shareRequestDTO) throws Exception;
	
	InputStream getOLXFile(String fileName);

}
