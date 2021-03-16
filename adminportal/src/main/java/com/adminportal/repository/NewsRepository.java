package com.adminportal.repository;

import org.springframework.data.repository.CrudRepository;

import com.adminportal.domain.News;

public interface NewsRepository extends CrudRepository<News,Long>{

}
