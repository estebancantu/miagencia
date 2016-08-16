package com.miagencia.core.service;

import java.io.InputStream;

import com.miagencia.rest.dto.ShareRequestDTO;

public interface ShareService {
	
	void shareFacebook(ShareRequestDTO shareRequestDTO);
	
	void postMercadoLibre(ShareRequestDTO shareRequestDTO);

	String postOLX(ShareRequestDTO shareRequestDTO);
	
	InputStream getOLXFile(String fileName);

}
