<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<% request.setAttribute("activePage", "contactdata"); %>
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
                        <h1 class="page-title">Show Contact Data</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/Home"><span class="ltn__secondary-color"><i class="fas fa-home"></i></span> Home</a></li>
                                <li>Show Contact Data</li>
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
        <div class="container" style="width: -webkit-fill-available;overflow: overlay;">
         
            <table class="table  table-responsive" >
    <thead>
      <tr>
        <th>Sr. No</th>
        <th>Name</th>
        <th>Email Id</th>
        <th>Subject</th>
        <th>Phone No</th>
        <th>Message</th>
      </tr>
    </thead>
    <tbody>
   

    <c:forEach var="data" items="${cData}"  varStatus="status"  >
      <tr>
        <td>${status.index + 1}</td>
        <td>${data.name}</td>
        <td>${data.email}</td>
        <td>${data.phone}</td>
        <td>${data.subject}</td>
        <td>${data.msg}</td>
      </tr>
      </c:forEach>
      
    </tbody>
  </table>
            
                        
            </div>
        </div>
    </div>
    <!-- LOGIN AREA END -->

  <br><br>
    <!-- FOOTER AREA START -->
     <%@ include file="footer.jsp" %>