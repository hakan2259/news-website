package com.adminportal.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.adminportal.domain.Comment;


public interface CommentRepository extends JpaRepository<Comment, Long> {
	@Query(value="select c from Comment c where c.id = ?1")
	public Comment findOne(Long id);
	
	
	@Transactional
	@Modifying
	@Query("delete from Comment n where n.id = ?1")
	void deleteCommentById(Long id);
}
