package com.adminportal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.adminportal.domain.User;
import com.adminportal.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/userList")
	public String userList(Model model) {
		List<User> userList = userService.findByUserRoleId(2);
		model.addAttribute("userList",userList);
	
		return "userList";
	}
	
	
	@RequestMapping("/updateUser")
	public String updateUser(@RequestParam("id") Long id, Model model) {
		User user = userService.findOne(id);

		model.addAttribute("user", user);
	
		return "updateUser";
	}
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateUserPost(@ModelAttribute("user") User user, HttpServletRequest request) {
		
		user.setRoleId(2);
		userService.save(user);
		
		return "redirect:/user/userList";
	}
	
	
	
	
	
	


}
