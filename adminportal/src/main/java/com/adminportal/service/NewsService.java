package com.adminportal.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.adminportal.domain.Category;
import com.adminportal.domain.News;



public interface NewsService {
	
	void saveNewsToDB(MultipartFile file,String title,String author,String publicationDate,
			String category,boolean active,String description
			);
	
	List<News> findAll();
	
	
	
	
	

}
