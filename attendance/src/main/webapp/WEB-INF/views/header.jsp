<!-- Mirrored from tunatheme.com/tf/html/spero-preview/spero/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 30 Apr 2025 06:38:20 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Eliora Technologies Pvt. Ltd.</title>
<meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Place favicon.png in the root directory -->
<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon" />
<!-- Font Icons css -->
<link rel="stylesheet" href="css/font-icons.css">
<!-- plugins css -->
<link rel="stylesheet" href="css/plugins.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive css -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Font Awesome Link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
	integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	<!-- popup  -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
</head>

<body>
	<!--[if lte IE 9]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
    <![endif]-->

	<!-- Add your site or application content here -->

	<!-- Body main wrapper start -->
	<div class="body-wrapper">

		<!-- HEADER AREA START (header-5) -->
		<header
			class="ltn__header-area ltn__header-5 ltn__header-transparent--- gradient-color-4---">
			<!-- ltn__header-top-area start -->
			<div
				class="ltn__header-top-area section-bg-6 top-area-color-white---">
				<div class="container">
					<div class="row">
						<div class="col-md-7">
							<div class="ltn__top-bar-menu">
								<ul>
									<li><a
										href="mailto:info@webmail.com?Subject=Flower%20greetings%20to%20you"><i
											class="icon-mail"></i> info@elioratechno.com </a></li>
									<li><a href="locations.html"><i
											class="icon-placeholder"></i> Trimurti Nagar,Nagpur</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-5">
							<div class="top-bar-right text-right text-end">
								<div class="ltn__top-bar-menu">
									<ul>

										<li>
											<!-- ltn__social-media -->
											<div class="ltn__social-media">
												<ul>
													<li><a href="/img/Attendance Flowchart.pdf"
														target="_blank"><i class="fa-solid fa-eye"></i> View
															Flowchart</a></li>

												</ul>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ltn__header-top-area end -->

			<!-- ltn__header-middle-area start -->
			<div
				class="ltn__header-middle-area ltn__header-sticky ltn__sticky-bg-white ltn__logo-right-menu-option">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="site-logo-wrap">
								<div class="site-logo">
									<a href="${pageContext.request.contextPath}/Home"><img src="img/elioralogo.png"
										alt="Logo" style="width: 150px;"></a>
								</div>

							</div>
						</div>
						<div class="col header-menu-column menu-color-white---">
							<div class="header-menu d-none d-xl-block">
								<nav>
									<div class="ltn__main-menu">
										<ul>
											<%
											String activePage = (String) request.getAttribute("activePage");
											%>
											<li class="<%="home".equals(activePage) ? "active" : ""%>">
												<a href="${pageContext.request.contextPath}/Home">Home</a>
											</li>
											<li class="<%="about".equals(activePage) ? "active" : ""%>">
												<a href="${pageContext.request.contextPath}/AboutUs">About</a>
											</li>
											<li class="<%="service".equals(activePage) ? "active" : ""%>">
												<a href="${pageContext.request.contextPath}/OurServices">Service</a>
											</li>
											<li class="<%="contact".equals(activePage) ? "active" : ""%>">
												<a href="${pageContext.request.contextPath}/ContactUs">Contact</a>
											</li>
										</ul>
									</div>
								</nav>
							</div>
						</div>
						<div class="ltn__header-options ltn__header-options-2 "
							style="display: contents;">
							<!-- header-extra-button -->
							<div class="ltn__header-extra-btn">
								<a href="${pageContext.request.contextPath}/AdminLogin"
									class="btn theme-btn-1 btn-effect-1 d-none d-md-block">Login</a>
							</div>
							<!-- Mobile Menu Button -->
							<div class="mobile-menu-toggle d-xl-none">
								<a href="#ltn__utilize-mobile-menu" class="ltn__utilize-toggle">
									<svg viewBox="0 0 800 600">
                                    <path
											d="M300,220 C300,220 520,220 540,220 C740,220 640,540 520,420 C440,340 300,200 300,200"
											id="top"></path>
                                    <path d="M300,320 L540,320"
											id="middle"></path>
                                    <path
											d="M300,210 C300,210 520,210 540,210 C740,210 640,530 520,410 C440,330 300,190 300,190"
											id="bottom"
											transform="translate(480, 320) scale(1, -1) translate(-480, -318) "></path>
                                </svg>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ltn__header-middle-area end -->
		</header>
		<!-- HEADER AREA END -->

		<!-- Utilize Mobile Menu Start -->
		<div id="ltn__utilize-mobile-menu"
			class="ltn__utilize ltn__utilize-mobile-menu">
			<div class="ltn__utilize-menu-inner ltn__scrollbar">
				<div class="ltn__utilize-menu-head">
					<div class="site-logo">
						<a href="index.html"><img src="img/elioralogo.png" alt="Logo"
							style="width: 150px;"></a>
					</div>
					<button class="ltn__utilize-close">
						<i class="fa-solid fa-circle-xmark"></i>
					</button>
				</div>
				<div class="ltn__utilize-menu">
					<ul>
						<li class="<%="home".equals(activePage) ? "active" : ""%>">
												<a href="${pageContext.request.contextPath}/Home">Home</a>
											</li>
											<li class="<%="about".equals(activePage) ? "active" : ""%>">
												<a href="${pageContext.request.contextPath}/AboutUs">About</a>
											</li>
											<li class="<%="service".equals(activePage) ? "active" : ""%>">
												<a href="${pageContext.request.contextPath}/OurServices">Service</a>
											</li>
											<li class="<%="contact".equals(activePage) ? "active" : ""%>">
												<a href="${pageContext.request.contextPath}/ContactUs">Contact</a>
											</li>

					</ul>
				</div>


			</div>
		</div>
		<!-- Utilize Mobile Menu End -->