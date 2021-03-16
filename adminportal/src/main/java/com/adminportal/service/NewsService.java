package com.adminportal.service;

import java.util.List;

import com.adminportal.domain.News;



public interface NewsService {
	
	News save(News news);
	
	List<News> findAll();
	
	

}
