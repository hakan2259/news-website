package com.adminportal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adminportal.domain.User;
import com.adminportal.repository.UserRepository;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	
	@Autowired
	private UserRepository userRepository;
	
	
	@RequestMapping("/userList")
	public String userList(Model model) {
		List<User> userList = userRepository.findByUserRoleId(2);
		model.addAttribute("userList",userList);
	
		return "userList";
	}
	
	
	
	
	
	


}
