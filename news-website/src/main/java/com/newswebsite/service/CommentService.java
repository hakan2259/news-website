package com.newswebsite.service;

import java.util.List;

import com.newswebsite.domain.Comment;

public interface CommentService {
   Comment save(Comment comment);
   
   List<Comment> findCommentByNewsId(Long id);
   
   
}
