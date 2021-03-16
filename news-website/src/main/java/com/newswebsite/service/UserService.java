package com.newswebsite.service;



import com.newswebsite.domain.security.PasswordResetToken;
import com.newswebsite.domain.security.UserRole;

import java.util.Set;

import com.newswebsite.domain.User;


public interface UserService {
   PasswordResetToken getPasswordResetToken(final String token);
   
   void createPasswordResetTokenForUser(final User user,final String token);
   
   User findByUsername(String username);
   
   User findByEmail(String email);
   
   User createUser(User user, Set<UserRole> userRoles) throws Exception;
   
   User save(User user);
   
   
   
   
}
