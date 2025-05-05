<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<% request.setAttribute("activePage", "attendance"); %>
    <%@ include file="adminheader.jsp" %>
<!doctype html>
<html class="no-js" lang="zxx">

    <style>
    @media(max-width:767px){
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
   .nice-select{
   width: -webkit-fill-available;
   }
   .site-logo {
    min-width: 185px;
    height: auto;
    }

 </style>

    <div class="ltn__utilize-overlay"></div>

    <!-- BREADCRUMB AREA START -->
    <div class="ltn__breadcrumb-area text-left bg-overlay-white-30 bg-image "  data-bg="img/banner.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__breadcrumb-inner">
                        <h1 class="page-title">Attendance</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/Home"><span class="ltn__secondary-color"><i class="fas fa-home"></i></span> Home</a></li>
                                <li>Attendance</li>
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
               <form  class="ltn__form-box " method="post" action="fetchdata" >
                        
                        <div class="row">
                        <div class="col-lg-2 "></div>
                        <div class="col-lg-2 col-md-3">
                        <label>Select Department</label>
                        </div>
                        <div class="col-lg-2 col-md-3 col-6" >
                           <select name="dept" required>
                           <option>----Select----</option>
                           <option value="IT Department" ${param.dept == 'IT Department' ? 'selected' : ''}>IT Department</option>
                           <option value="CSR Department" ${param.dept == 'CSR Department' ? 'selected' : ''}>CSR Department</option>
                           <option value="HR Department" ${param.dept == 'HR Department' ? 'selected' : ''}>HR Department</option>
                           <option value="Data Analytics Department" ${param.dept == 'Data Analytics Department' ? 'selected' : ''}>Data Analytics Department</option>
                           
                           </select>
                           
                          </div>
                        
                        <div class="col-lg-2 col-md-3" >
                        <center><button class="theme-btn-1 btn btn-block" type="submit" style="padding: 5px 23px;width: -webkit-fill-available;">Show</button></center>
                       </div>
                        
                        </div>
                        
                            
                           
                        </form>
                </div>
            </div>
            <br>
            <form method="post" action="/saveattendance">
            <table class="table  table-responsive">
    <thead>
      <tr>
        <th>Sr. No</th>
        <th>Name</th>
        <th>Present</th>
        <th>Absent</th>
        <th>Half Day</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="data" items="${department}" varStatus="status">
      <tr>
        <td>${status.index + 1}</td>        
        <td>${data.name} </td>
        <input type="hidden" name="attendanceList[${status.index}].employeeId" value="${data.id}" />
        <td><label class="custom-radio present"><input type="radio" name="attendanceList[${status.index}].status" value="present" /><span>Present</span></label></td>
          <td><label class="custom-radio absent"><input type="radio" name="attendanceList[${status.index}].status" value="absent" /><span>Absent</span></label></td>
          <td><label class="custom-radio halfday"><input type="radio" name="attendanceList[${status.index}].status" value="halfday" /><span>Halfday</span></label></td>
      
      </tr>
      
      </c:forEach>
      <tr>
      <td colspan="5">   
     <c:if test="${not empty department}">
    <center>
        <button class="theme-btn-1 btn btn-block" type="submit" style="padding: 5px 23px; background-color: green;">Submit</button>
    </center>
</c:if>

      </td>
   
      </tr>
    </tbody>
  </table>
            
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
  <br><br>
    <!-- FOOTER AREA START -->
     <%@ include file="footer.jsp" %>