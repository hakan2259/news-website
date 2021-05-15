package com.newswebsite.service.impl;






import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newswebsite.domain.News;
import com.newswebsite.repository.NewsRepository;
import com.newswebsite.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {
	
	@Autowired
	private NewsRepository newsRepository;

	@Override
	public News findOne(Long id) {
	
		return newsRepository.findOne(id);
	}

	@Override
	public List<News> findNewsByCategoryName(String name) {
		
		return newsRepository.findNewsByCategoryName(name);
	}

	@Override
	public List<News> findAllVipNews(String name) {
		return newsRepository.findAllVipNews(name);
	}
	
	public List<News> blurrySearch(String title){
		List<News> newsList = newsRepository.findByTitleContaining(title);
		List<News> activeNewsList = new ArrayList<>();
		
		for(News news : newsList) {
			if(news.isActive()) {
				activeNewsList.add(news);
			}
			
		}
		return activeNewsList;
		
	}

	

	
	

	

	

	
}
