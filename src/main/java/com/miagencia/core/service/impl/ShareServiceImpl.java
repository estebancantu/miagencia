package com.miagencia.core.service.impl;

import java.util.List;

import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.PostData;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.stereotype.Service;

import com.miagencia.core.service.ShareService;
import com.miagencia.rest.dto.ShareRequestDTO;

@Service
public class ShareServiceImpl implements ShareService {

	@Override
	public void shareFacebook(ShareRequestDTO shareRequestDTO) {
		Facebook facebook = new FacebookTemplate(shareRequestDTO.getToken(), "miagenciavirtual", "1607953992831087");
		List<String> friendIds = facebook.friendOperations().getFriendIds();
		facebook.feedOperations().post(new PostData("me").message("I'm trying out Spring Social!")
			    .link("http://www.springsource.org/spring-social", null, "Spring Social", 
			    		"The Spring Social Project", "Spring Social is an extension to Spring to enable applications to connect with service providers."));
		
	}

}
