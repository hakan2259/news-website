package com.newswebsite.service;

import com.newswebsite.domain.security.PasswordResetToken;

public interface PasswordResetTokenService {

	
	   PasswordResetToken findPasswordResetTokenById(Long userId);

}
