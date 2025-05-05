<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setAttribute("activePage", "emp_data"); %>
<%@ include file="adminheader.jsp"%>
<!doctype html>
<html class="no-js" lang="zxx">

<style>
@media ( max-width :767px) {
	.ltn__breadcrumb-area {
		padding-top: 60px;
		padding-bottom: 60px;
		margin-bottom: 55px;
	}
}

.ltn__breadcrumb-area {
	margin-bottom: 55px;
}

.ltn__contact-address-item-3 {
	padding: 20px 10px 10px;
}

.nice-select {
	width: -webkit-fill-available;
}

.site-logo {
	min-width: 185px;
	height: auto;
}
.printshow{
display:none;
}

@media print{
 .ltn__breadcrumb-area{
 display:none !important;
 }
 .printshow{
display:block !important;
}
 footer, header, form{
 display:none !important;
 }
   
}

</style>

<div class="ltn__utilize-overlay"></div>

<!-- BREADCRUMB AREA START -->
<div
	class="ltn__breadcrumb-area text-left bg-overlay-white-30 bg-image "
	data-bg="img/banner.png">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="ltn__breadcrumb-inner">
					<h1 class="page-title">Show List of Attendance</h1>
					<div class="ltn__breadcrumb-list">
						<ul>
							<li><a href="${pageContext.request.contextPath}/Home"><span
									class="ltn__secondary-color"><i class="fas fa-home"></i></span>
									Home</a></li>
							<li>Show List of Attendance</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- BREADCRUMB AREA END -->

<!-- LOGIN AREA START -->
<div class=" ">
	<div class="container">

		<div class="row">
			<div class="col-lg-12 col-md-12">
				<form class="ltn__form-box " method="post" action="empshow">

					<div class="row">
						<div class="col-lg-2 col-md-3">
							<label>Select Department</label>
						</div>
						<div class="col-lg-2 col-md-3 col-6">
							<select name="dept" required>
								<option>----Select----</option>
								<option value="IT Department"
									${param.dept == 'IT Department' ? 'selected' : ''}>IT
									Department</option>
								<option value="CSR Department"
									${param.dept == 'CSR Department' ? 'selected' : ''}>CSR
									Department</option>
								<option value="HR Department"
									${param.dept == 'HR Department' ? 'selected' : ''}>HR
									Department</option>
								<option value="Data Analytics Department"
									${param.dept == 'Data Analytics Department' ? 'selected' : ''}>Data
									Analytics Dept</option>

							</select>

						</div>
						<div class="col-lg-1 col-md-3">
							<label>Date:</label>
						</div>
						<div class="col-lg-2 col-md-3">
							<input type="date" name="date" required style="height: 38px">
						</div>


						<div class="col-lg-2 col-md-3">
							<center>
								<button class="theme-btn-1 btn btn-block" type="submit" style="padding: 5px 23px; width: -webkit-fill-available;">Show</button>
							</center>
						</div>
						<div class="col-lg-2 col-md-3">
							<center>
								<button class="theme-btn-1 btn btn-block" id="printButton" type="button"style="padding: 5px 23px; width: -webkit-fill-available;background:green !important">Print</button>
							</center>
						</div>

					</div>



				</form>
			</div>
		</div>
		<br>
		
		<div class="printshow">
		<center>
		<h1 style="font-size: 23px;width: -webkit-fill-available;color: #ff5e15;">Show List Of Employee</h1>
		</center>
		</div>
		<c:if test="${not empty attendanceList}">
			<table class="table  table-responsive">
				<thead>
					<tr>
						<th>Sr. No</th>
						<th>Name</th>
						<th>DOB</th>
						<th>Email</th>
						<th>Experince</th>
						<th>Joining Date</th>
						<th>Department</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="att" items="${attendanceList}" varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
							<td>${att.employee.name}</td>
							<!-- Assuming 'name' is a field in AddEmpEntity -->
							<td>${att.employee.name}</td>
							<td>${att.employee.dob}</td>
							<td>${att.employee.email}</td>
							<td>${att.employee.jdate}</td>
							<td>${att.employee.department}</td>
							<!-- Accessing the department from 'employee' -->
							<td>${att.status}</td>
						</tr>

					</c:forEach>
					<c:if test="${not empty department}">

					</c:if>

					</td>

					</tr>
				</tbody>
			</table>
		</c:if>
		</form>
	</div>
</div>
</div>
<!-- LOGIN AREA END -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<% Boolean showPopup = (Boolean) request.getAttribute("showPopup"); %>
<script>
    <% if (showPopup != null && showPopup) { %>
        Swal.fire({
            title: 'Success!',
            text: 'Attendance Add successfully!',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then(() => {
            window.location.href = "${pageContext.request.contextPath}/Attendance"; // Replace with correct URL if needed
        });
    <% } %>
</script>

<script>
  document.getElementById("printButton").addEventListener("click", function() {
    window.print();
  });
</script>
<br>
<br>
<!-- FOOTER AREA START -->
<%@ include file="footer.jsp"%>