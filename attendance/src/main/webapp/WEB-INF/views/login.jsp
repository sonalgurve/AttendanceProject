<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">

    <%@ include file="header.jsp" %>
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

 </style>

    <div class="ltn__utilize-overlay"></div>

    <!-- BREADCRUMB AREA START -->
    <div class="ltn__breadcrumb-area text-left bg-overlay-white-30 bg-image "  data-bg="img/banner.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__breadcrumb-inner">
                        <h1 class="page-title">Admin Login</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/Home"><span class="ltn__secondary-color"><i class="fas fa-home"></i></span> Home</a></li>
                                <li>Login</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->
${login}

    <!-- LOGIN AREA START -->
    <div class="ltn__login-area ">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title-area text-center">
                        <h1 class="section-title">Sign In To Your Panel</h1>
                   
                    </div>
                </div>
            </div>
            <div class="row">
            <div class="col-lg-3 col-md-3"></div>
                <div class="col-lg-6" style="background: #f8f8f8;">
                    <div class="account-login-inner">
                        <form action="login" method="post" class="ltn__form-box contact-form-box">
                            <input type="email" name="email" placeholder="Email*">
                            <input type="password" name="password" placeholder="Password*">
                            <div class="btn-wrapper mt-0">
                          <center><button class="theme-btn-1 btn btn-block" type="submit">SIGN IN</button></center>
                            </div>
                          
                        </form>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <!-- LOGIN AREA END -->

<c:if test="${not empty error}">
   <center> <div style="color:red;">${error}</div></center>
</c:if>


  <br><br>
    <!-- FOOTER AREA START -->
     <%@ include file="footer.jsp" %>