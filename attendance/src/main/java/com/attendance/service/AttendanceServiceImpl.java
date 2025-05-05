package com.attendance.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.attendance.dto.AttendanceDto;
import com.attendance.entity.AddEmpEntity;
import com.attendance.entity.AttendanceEntity;
import com.attendance.repository.AddEmpRepository;
import com.attendance.repository.AttendanceRepository;

@Service
public class AttendanceServiceImpl implements AttendanceService {
	@Autowired
    private AttendanceRepository attendanceRepo;

    @Autowired
    private AddEmpRepository addEmpRepo;

	@Override
	public void saveAttendance(List<AttendanceDto> attendanceList) {
        LocalDate today = LocalDate.now();

        for (AttendanceDto dto : attendanceList) {
            Optional<AddEmpEntity> empOpt = addEmpRepo.findById(dto.getEmployeeId());
            if (empOpt.isPresent()) {
                AddEmpEntity emp = empOpt.get();

                boolean alreadyMarked = attendanceRepo.existsByEmployeeAndDate(emp, today);
                if (!alreadyMarked) {
                    AttendanceEntity att = new AttendanceEntity();
                    att.setEmployee(emp);
                    att.setStatus(dto.getStatus());
                    att.setDate(today);
                    attendanceRepo.save(att);
                }
            }
        }
		
	}

	@Override
	public List<AttendanceEntity> getAttendanceByDateAndDept(LocalDate date, String department) {
		
		return attendanceRepo.findByDateAndDepartment(date, department);
	}
	
	


}
