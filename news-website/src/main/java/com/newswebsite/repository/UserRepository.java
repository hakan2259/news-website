package com.newswebsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.newswebsite.domain.User;



public interface UserRepository extends JpaRepository<User, Long>{
	User findByUsername(String username);
	User findByEmail(String email);


	@Query(value = "select u from User u where u.id = ?1")
	User findOne(Long id);
	
}
