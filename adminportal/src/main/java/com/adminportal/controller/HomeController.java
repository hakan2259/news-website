package com.adminportal.controller;


import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adminportal.domain.User;
import com.adminportal.service.AdminService;



@Controller
public class HomeController {
	
	@Autowired
	private AdminService adminService;
	
	

	@RequestMapping("/")
	public String index(){
		return "redirect:/home";
	}
	
	@RequestMapping("/home")
	public String home(Principal principal, Model model){
		
		User adminUser = adminService.findAdminByUsername(principal.getName());
		if(adminUser !=null) {
			model.addAttribute("adminUser",adminUser);
		}

		
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	

	
	
}
