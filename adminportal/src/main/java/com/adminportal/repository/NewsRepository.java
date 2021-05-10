package com.adminportal.repository;



import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.adminportal.domain.News;

public interface NewsRepository extends JpaRepository<News,Long>{
	
	@Query(value="select n from News n where n.id = ?1")
	public News findOne(Long id);
	
	@Transactional
	@Modifying
	@Query("delete from News n where n.id = ?1")
	void deleteNewsById(Long id);
	
	

}
