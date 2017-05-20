package com.miagencia.rest.dto.util;

import org.springframework.http.HttpHeaders;
import javax.servlet.http.HttpServletRequest;
import java.net.MalformedURLException;
import java.net.URL;

public class CustomResponseHeaders extends HttpHeaders{

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    public CustomResponseHeaders(HttpServletRequest request) {
        super();
        set("Access-Control-Allow-Origin", getURLBase(request));
    }

    private String getURLBase(HttpServletRequest request) {

        /*  URL requestURL;

        try {
            requestURL = new URL(request.getRequestURL().toString());


        } catch (MalformedURLException e) {
            System.out.println("CustomResponseHeaders - The given URL is malformed.");
            return "";
        }

        String port = requestURL.getPort() == -1 ? "" : ":" + requestURL.getPort();
        String protocol = requestURL.getProtocol();
        String host = requestURL.getHost();
        return  protocol + "://" + host + port;
        */

        return request.getRequestURL().toString();
    }

}
