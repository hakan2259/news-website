package com.newswebsite.service;

import java.util.List;

import com.newswebsite.domain.News;

public interface HomeService {
	
	List<News> findLast6ByNews();
	
	List<News> StartAt6Find2News();
	
	List<News> StartAt8Find6News();
	
	List<News> StartAt14Find10News();
	
	
	
	

}
