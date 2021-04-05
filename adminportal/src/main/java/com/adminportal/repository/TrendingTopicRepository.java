package com.adminportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.adminportal.domain.TrendingTopic;





public interface TrendingTopicRepository extends JpaRepository<TrendingTopic, Long> {

	@Query(value="select t from TrendingTopic t where t.id = ?1")
	public TrendingTopic findOne(Long id);
}
