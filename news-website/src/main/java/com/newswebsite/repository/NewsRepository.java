package com.newswebsite.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.newswebsite.domain.News;


public interface NewsRepository extends JpaRepository<News, Long> {
	

	
	@Query(value="select n from News n where n.id = ?1")
	public News findOne(Long id);
	
	@Query(value="select * from News n where n.category = ?1 and n.news_type='Normal'",nativeQuery = true)
	public List<News> findNewsByCategoryName(String name);
	
	@Query(value="select * from News n where n.news_type='Vip News'",nativeQuery = true)
	public List<News> findAllVipNews(String name);
	
	

}
