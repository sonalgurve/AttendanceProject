package com.attendance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.attendance.entity.AddEmpEntity;

public interface AddEmpRepository extends JpaRepository<AddEmpEntity, Long>{

	List<AddEmpEntity> findByDepartment(String department);
	

	
}
