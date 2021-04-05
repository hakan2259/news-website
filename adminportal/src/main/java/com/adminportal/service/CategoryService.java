package com.adminportal.service;

import java.util.List;

import com.adminportal.domain.Category;
import com.adminportal.domain.News;

public interface CategoryService {
	
	Category save(Category category);
	
	List<Category> findAll();
	
	List<Category> findAllActiveByCategory();
	
	Category findOne(Long id);
	
	
	

}
