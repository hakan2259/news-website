package com.newswebsite.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newswebsite.domain.Comment;
import com.newswebsite.repository.CommentRepository;
import com.newswebsite.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentRepository commentRepository;
	
	@Override
	public Comment save(Comment comment) {
		return commentRepository.save(comment);
	}

	@Override
	public List<Comment> findCommentByNewsId(Long id) {
		return commentRepository.findCommentByNewsId(id);
	}

	
}
