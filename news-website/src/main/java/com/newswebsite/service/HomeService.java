package com.newswebsite.service;

import java.util.List;

import com.newswebsite.domain.News;

public interface HomeService {
	
	List<News> findLast6ByNews();
	

}
