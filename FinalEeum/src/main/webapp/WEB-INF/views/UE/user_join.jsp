<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>사용자 - 회원가입</title>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<%@ include file="../header.jsp" %>
	<style>
	select {font-size:13pt;border-radius:10px}
	.text-center h2{font-weight:900}
	.ptb-130 {padding-top:30px !important}
	.breadcrumb-content{padding-top:0;margin-top:1em}
	input[type=button] {background-color:#72A0E0;color:white;font-size:13pt}
	input{border-radius:10px}
	p{font-weight:800}
	.login-form button {background-color:white;
				color:#72A0E0;
				border:2px solid #72A0E0;
				border-radius:10px}
	.login-form button:hover{border:2px solid #72A0E0;
								color:white;
								background-color:#72A0E0 !important;
								z-index:1}
	 .login-form-container .button-box span{font-size:15pt}
	  .col-lg-7{-ms-flex:0 0 60%;flex:0 0 60%;max-width:60%}
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
                        <h2>SIGN UP</h2>
                    </div>
                </div>
            </div>
		<!-- 회원가입폼 -->
		<div class="login-register-area ptb-130 hm-3-padding">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-7 ml-auto mr-auto">
						<div class="login-register-wrapper">
							<div class="login-register-tab-list nav">
								<a class="active" data-toggle="tab" href="#lg1" style="font-weight:700">
									<h4>회원가입</h4>
								</a> 
							</div>
							<div class="tab-content">
								<div id="lg1" class="tab-pane active">
									<div class="login-form-container">
										<div class="login-form">
											<form action="userJoinProcess.net" method="post" enctype="multipart/form-data">
											
												<!--프로필 사진 -->
												<div class="profile_image" style="width:200px;text-align:center;margin:0 auto">
												<input type="file" id="user_profile" name="uploadfile" 
															accept="image/gif, image/jpeg, image/png, image/jpg" style="visibility:hidden"><br>
												<label for="user_profile">
												  <img src="resources/img/profile/profile.png" alt="profile" id="profile" 
												   			style="width:100%; height:auto;border-radius:50%;cursor:pointer">
												</label>
												</div>
												
												<p>주민등록 번호 *</p><!-- 숫자만 -->
												<input type="text" id="user_jumin1" name="user_jumin1"  maxLength="6" style="width:32%;margin-bottom:10px;text-align:center">
												<b>&nbsp;-&nbsp;</b>
												<input type="password" id="user_jumin2" name="user_jumin2" maxLength="7" style="width:32%;">
												<input type="button" value="가입확인" id="checkJumin" style="width:26%;margin-left:5px;font-weight:600;cursor:pointer">
												<span id="message_jumin"></span>
												
												<p>이름 *	</p><!-- 한글만 -->
												<input type="text" id="user_name" name="user_name" placeholder="이름을 입력하세요" style="width:96%" >
												<span></span>
																							
												<p>닉네임(별명) *</p> <!-- 중복 X -->
												<input type="text" id="user_nick" name="user_nick" placeholder="별명을 입력하세요" style="width:96%">
												<span id="message_nick"></span>
												
												<p>아이디 *</p> <!-- 영문 대소문자 + 숫자, 4~16자  -->
												<input type="text" id="user_id" name="user_id" placeholder="아이디를 입력하세요" style="width:96%">
												<span id="message_id"></span>
												
												<p>비밀번호 *</p> <!-- 영문 대소문자/숫자/특수문자 모두 조합 8-12자 -->
												<input type="password" id="user_pass" name="user_pass" placeholder="비밀번호를 입력하세요" style="width:96%">
												<span id="message_pass1"></span>
												
												<p>비밀번호 확인 *</p>	<!-- 위의 것과 맞는지 -->
												<input type="password" id="password_check" name="password_check" placeholder="비밀번호를 한 번 더 입력하세요" style="width:96%">
												<span id="message_pass2"></span>
												
												<p>주소 *</p> 
												<input type="text" size="5" maxLength="5" id="user_addr1" name="user_addr1" style="width:170px;margin-bottom:10px;margin-right:3px" >
												<input type="button" value="우편번호 검색" id="postcode" style="width:190px;font-weight:600;cursor:pointer">
												<input type="text" id="user_addr2" name="user_addr2" placeholder="주소를 입력하세요" style="margin-bottom:10px;width:96%">
												<input type="text" id="user_addr3" name="user_addr3" placeholder="상세 주소를 입력하세요" style="width:96%">
												<span></span>
												
											
												<p>휴대폰 번호 * </p> <!-- 숫자만 -->
												<input type="text" id="user_phone1" name="user_phone1" value="010" style="width:26%;text-align:center;margin-bottom:10px;" readonly>
												<b>-</b>
												<input type="text" id="user_phone2" name="user_phone2" maxLength="4" style="width:32%;text-align:center;margin-bottom:10px;" >
												<b>-</b>
												<input type="text" id="user_phone3" name="user_phone3" maxLength="4" style="width:33%;text-align:center;margin-bottom:10px;" >
												<span id="message_phone"></span>
												
												<p>이메일 주소 *</p>
												<input type="text" id="user_email1" name="user_email1" placeholder="이메일 주소를 입력하세요" style="width:42%;margin-bottom:10px">
												<b>&nbsp;@&nbsp;</b>
												<select id="user_email2" name="user_email2" style="width:48%;">
													<option value="">이메일 선택</option>
													<option value="naver.com">naver.com</option>
													<option value="gmail.com">gmail.com</option>
													<option value="nate.com">nate.com</option>
													<option value="hanmail.net">hanmail.net</option>
													<option value="hotmail.com">hotmail.com</option>
													<option value="daum.net">daum.net</option>
												</select>
												<span></span>
												
												<div class="button-box" style="text-align:center;margin:0 auto">
													<button type="submit" class="btn-style">
														<span>가입하기</span>
													</button>
													<button type="reset" class="btn-style">
														<span>다시 작성</span>
													</button>
												</div>
											</form>
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
	<script src="resources/js/userValidate.js"></script>
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