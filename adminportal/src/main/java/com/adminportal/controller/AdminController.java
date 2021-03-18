package com.adminportal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adminportal.domain.User;
import com.adminportal.repository.AdminRepository;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	
	@Autowired
	private AdminRepository adminRepository;
	
	
	@RequestMapping("/adminList")
	public String adminList(Model model) {
		List<User> adminList = adminRepository.findByAdminRoleId(1);
		model.addAttribute("adminList",adminList);
	
		return "adminList";
	}
	
	
	
	
	
	


}
