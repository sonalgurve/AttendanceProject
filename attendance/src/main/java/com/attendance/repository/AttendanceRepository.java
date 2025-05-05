package com.attendance.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.attendance.entity.AddEmpEntity;
import com.attendance.entity.AttendanceEntity;

public interface AttendanceRepository extends JpaRepository<AttendanceEntity, Long> {

    boolean existsByEmployeeAndDate(AddEmpEntity employee, LocalDate date);

	@Query("SELECT a FROM AttendanceEntity a JOIN a.employee e WHERE a.date = :date AND e.department = :department")
	List<AttendanceEntity> findByDateAndDepartment(@Param("date") LocalDate date, @Param("department") String department);

}
