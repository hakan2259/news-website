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

	@Override
	public List<News> StartAt6Find2News() {
		
		return homeRepository.StartAt6Find2News();
	}

	@Override
	public List<News> StartAt8Find6News() {
		
		return homeRepository.StartAt8Find6News();
	}

	@Override
	public List<News> StartAt14Find10News() {
	
		return homeRepository.StartAt14Find10News();
	}

	
}
