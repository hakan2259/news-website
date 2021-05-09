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

import com.adminportal.domain.Comment;
import com.adminportal.domain.User;
import com.adminportal.service.CommentService;



@Controller
@RequestMapping("/comment")
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	@RequestMapping("/commentList")
	public String commentList(Model model) {
		
		List<Comment> commentList = commentService.findAll();
		model.addAttribute("commentList",commentList);
		
		return "commentList";
	}
	
	@RequestMapping("/updateComment")
	public String updateUser(@RequestParam("id") Long id, Model model) {
		Comment comment = commentService.findOne(id);

		
		model.addAttribute("comment", comment);
	
		return "updateComment";
	}
	
	@RequestMapping(value = "/updateComment", method = RequestMethod.POST)
	public String updateCommentPost(@ModelAttribute("comment") Comment comment, HttpServletRequest request) {
		
		commentService.save(comment);
		
		return "redirect:/comment/commentList";
	}
	
}
