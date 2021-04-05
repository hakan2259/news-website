package com.adminportal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.adminportal.domain.Category;
import com.adminportal.domain.News;


public interface CategoryRepository extends JpaRepository<Category, Long> {
	
	@Query(value="select * from category where active=1",nativeQuery = true)
	public List<Category> findAllActiveByCategory();
	
	
	@Query(value="select c from Category c where c.id = ?1")
	public Category findOne(Long id);

}
