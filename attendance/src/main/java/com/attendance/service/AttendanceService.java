package com.attendance.service;

import java.time.LocalDate;
import java.util.List;

import com.attendance.dto.AttendanceDto;
import com.attendance.entity.AttendanceEntity;

public interface AttendanceService {
	void saveAttendance(List<AttendanceDto> attendanceList);

	List<AttendanceEntity> getAttendanceByDateAndDept(LocalDate date, String department);

	
	
}
