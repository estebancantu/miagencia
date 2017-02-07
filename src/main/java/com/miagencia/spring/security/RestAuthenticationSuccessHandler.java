package com.miagencia.spring.security;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.util.StringUtils;
import org.springframework.security.web.savedrequest.SavedRequest;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.miagencia.core.service.AccountService;
import com.miagencia.core.service.VehicleOperationService;
import com.miagencia.rest.dto.AccountDTO;

public class RestAuthenticationSuccessHandler extends
		SimpleUrlAuthenticationSuccessHandler {
	
	private RequestCache requestCache = new HttpSessionRequestCache();
	
	private static final ObjectMapper mapper = new ObjectMapper();
	
	@Autowired 
	AccountService accountService;	
	
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, 
      Authentication authentication) throws ServletException, IOException {
    	
    	response.setStatus(HttpServletResponse.SC_OK);
    	
    	AccountDTO accountDto = accountService.find(authentication.getName());

    	PrintWriter writer = response.getWriter();
    	writer.write(mapper.writeValueAsString(accountDto));
    	
        writer.flush();
        writer.close();
    }

}
