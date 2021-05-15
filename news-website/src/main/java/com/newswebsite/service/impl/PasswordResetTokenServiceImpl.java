package com.newswebsite.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newswebsite.domain.security.PasswordResetToken;
import com.newswebsite.repository.PasswordResetTokenRepository;
import com.newswebsite.service.PasswordResetTokenService;

@Service
public class PasswordResetTokenServiceImpl implements PasswordResetTokenService {

	@Autowired
	private PasswordResetTokenRepository passwordResetTokenRepository;
	
	@Override
	public PasswordResetToken findPasswordResetTokenById(Long userId) {
		
		return passwordResetTokenRepository.findPasswordResetTokenById(userId);
	}

}
