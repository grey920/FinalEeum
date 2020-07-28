<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>로그인</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/favicon.png">

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
.login-form-container {
    padding: 80px 60px 80px 60px;
}
.login-form-container input {
    padding: 0 15px;
    margin-bottom:30px;
}
.text-center h2{font-weight:900}
.ptb-130 {padding-top:30px}
input{border-radius:30px;}
button{height:50px}
.login-toggle-btn{font-size:15pt}
.breadcrumb-content {padding-top:0;}
.btn-style.btn-login{background-color:#C1C8D9;
				 color:#303030;
				 border:2px solid #C1C8D9 !important;
				 border-radius:50px}
.btn-style.btn-login:hover{color:#303030;
						   background-color:white;
						   animation:none}
.btn-style{margin-top:10px !important;
       			margin-right:0 !important; 
       			font-size:18px;
         		border-radius:20px;
         		background-color:white;
         		color:#72A0E0;
         		border:2px solid #72A0E0 !important;
         		}
.btn-style:hover{background-color:#72A0E0;
         					color:white;
         					border:2px solid #72A0E0;
         					}
</style>
</head>
<body>
	<div class="wrapper">
		<!-- header start -->
		<div class="header-height"></div>
		
		   <div class="breadcrumb-area mt-37 hm-4-padding">
                <div class="container-fluid">
                    <div class="breadcrumb-content text-center">
                        <h2>LOGIN</h2>
                    </div>
                </div>
            </div>
            
		<!-- 회원가입폼-->
            <div class="login-register-area ptb-130 hm-3-padding">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-7 ml-auto mr-auto">
                            <div class="login-register-wrapper">
                                <div class="login-register-tab-list nav">
                                    <a class="active" data-toggle="tab" href="#lg1">
                                        <h4> 사용자 </h4>
                                    </a>
                                    <a data-toggle="tab" href="#lg2">
                                        <h4> 전문가 </h4>
                                    </a>
                                </div>
                                <div class="tab-content">
                                    <div id="lg1" class="tab-pane active">
                                        <div class="login-form-container">
                                            <div class="login-form">
                                                <form name="userLoginform" action="user_loginProcess.net" method="post">
                                                
                                                    <input type="text" id="user_id" name="user_id" placeholder="사용자 ID" required
                                                    		<c:if test="${ !empty saveid }">
                                                    			value="${saveid}"
                                                    		</c:if>
                                                    > 
                                                    <input type="password" id="user_pass" name="user_pass" placeholder="사용자 비밀번호" required>
                                                    
                                                    <div class="button-box">
                                                        <div class="login-toggle-btn">
                                                            <input type="checkbox" name="user_remember"
                                                            	<c:if test="${ !empty saveid }">
                                                            	checked
                                                            	</c:if>
                                                            >
                                                            <label>ID 기억하기</label>
                                                            <a href="userFind.net">아이디 / 비밀번호 찾기</a>
                                                        </div>
                                                        <div style="text-align:center; margin:0 auto">
                                                        <button type="submit" class="btn-style" style="border-radius:50px"><span>&nbsp;사용자 LOGIN&nbsp;</span></button>
                                                        </div>
                                                    </div>
                                                </form>
                                                <div style="text-align:center; margin:0 auto">
                                                   <button class="btn-style btn-login" onclick="location.href='userJoin.net';">
                                                   <span>사용자 회원가입</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="lg2" class="tab-pane">
                                        <div class="login-form-container">
                                            <div class="login-form">
                                                <form name="expertLoginform" action="expert_loginProcess.net" method="post">
                                                
                                                    <input type="text" id="expert_id" name="expert_id" placeholder="전문가 ID" required
                                                    		<c:if test="${ !empty saveid }">
                                                    			value="${saveid}"
                                                    		</c:if>
                                                    >
                                                    <input type="password" id="expert_pass" name="expert_pass" placeholder="전문가 비밀번호" required>
                                                    
                                                    <div class="button-box">
                                                        <div class="login-toggle-btn">
                                                            <input type="checkbox" id="expert_remember"
                                                               <c:if test="${ !empty saveid }">
                                                            	checked
                                                            	</c:if>
                                                            >
                                                            <label>ID 기억하기</label>
                                                            <a href="expertFind.net">아이디 / 비밀번호 찾기</a>
                                                        </div>
                                                        <div style="text-align:center; margin:0 auto">
                                                        <button type="submit" class="btn-style" style="border-radius:50px"><span>&nbsp;전문가 LOGIN&nbsp;</span></button>
                                                        </div>
                                                    </div>
                                                </form>
                                                <div style="text-align:center; margin:0 auto">
                                                   <button class="btn-style btn-login" onclick="location.href='expertJoin.net';">
                                                   <span>전문가 회원가입</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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











	<!-- all js here -->
	<script src="resources/js/jquery-3.5.0.js"></script>
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