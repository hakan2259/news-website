package com.adminportal.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adminportal.domain.User;
import com.adminportal.repository.AdminRepository;
import com.adminportal.service.AdminService;





@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminRepository adminRepository;

	@Override
	public List<User> findByAdminRoleId(int role_id) {
		
		return adminRepository.findByAdminRoleId(role_id);
	}

	@Override
	public User findAdminByUsername(String username) {
		return adminRepository.findAdminByUsername(username);
	}

	@Override
	public User save(User user) {
		// TODO Auto-generated method stub
		return adminRepository.save(user);
	}

	@Override
	public User findOne(Long id) {
		// TODO Auto-generated method stub
		return adminRepository.findOne(id);
	}

	

	

	

	

	

	

}
