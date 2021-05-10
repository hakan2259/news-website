package com.adminportal.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.adminportal.domain.Category;
import com.adminportal.domain.User;
import com.adminportal.repository.AdminRepository;
import com.adminportal.service.AdminService;
import com.adminportal.utility.SecurityUtility;





@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	
	@Autowired
	private AdminService adminService;
	
	@Autowired 
	AdminRepository adminRepository;
	
	
	@RequestMapping("/adminList")
	public String adminList(Model model) {
		List<User> adminList = adminService.findByAdminRoleId(1);
		model.addAttribute("adminList",adminList);
	
		return "adminList";
	}
	
	
	@RequestMapping("/profileAdmin")
	public String profileAdmin(Principal principal, Model model) {
		
		
		User adminUser = adminService.findAdminByUsername(principal.getName());
		
		model.addAttribute("adminUser", adminUser);
	
		return "profileAdmin";
	}
	
	
	@RequestMapping(value = "/profileAdmin", method = RequestMethod.POST)
	public String profileAdminPost(@ModelAttribute("user") User user,HttpServletRequest request) {
		
		user.setRoleId(1);
		adminService.save(user);
		
		return "redirect:/admin/adminList";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addAdmin(Model model) {
		User adminUser = new User();
		model.addAttribute("adminUser",adminUser);
		return "addAdmin";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addCategoryPost(@ModelAttribute("user") User user, HttpServletRequest request) {
		user.setRoleId(1);
		String encryptedPassword = SecurityUtility.passwordEncoder().encode(user.getPassword());
		user.setPassword(encryptedPassword);
		
		adminService.save(user);
		
		return "redirect:/admin/adminList";
		
	}
	
	@RequestMapping("/updateAdmin")
	public String updateAdmin(@RequestParam("id") Long id, Model model) {
		User adminUser = adminService.findOne(id);

		
		model.addAttribute("adminUser",adminUser);
	
		return "updateAdmin";
	}
	
	@RequestMapping(value = "/updateAdmin", method = RequestMethod.POST)
	public String updateAdminPost(@ModelAttribute("user") User user, HttpServletRequest request) {
		
		user.setRoleId(1);
		adminService.save(user);
		
		return "redirect:/admin/adminList";
	}
	

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(
			@ModelAttribute("id") String id, Model model
			) {
		adminRepository.deleteAdminById(Long.parseLong(id.substring(10)));
		List<User> adminList = adminService.findByAdminRoleId(1);
		model.addAttribute("adminList",adminList);
		
		return "redirect:/admin/adminList";
	}
	
	
	


}
