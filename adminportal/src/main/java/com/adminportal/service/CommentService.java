package com.adminportal.service;



import java.util.List;

import com.adminportal.domain.Comment;
import com.adminportal.domain.User;



public interface CommentService {
	
	List<Comment> findAll();
	Comment findOne(Long id);
	Comment save(Comment comment);
	
	
	
	
	

}
