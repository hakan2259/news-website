package com.newswebsite.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.newswebsite.domain.Comment;




public interface CommentRepository extends JpaRepository<Comment, Long>{
	
	
	@Query(value="select * from comment c where c.news_id = ?1",nativeQuery = true)
	public List<Comment> findCommentByNewsId(Long id);
	
}
