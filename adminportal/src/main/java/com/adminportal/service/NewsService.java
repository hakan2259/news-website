package com.adminportal.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.adminportal.domain.Category;
import com.adminportal.domain.News;



public interface NewsService {
	
	News save(News news);
	
	List<News> findAll();
	
	News findOne(Long id);
	
	
	
	
	
	
	

}
