<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>FAQ</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.png">
		
		<!-- all css here -->
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/animate.css">
        <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="resources/css/chosen.min.css">
        <link rel="stylesheet" href="resources/css/meanmenu.min.css">
        <link rel="stylesheet" href="resources/css/themify-icons.css">
        <link rel="stylesheet" href="resources/css/ionicons.min.css">
        <link rel="stylesheet" href="resources/css/bundle.css">
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/css/responsive.css">
        <script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
        <%@ include file="../header.jsp" %>
        <style>
		select {font-size:13pt}
		.text-center h2{font-weight:900}
		.pt-130 {padding-top:30px !important}
		.pt-120{padding-top:50px !important}
		.breadcrumb-content{padding-top:0;margin-top:1em}
		.breadcrumb-content ul > li{font-size:13pt}
		#showlogin{font-size:13pt}
        </style>
    </head>
    <body>
        <div class="wrapper">
            <!-- header start -->
            <div class="header-height"></div>
            
            <!-- main-search start -->
		<div class="main-search-active">
			<div class="sidebar-search-icon">
				<button class="search-close">
					<span class="ti-close"></span>
				</button>
			</div>
			<div class="sidebar-search-input">
				<form>
					<div class="form-search">
						<input id="search" class="input-text" value=""
							placeholder="Search Entire Store" type="search">
						<button>
							<i class="ti-search"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
		   <div class="breadcrumb-area mt-37 hm-4-padding">
                <div class="container-fluid">
                    <div class="breadcrumb-content text-center">
                        <h2>FAQ</h2>
                        <ul>
                            <li>자주 묻는 질문</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="checkout-area pt-130 hm-3-padding pb-100">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="coupon-accordion">
                            
                                <!-- ACCORDION START (5) -->
                                <h3><span id="showlogin" class="faq5">전문가 이름 앞에 붙은 단어는 무슨 뜻인가요?</span></h3>
                                <div id="checkout-login" class="coupon-content faq-content5">
                                    <div class="coupon-info">
                                        <p class="coupon-text">
                                        저희 이음은 사용자들에 대한 만족도와 신뢰도를 높이기 위해 전문가들의 경력과 예약 건수, 평점을 통해 전문가들의 등급이 나누어져 있습니다.
                                        </p>
                                    </div>
                                </div>
                                <!-- ACCORDION END -->
                                
                                <!-- ACCORDION START (4) -->
                                <h3><span id="showlogin" class="faq4">남성은 이음에 가입할 수 없나요?</span></h3>
                                <div id="checkout-login" class="coupon-content faq-content4">
                                    <div class="coupon-info">
                                        <p class="coupon-text">
                                        이음은 여성 사용자 뿐만 아니라 여성 전문가들만 가입할 수 있는 사이트입니다.
                                        </p>
                                    </div>
                                </div>
                                <!-- ACCORDION END -->	
                               
                                <!-- ACCORDION START (3) -->
                                <h3><span id="showlogin" class="faq3">제 지역에서만 활동하는 전문가만 볼 수 있나요?</span></h3>
                                <div id="checkout-login" class="coupon-content faq-content3">
                                    <div class="coupon-info">
                                        <p class="coupon-text">
                                        이음에 등록된 모든 전문가를 보실 수 있습니다. <br>
                                       	다만, 전문가마다 활동하는 지역이 다르기에 사용자의 지역에서 활동하는 전문가에게서만 서비스를 받으실 수는 있습니다.
                                       	</p>
                                    </div>
                                </div>
                                <!-- ACCORDION END -->	
                                
                                <!-- ACCORDION START (2) -->
                                <h3><span id="showlogin" class="faq2">서비스 후, 추가된 결제 금액은 어떻게 결제하나요?</span></h3>
                                <div id="checkout-login" class="coupon-content faq-content2">
                                    <div class="coupon-info">
                                        <p class="coupon-text">추가 금액의 경우, </p>
                                    </div>
                                </div>
                                <!-- ACCORDION END -->	
                               
                                <!-- ACCORDION START (1) -->
                                <h3><span id="showlogin" class="faq1">원데이 클래스 결제는 언제까지 해야하나요?</span></h3>
                                <div id="checkout-login" class="coupon-content faq-content1">
                                    <div class="coupon-info">
                                        <p class="coupon-text">원데이 클래스는 신청한 금일 이내에 결제하셔야 하며, 미결제시 자동으로 취소됩니다.</p>
                                    </div>
                                </div>
                                <!-- ACCORDION END -->	
                            
							</div>
						</div>
					</div>
				</div>


			<footer class="hm-4-padding">
				<div class="container-fluid">
					<div class="footer-top pt-125 pb-25">
						<div class="row">
							<div class="col-lg-3 col-md-5">
								<div class="footer-widget mb-30">
									<div class="footer-widget-title">
										<h3>Get in Touch</h3>
									</div>
									<div class="food-info-wrapper">
										<div class="food-address">
											<div class="food-info-icon">
												<i class="ion-ios-home-outline"></i>
											</div>
											<div class="food-info-content">
												<p>
													2020 Willshire Glen, Out of <br>Alpharetta, GA-30009
												</p>
											</div>
										</div>
										<div class="food-address">
											<div class="food-info-icon">
												<i class="ion-ios-telephone-outline"></i>
											</div>
											<div class="food-info-content">
												<p>(+00) 121 025 0214</p>
											</div>
										</div>
										<div class="food-address">
											<div class="food-info-icon">
												<i class="ion-ios-email-outline"></i>
											</div>
											<div class="food-info-content">
												<p>
													<a href="#">info@example.com</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-2 col-md-4">
								<div class="footer-widget mb-30 pl-10">
									<div class="footer-widget-title">
										<h3>Information</h3>
									</div>
									<div class="food-widget-content">
										<ul class="quick-link">
											<li><a href="#">Delivery</a></li>
											<li><a href="#">Legal Notice</a></li>
											<li><a href="#">Terms & Conditions</a></li>
											<li><a href="about-us.html">About Us</a></li>
											<li><a href="#">Secure Payment</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-2 col-md-3">
								<div class="footer-widget mb-30 pl-100">
									<div class="footer-widget-title">
										<h3>accounts</h3>
									</div>
									<div class="food-widget-content">
										<ul class="quick-link">
											<li><a href="login-register.html">Sign In</a></li>
											<li><a href="cart.html">View Cart</a></li>
											<li><a href="wishlist.html">My Wishlist</a></li>
											<li><a href="#">Track My Order</a></li>
											<li><a href="#">Help</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-2 col-md-6">
								<div class="footer-widget mb-30 pl-125">
									<div class="footer-widget-title">
										<h3>support</h3>
									</div>
									<div class="food-widget-content">
										<ul class="quick-link">
											<li><a href="contact.html">Hello & Contact</a></li>
											<li><a href="#">Shipping & Tax</a></li>
											<li><a href="#">Return Policy</a></li>
											<li><a href="#">Affiliates</a></li>
											<li><a href="#">Legal Notice</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="footer-widget mb-30 f-right">
									<div class="footer-widget-title">
										<h3>twitter feed</h3>
									</div>
									<div class="twitter-info-wrapper">
										<div class="single-twitter">
											<div class="twitter-icon">
												<i class="ion-social-twitter-outline"></i>
											</div>
											<div class="twitter-content">
												<p>
													A modern <a href="#">#Shopify theme </a> <a class="link1"
														href="#">@devitems</a> <br>
													<a class="link2" href="#">https://twitter.com/devitemsllc</a>
												</p>
											</div>
										</div>
										<div class="single-twitter">
											<div class="twitter-icon">
												<i class="ion-social-twitter-outline"></i>
											</div>
											<div class="twitter-content">
												<p>
													A modern <a href="#">#Shopify theme </a> <a class="link1"
														href="#">@devitems</a> <br> <a class="link2" href="#">https://twitter.com/devitemsllc</a>
												</p>
											</div>
										</div>
										<div class="single-twitter">
											<div class="twitter-icon">
												<i class="ion-social-twitter-outline"></i>
											</div>
											<div class="twitter-content">
												<p>
													A modern <a href="#">#Shopify theme </a> <a class="link1"
														href="#">@devitems</a> <br> <a class="link2" href="#">https://twitter.com/devitemsllc</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="footer-bottom border-top-1 ptb-15">
						<div class="row">
							<div class="col-md-6 col-12">
								<div class="copyright-payment">
									<div class="copyright">
										<p>
											Copyright © 2018 <a href="https://freethemescloud.com/">Free
												themes Cloud</a> All RIght Reserved.
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="footer-payment-method">
									<a href="#"><img alt="" src="resources/img/icon-img/7.png"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>







		<!-- all js here -->
		<script src="resources/js/jquery-3.5.0.js"></script>
		<script>
			$(document).ready(function() {
			    $('.faq1').on('click', function() {
			        $('.faq-content1').slideToggle(900);
			    });
			    
			    $('.faq2').on('click', function() {
			        $('.faq-content2').slideToggle(900);
			    });
			    
			    $('.faq3').on('click', function() {
			        $('.faq-content3').slideToggle(900);
			    });
			    
			    $('.faq4').on('click', function() {
			        $('.faq-content4').slideToggle(900);
			    });
			    
			    $('.faq5').on('click', function() {
			        $('.faq-content5').slideToggle(900);
			    });
			});
		</script>
        <script src="resources/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="resources/js/popper.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/isotope.pkgd.min.js"></script>
        <script src="resources/js/imagesloaded.pkgd.min.js"></script>
        <script src="resources/js/jquery.counterup.min.js"></script>
        <script src="resources/js/waypoints.min.js"></script>
        <script src="resources/js/ajax-mail.js"></script>
        <script src="resources/js/owl.carousel.min.js"></script>
        <script src="resources/js/plugins.js"></script>
        <script src="resources/js/main.js"></script>
    </body>
</html>