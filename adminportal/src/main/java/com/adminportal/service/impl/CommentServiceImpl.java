package com.adminportal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adminportal.domain.Comment;
import com.adminportal.repository.CommentRepository;
import com.adminportal.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentRepository commentRepository;

	@Override
	public List<Comment> findAll() {
		
		return (List<Comment>)commentRepository.findAll();
	}

	@Override
	public Comment findOne(Long id) {
	
		return commentRepository.findOne(id);
	}

	@Override
	public Comment save(Comment comment) {
		
		return commentRepository.save(comment);
	}
	
	


}
