package com.adminportal.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.adminportal.domain.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {
	@Transactional
	@Modifying
	@Query("delete from Contact n where n.id = ?1")
	void deleteContactById(Long id);
}
