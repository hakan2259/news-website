package com.adminportal.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.adminportal.domain.User;
import com.adminportal.service.AdminService;





@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping("/adminList")
	public String adminList(Model model) {
		List<User> adminList = adminService.findByAdminRoleId(1);
		model.addAttribute("adminList",adminList);
	
		return "adminList";
	}
	
	
	@RequestMapping("/updateAdmin")
	public String updateAdmin(Principal principal, Model model) {
		
		
		User adminUser = adminService.findAdminByUsername(principal.getName());
		
		model.addAttribute("adminUser", adminUser);
	
		return "updateAdmin";
	}
	
	
	@RequestMapping(value = "/updateAdmin", method = RequestMethod.POST)
	public String updateUserPost(@ModelAttribute("user") User user, 	HttpServletRequest request) {
		
		user.setRoleId(1);
		adminService.save(user);
		
		return "redirect:/admin/adminList";
	}
	
	
	


}
