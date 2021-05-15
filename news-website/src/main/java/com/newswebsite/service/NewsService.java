package com.newswebsite.service;



import java.util.List;

import com.newswebsite.domain.News;

public interface NewsService {
	
	News findOne(Long id);
	
	List<News> findNewsByCategoryName(String name);
	
	List<News> findAllVipNews(String name);
	
	List<News> blurrySearch(String title);
	
	
	
	
	
	

}
