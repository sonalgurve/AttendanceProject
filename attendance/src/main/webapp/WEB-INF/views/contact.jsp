<!doctype html>
<html class="no-js" lang="zxx">

   <% request.setAttribute("activePage", "contact"); %>
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
    <div class="ltn__breadcrumb-area text-left bg-overlay-white-30 bg-image "  data-bg="img/bannerr.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__breadcrumb-inner">
                        <h1 class="page-title">Contact Us</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/Home"><span class="ltn__secondary-color"><i class="fas fa-home"></i></span> Home</a></li>
                                <li>Contact</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->

    <!-- CONTACT ADDRESS AREA START -->
    <div class="ltn__contact-address-area mb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="ltn__contact-address-item ltn__contact-address-item-3 box-shadow">
                        <div class="ltn__contact-address-icon">
                            <img src="img/icons/10.png" alt="Icon Image" style="width: 43px;">
                        </div>
                        <h3>Email Address</h3>
                        <p style="text-align: center;">info@elioratechno.com</p>
                    </div>
                </div>
                  <div class="col-lg-4">
                    <div class="ltn__contact-address-item ltn__contact-address-item-3 box-shadow">
                        <div class="ltn__contact-address-icon">
                            <img src="img/icons/12.png" alt="Icon Image" style="width: 43px;">
                        </div>
                        <h3>Office Address</h3>
                        <p style="text-align: center;">Opposite Bank of Baroda, Ward Number 3, Parsodi, Trimurtee Nagar, Nagpur, Maharashtra 440022</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ltn__contact-address-item ltn__contact-address-item-3 box-shadow">
                        <div class="ltn__contact-address-icon">
                            <img src="img/icons/11.png" alt="Icon Image" style="width: 43px;">
                        </div>
                        <h3>Phone Number</h3>
                        <p style="text-align: center;">+91 8830826434</p>
                    </div>
                </div>
              
            </div>
        </div>
    </div>
    <!-- CONTACT ADDRESS AREA END -->
    
    <!-- CONTACT MESSAGE AREA START -->
    <div class="ltn__contact-message-area mb-120 mb--100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__form-box contact-form-box box-shadow white-bg">
                        <h4 class="title-2">Get In Touch With Us!</h4>
                        <form id="contact-form" action="SaveContact" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-item input-item-name ltn__custom-icon">
                                        <input type="text" name="name" placeholder="Enter your name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-item input-item-email ltn__custom-icon">
                                        <input type="email" name="email" placeholder="Enter email address">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-item input-item-email ltn__custom-icon">
                                        <input type="text" name="subject" placeholder="Enter Subject">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-item input-item-phone ltn__custom-icon">
                                        <input type="text" name="phone" placeholder="Enter phone number">
                                    </div>
                                </div>
                            </div>
                            <div class="input-item input-item-textarea ltn__custom-icon">
                                <textarea name="msg" placeholder="Enter message"></textarea>
                            </div>
                            <div class="btn-wrapper mt-0">
                                <button class="btn theme-btn-1 btn-effect-1 text-uppercase" type="submit">Submit</button>
                            </div>
                            <p class="form-messege mb-0 mt-20"></p>
                        </form>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- CONTACT MESSAGE AREA END -->

    <!-- GOOGLE MAP AREA START -->
    <div class="">
       
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7443.836456961973!2d79.037805!3d21.115826!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd4c105be93e64b%3A0x633455db6ed2def4!2sELIORA%20TECHNOLOGIES%20PRIVATE%20LIMITED!5e0!3m2!1sen!2sin!4v1746040502637!5m2!1sen!2sin" width="100%" height="500px" frameborder="0" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

    </div>
    <!-- GOOGLE MAP AREA END -->
  <% Boolean showPopup = (Boolean) request.getAttribute("showPopup"); %>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    <% if (showPopup != null && showPopup) { %>
        Swal.fire({
            title: 'Success!',
            text: 'Contact saved successfully!',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then(() => {
            window.location.href = "${pageContext.request.contextPath}/ContactUs"; // Replace with correct URL if needed
        });
    <% } %>
</script>

    


    <!-- FOOTER AREA START -->
     <%@ include file="footer.jsp" %>