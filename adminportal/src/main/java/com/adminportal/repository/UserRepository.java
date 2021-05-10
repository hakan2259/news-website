package com.adminportal.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.adminportal.domain.Category;
import com.adminportal.domain.User;


public interface UserRepository extends JpaRepository<User, Long>{
	User findByUsername(String username);

	@Query(value="select u from User u where u.roleId = ?1")
	public List<User> findByUserRoleId(int role_id);
	
	@Query(value="select u from User u where u.id = ?1")
	public User findOne(Long id);
	
	
	@Transactional
	@Modifying
	@Query("delete from User n where n.id = ?1")
	void deleteUserById(Long id);
	
	
	
	
	
	

}
