package com.newswebsite.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.newswebsite.domain.News;


public interface HomeRepository extends JpaRepository<News, Long> {
	
	@Query(value="select * from news where active = 1 order by id desc limit 0,6",nativeQuery = true)
	public List<News> findLast6ByNews();
	
	
	@Query(value="select * from news where active = 1 order by id desc limit 6,2",nativeQuery = true)
	public List<News> StartAt6Find2News();
	
	
	
	
	
	
	
	

}
