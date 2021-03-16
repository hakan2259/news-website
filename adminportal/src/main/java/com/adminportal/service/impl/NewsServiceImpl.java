package com.adminportal.service.impl;

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
	public News save(News news) {
		
		return newsRepository.save(news);
		
	}
	
	

}
