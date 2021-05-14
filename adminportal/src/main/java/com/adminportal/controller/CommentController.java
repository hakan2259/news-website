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

import com.adminportal.domain.Comment;
import com.adminportal.domain.Contact;
import com.adminportal.domain.User;
import com.adminportal.repository.CommentRepository;
import com.adminportal.service.AdminService;
import com.adminportal.service.CommentService;



@Controller
@RequestMapping("/comment")
public class CommentController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CommentRepository commentRepository;
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping("/commentList")
	public String commentList(Model model,Principal principal) {
		
		List<Comment> commentList = commentService.findAll();
		model.addAttribute("commentList",commentList);
		
		User adminUser = adminService.findAdminByUsername(principal.getName());
		if(adminUser !=null) {
			model.addAttribute("adminUser",adminUser);
		}
		
		return "commentList";
	}
	
	@RequestMapping("/updateComment")
	public String updateUser(@RequestParam("id") Long id, Model model,Principal principal) {
		Comment comment = commentService.findOne(id);

		User adminUser = adminService.findAdminByUsername(principal.getName());
		if(adminUser !=null) {
			model.addAttribute("adminUser",adminUser);
		}
		model.addAttribute("comment", comment);
	
		return "updateComment";
	}
	
	@RequestMapping(value = "/updateComment", method = RequestMethod.POST)
	public String updateCommentPost(@ModelAttribute("comment") Comment comment, HttpServletRequest request) {
		
		commentService.save(comment);
		
		return "redirect:/comment/commentList";
	}
	
	
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String removeContact(
			@ModelAttribute("id") String id, Model model
			) {
		commentRepository.deleteCommentById(Long.parseLong(id.substring(10)));
		List<Comment> commentList = commentService.findAll();
		model.addAttribute("commentList",commentList);
		
		return "redirect:/comment/commentList";
	}
	
}
