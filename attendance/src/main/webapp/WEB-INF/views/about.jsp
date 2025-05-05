<!doctype html>
<html class="no-js" lang="zxx">
 <% request.setAttribute("activePage", "about"); %>
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

 </style>

    <div class="ltn__utilize-overlay"></div>

    <!-- BREADCRUMB AREA START -->
    <div class="ltn__breadcrumb-area text-left bg-overlay-white-30 bg-image "  data-bg="img/bannerr.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__breadcrumb-inner">
                        <h1 class="page-title">About Us</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/Home"><span class="ltn__secondary-color"><i class="fas fa-home"></i></span> Home</a></li>
                                <li>About Us</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->

    <!-- ABOUT US AREA START -->
    <div class="ltn__about-us-area pt-120--- pb-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="about-us-img-wrap about-img-left">
                        <div class="ltn__video-img ltn__video-img-before-none ltn__animation-pulse2">
                            <img src="img/abt.png" alt="video popup bg image">
                            <a class="ltn__video-icon-2 ltn__video-icon-2-border--- border-radius-no ltn__secondary-bg" href="https://www.youtube.com/embed/X7R-q9rsrtU?autoplay=1&amp;showinfo=0"  data-rel="lightcase:myCollection">
                                <i class="fa fa-play"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
                    <div class="about-us-info-wrap">
                        <div class="section-title-area ltn__section-title-2">
                            <h6 class="section-subtitle ltn__secondary-color"><span><i class="fas fa-square-full"></i></span> Let's get Started</h6>
                            <h1 class="section-title">Your Technology Partner in a Digital World!</h1>
                        </div>
                        <p>At Eliora, we are dedicated to providing exceptional services that cater to the needs of our valued customers. We actively drive our company with a shared vision to make a positive impact on people's lives. At Eliora, we believe that every individual deserves to live a fulfilling and enriched life, and we strive to make that possible through our innovative products and services. We have been committed to delivering excellence and innovation in everything we do.</p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ABOUT US AREA END -->

    <!-- CALL TO ACTION START (call-to-action-4) -->
    <div class="ltn__call-to-action-area ltn__call-to-action-4 bg-image" style="background:#32335c">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="call-to-action-inner call-to-action-inner-4 text-center--- pt-120 pb-120">
                        <div class="section-title-area ltn__section-title-2">
                            <h6 class="section-subtitle ltn__secondary-color"><a href="tel:+91 8830826434">+91 8830826434/call</a></h6>
                            <h1 class="section-title white-color">Start a Conversation<br> With Us Today</h1>
                        </div>
                        <div class="btn-wrapper">
                            <a href="${pageContext.request.contextPath}/ContactUs" class="theme-btn-1 btn btn-effect-1">Contact Us</a>
                        </div>
                    </div>
                    <div class="ltn__call-to-4-img-2">
                        <img src="img/girl.png" alt="#">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- CALL TO ACTION END -->

    <!-- FEATURE START -->
    <div class="ltn__feature-area section-bg-1--- pt-120 pb-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title-area ltn__section-title-2 text-center">
                        <h6 class="section-subtitle ltn__secondary-color"><span><i class="fas fa-square-full"></i></span> Future-Focused Growth</h6>
                        <h1 class="section-title">To lead with impact and inspire change</h1>
                    </div>
                </div>
            </div>
            <div class="row align-self-center">
            <div class="col-lg-2"></div>
                <div class="col-lg-4 col-sm-6">                            
                    <div class="ltn__feature-item ltn__feature-item-6 box-shadow-1">
                        <div class="ltn__feature-icon">
                            <span><i class="fa-solid fa-square-check"></i></span>
                        </div>
                        <div class="ltn__feature-info">
                            <h3>Our Mission</h3>
                            <p>Eliora is a passionate and result-oriented IT firm based in India. From delivering creative, eye-catching website design to executing complex algorithms, we are all ready to jump within your imagination box and resolve your needs.</p>
                        <br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">                            
                    <div class="ltn__feature-item ltn__feature-item-6 box-shadow-1">
                        <div class="ltn__feature-icon">
                            <span><i class="fa-solid fa-square-check"></i></span>
                        </div>
                        <div class="ltn__feature-info">
                            <h3>Our Vision</h3>
                            <p>Our vision statement is to go along with our happy customers for a rewarding career and growth. We do our best to align every prospect with your business values and goals. We are dealing with adventure every day, and the same leads us to ultimate success.</p>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- FEATURE END -->


    <!-- FOOTER AREA START -->
    <%@ include file="footer.jsp" %>