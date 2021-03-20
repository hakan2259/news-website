package com.newswebsite.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.newswebsite.domain.News;


public interface HomeRepository extends JpaRepository<News, Long> {
	
	@Query(value="select * from news where active = 1 and news_type = 'Normal' order by id desc limit 0,6",nativeQuery = true)
	public List<News> findLast6ByNews();
	
	
	@Query(value="select * from news where active = 1 and news_type = 'Normal' order by id desc limit 6,2",nativeQuery = true)
	public List<News> StartAt6Find2News();
	
	
	@Query(value="select * from news where active = 1 and news_type = 'Normal' order by id desc limit 8,6",nativeQuery = true)
	public List<News> StartAt8Find6News();
	
	
	@Query(value="select * from news where active = 1 and news_type = 'Normal' order by id desc limit 14,10",nativeQuery = true)
	public List<News> StartAt14Find10News();
	
	@Query(value="select * from news where active = 1 and news_type = 'Editor Picks' order by id desc limit 0,8",nativeQuery = true)
	public List<News> findEditorPicksLast8ByNews();
	
	
	
	
	
	
	
	

}
