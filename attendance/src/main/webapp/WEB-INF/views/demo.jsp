<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance View</title>
</head>
<body>

${attendanceList}

    <form method="post" action="empshow">
        <label>Date:</label>
        <input type="date" name="date" required>

        <label>Department------:</label>
        <select name="dept" required>
            <option value="IT Department">IT Department</option>
            <option value="CSR Department">CSR Department</option>
            <option value="HR Department">HR Department</option>
            <option value="Data Analytics Department">Data Analytics Department</option>
        </select>

        <input type="submit" value="Submit">
    </form>

    <c:if test="${not empty attendanceList}">
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Department</th>
                <th>Status</th>
            </tr>
            <c:forEach var="att" items="${attendanceList}">
                <tr>
                    <!-- Access employee details via 'att.employee' -->
                    <td>${att.employee.name}</td> <!-- Assuming 'name' is a field in AddEmpEntity -->
                    <td>${att.employee.department}</td> <!-- Accessing the department from 'employee' -->
                    <td>${att.status}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

</body>
</html>
