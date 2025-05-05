<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
     <% request.setAttribute("activePage", "add_emp"); %>
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
  .nice-select {
    padding: 0 50% !important;
    }
  .site-logo {
    height: auto;
    }
   .ltn__breadcrumb-area {
    margin-bottom: 55px;    
   }
   .ltn__contact-address-item-3 {
    padding: 20px 10px 10px;
   }
  div:where(.swal2-container).swal2-top, div:where(.swal2-container).swal2-center, div:where(.swal2-container).swal2-bottom {
    z-index: 111111;
    grid-template-columns: auto minmax(0, 1fr) auto;
}

div:where(.swal2-container) .swal2-select {
    display: none;
  }
  
 </style>

    <div class="ltn__utilize-overlay"></div>

    <!-- BREADCRUMB AREA START -->
    <div class="ltn__breadcrumb-area text-left bg-overlay-white-30 bg-image "  data-bg="img/banner.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__breadcrumb-inner">
                        <h1 class="page-title">Add Employee</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/Home"><span class="ltn__secondary-color"><i class="fas fa-home"></i></span> Home</a></li>
                                <li>Add Employee</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->

    <!-- LOGIN AREA START -->
    <div class="ltn__login-area ">
        <div class="container">
          
            <div class="row">
            <div class="col-lg-2 col-md-2"></div>
                <div class="col-lg-8" style="background: #f8f8f8;">
                    <div class="account-login-inner">
                        <form method="post" action="saveempdata"  class="ltn__form-box contact-form-box">
                        
                        <div class="row">
                        <div class="col-lg-4 col-md-4">
                        <label>Name</label>
                            <input type="text" name="name" placeholder="Full Name" required>
                        </div>
                         <div class="col-lg-4 col-md-4">
                        <label>Email Id</label>
                            <input type="email" name="email" placeholder="Email Id" required>
                        </div>
                         <div class="col-lg-4 col-md-4">
                        <label>Phone No.</label>
                            <input type="text" name="phone" placeholder="Phone No." required>
                        </div>
                         <div class="col-lg-4 col-md-4">
                          <label>DOB</label>
                            <input type="date" name="dob" placeholder="DOB" required>
                        </div>
                        <div class="col-lg-4 col-md-4">
                          <label>Joining Date</label>
                            <input type="date" name="jdate" placeholder="Joining Date" required>
                        </div>
                        <div class="col-lg-4 col-md-4">
                          <label>Experience</label>
                            <input type="text" name="exp" placeholder="Experience" required>
                        </div>
                         <div class="col-lg-4 col-md-4">
                          <label style="display: block;">Department</label>
                          <select name="department" required>
                           <option value="IT Department">IT Department</option>
                           <option value="CSR Department">CSR Department</option>
                           <option value="HR Department">HR Department</option>
                           <option value="Data Analytics Department">Data Analytics Department</option>
                           
                           </select>
                        </div>
                        </div>                       
                        
                        
                            
                            
                            <div class="btn-wrapper mt-3">
                             <a href=""><center><button class="theme-btn-1 btn btn-block" type="submit" style="padding: 7px 47px;">Add</button></center></a>
                            </div>
                          
                        </form>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <!-- LOGIN AREA END -->
    <br>
    <!-- Table start-->
        <div class=" ">
        <div class="container" style="width: -webkit-fill-available;overflow: overlay;">
         
            <table class="table  table-responsive" >
    <thead>
      <tr>
        <th>Sr. No</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone No</th>
        <th>Date Of Birth</th>
        <th>Joining Date</th>
        <th>Experience</th>
        <th>Department</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach var="empdatas" items="${empdata}" varStatus="status">
      <tr>
        <td>${status.index + 1}</td>
        <td>${empdatas.name}</td>
         <td>${empdatas.email}</td>
          <td>${empdatas.phone}</td>
           <td>${empdatas.dob}</td>
            <td>${empdatas.jdate}</td>
             <td>${empdatas.exp}</td>
             <td>${empdatas.department}</td>
             <td><a href="delete-registration?deleteid=${empdatas.id}" class="theme-btn-1 btn btn-block" style="padding: 3px 17px;background: #df1515;" >Delete</a></td>	
      </tr>
      </c:forEach>
    </tbody>
  </table>
            
                        
            </div>
        </div>
    </div>
    <!-- Table end -->
    
 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>   
     <% Boolean showPopup = (Boolean) request.getAttribute("showPopup"); %>
<script>
    <% if (showPopup != null && showPopup) { %>
        Swal.fire({
            title: 'Success!',
            text: 'Employee Add successfully!',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then(() => {
            window.location.href = "${pageContext.request.contextPath}/Add_Employee"; // Replace with correct URL if needed
        });
    <% } %>
</script>

<% Boolean showDeletePopup = (Boolean) request.getAttribute("showDeletePopup"); %>
<script>
    <% if (showDeletePopup != null && showDeletePopup) { %>
        Swal.fire({
            title: 'Success!',
            text: 'Employee Deleted successfully!',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then(() => {
            window.location.href = "${pageContext.request.contextPath}/Add_Employee"; // Replace with correct URL if needed
        });
    <% } %>
</script>
     <% Boolean login = (Boolean) request.getAttribute("login"); %>
 <script>
    <% if (login != null && login) { %>
        Swal.fire({
            title: 'Success!',
            text: 'login successfully!',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then(() => {
            window.location.href = "${pageContext.request.contextPath}/Add_Employee"; // Replace with correct URL if needed
        });
    <% } %>
</script>
  <br><br>
    <!-- FOOTER AREA START -->
     <%@ include file="footer.jsp" %>