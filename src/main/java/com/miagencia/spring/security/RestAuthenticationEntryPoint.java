package com.miagencia.spring.security;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;


/**
 * 
 * This class is intended to override common entry point behaviour for Spring
 * Security, to not-redirect to login page in case of a failed authentication.
 * <p>
 * Given the nature of a REST Service, authentication should only be done by a
 * request to the correct URI and all other requests should simply fail with a
 * 401 UNAUTHORIZED status code if the user is not authenticated.
 * <p>
 * 
 * @author estebancantu
 *
 */
//@Component( "restAuthenticationEntryPoint" )
public class RestAuthenticationEntryPoint implements AuthenticationEntryPoint {
	
	@Override
	   public void commence( HttpServletRequest request, HttpServletResponse response, 
	    AuthenticationException authException ) throws IOException{
	      response.sendError( HttpServletResponse.SC_UNAUTHORIZED, "Unauthorized" );
	   }

}
