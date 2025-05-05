package com.attendance.dto;

import java.util.List;

public class AttendanceForm {

    private List<AttendanceDto> attendanceList;

    public List<AttendanceDto> getAttendanceList() {
        return attendanceList;
    }

    public void setAttendanceList(List<AttendanceDto> attendanceList) {
        this.attendanceList = attendanceList;
    }
}
