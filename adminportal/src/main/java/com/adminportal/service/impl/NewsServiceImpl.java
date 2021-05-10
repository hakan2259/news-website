package com.adminportal.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.adminportal.domain.News;

import com.adminportal.repository.NewsRepository;
import com.adminportal.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService{

	@Autowired
	private NewsRepository newsRepository;
	
	
	

	

	@Override
	public List<News> findAll() {
		
		return (List<News>) newsRepository.findAll();
		
	}

	@Override
	public News findOne(Long id) {
		
		return newsRepository.findOne(id);
	}

	@Override
	public News save(News news) {
		// TODO Auto-generated method stub
		return newsRepository.save(news);
	}

	

	



	



	
	

}
