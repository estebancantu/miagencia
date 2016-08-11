package com.miagencia.core.service;

import com.miagencia.rest.dto.ShareRequestDTO;

public interface ShareService {
	
	void shareFacebook(ShareRequestDTO shareRequestDTO);
	
	void postMercadoLibre(ShareRequestDTO shareRequestDTO);

	void postOLX(ShareRequestDTO shareRequestDTO);

}
