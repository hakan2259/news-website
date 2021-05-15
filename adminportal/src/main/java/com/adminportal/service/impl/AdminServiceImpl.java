package com.adminportal.service.impl;


import java.util.List;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adminportal.domain.User;
import com.adminportal.repository.AdminRepository;
import com.adminportal.repository.RoleRepository;
import com.adminportal.service.AdminService;
import com.adminportal.domain.security.UserRole;
import com.adminportal.service.UserService;





@Service
public class AdminServiceImpl implements AdminService {
	private static final Logger LOG = LoggerFactory.getLogger(UserService.class);

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private RoleRepository roleRepository;

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
	
	@Override
	public User createUser(User user, Set<UserRole> userRoles) throws Exception {
		User localUser = adminRepository.findAdminByUsername(user.getUsername());
		
		if(localUser !=null) {
			LOG.info("user {} already exists. Nothing will be done",user.getUsername());
		}else {
			for(UserRole ur: userRoles) {
				roleRepository.save(ur.getRole());
			}
			
			user.getUserRoles().addAll(userRoles);
			
			localUser = adminRepository.save(user);
			
		}
		return localUser;
	}
	
	


	

	

	

	

	

	

}
