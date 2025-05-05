package com.attendance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.attendance.entity.UsersEntity;

@Repository
public interface UsersRepository extends JpaRepository<UsersEntity, Long>{

	UsersEntity findByEmailAndPassword(String email, String password);
	
	

}
