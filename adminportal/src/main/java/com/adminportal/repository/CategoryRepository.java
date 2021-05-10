package com.adminportal.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.adminportal.domain.Category;
import com.adminportal.domain.News;


public interface CategoryRepository extends JpaRepository<Category, Long> {
	
	@Query(value="select * from category where active=1",nativeQuery = true)
	public List<Category> findAllActiveByCategory();
	
	
	@Query(value="select c from Category c where c.id = ?1")
	public Category findOne(Long id);
	
	
	@Transactional
	@Modifying
	@Query("delete from Category n where n.id = ?1")
	void deleteCategoryById(Long id);

}
