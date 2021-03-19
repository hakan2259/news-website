package com.newswebsite.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newswebsite.domain.News;
import com.newswebsite.repository.HomeRepository;
import com.newswebsite.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeRepository homeRepository;
	
	@Override
	public List<News> findLast6ByNews() {
		
		return homeRepository.findLast6ByNews();
	}

	
}
