<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
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
</head>
<style>
.mypage::before {
	background: #fff none repeat scroll 0 0;
	border-color: #ccc;
	border-style: solid;
	border-width: 1px 0 0 1px;
	content: "";
	height: 20px;
	left: 10px;
	opacity: 0;
	position: absolute;
	top: 150%;
	transform: rotate(45deg);
	transition: all 0.4s ease 0s;
	visibility: hidden;
	width: 20px;
	z-index: 9999;
}

.mini-page {
	background: #fff none repeat scroll 0 0;
	box-shadow: 0 0 3px #ccc;
	opacity: 0;
	padding: 20px;
	position: absolute;
	top: 150%;
	visibility: hidden;
	width: 200px;
	z-index: 999;
	transition: 0.4s;
	left: -15px;
	text-align: left;
}
</style>
<body>
		<div class="header-area transparent-bar">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-sm-5 col-5">
						<div class="sticky-logo">
							<!-- 스크롤내렸을 때,메뉴바 로고  -->
							<a href="index.html"><img src="resources/img/logo/eeum_logo.png" style="width: 140px" /></a>
						</div>
						<div class="logo" style="margin-top: 30px">
							<!-- 반응형 웹 크게했을 때 로고 -->
							<a href="index.html"><img
								src="resources/img/logo/eeum_logo.png" style="width: 140px" /></a>
						</div>
					</div>
					<div class="col-lg-8 col-md-8 d-none d-md-block"
							style="margin-top: 29px; padding-left: 0px; padding-right: 100px">
						<div class="logo-menu-wrapper text-center">
							<div class="main-menu">
								<nav>
									<ul>
										<li><a href="about-us.html">이:음 소개</a></li>
										<li><a href="service.list">서비스<i class="ion-ios-arrow-down" style="margin-left: 5px"></i></a>
											<ul style="text-align: center;">
												<li style="margin-bottom: 10px;"><a href="product-details.html">수리</a></li>
												<li style="margin-bottom: 10px;"><a href="product-details.html">청소</a></li>
												<li><a href="product-details.html">해충</a></li>
											</ul></li>	
										<li><a href="OnedayList.one">원데이 클래스</a></li>
										<li><a href="#">FAQ</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-7 col-7">
						<div class="header-site-icon">
						
							<c:if test="${empty user_id && empty expert_id}">
							<div class="header-login same-style"
								style="margin-left: 13px; margin-right: 13px">
								<li><a href="userpage.net"><img src="resources/img/header/user.png"
																						style="margin-bottom: 30px; width: 30px; filter: saturate(80%);" /></a>
									<ul style="width:200px">
										<li>같이 이음해요 :)</li>
										<li><a href="login.net">로그인</a></li>
										<li><a href="userJoin.net">회원가입</a></li>
									</ul></li>
							</div>
							</c:if>
							
							<c:if test="${!empty user_id && empty expert_id}">
							<div class="header-login same-style"
								style="margin-left: 13px; margin-right: 13px">
								<li><a href="userpage.net"><img src="resources/img/header/user.png"
																						style="margin-bottom: 30px; width: 30px; filter: saturate(80%);" /></a>
									<ul style="width:240px">
										<li><img src="resources/profile/${user_saveprofile }" style="width:15%; height:auto;border-radius:50%;">&nbsp;&nbsp;${user_nick}&nbsp;님</li>
										<li><a href="userpage.net">나의 정보</a></li>
										<li><a href="login.net">이음 나가기</a></li>
									</ul></li>
							</div>
							</c:if>
							
							<c:if test="${!empty expert_id && empty user_id}">
							<div class="header-login same-style"
								style="margin-left: 13px; margin-right: 13px">
								<li><a href="expertpage.net"><img src="resources/img/header/user.png"
																						style="margin-bottom: 30px; width: 30px; filter: saturate(80%);" /></a>
									<ul style="width:200px">
										<li>전문가&nbsp;${expert_name}</li>
										<li><a href="expertpage.net">나의 정보</a></li>
										<li><a href="login.net">이음 나가기</a></li>
									</ul></li>
							</div>
							</c:if>
							
							<div class="header-cart same-style" style="margin-left: 13px; margin-right: 13px">
								<a href="#"><img src="resources/img/header/chat.png" style="width: 30px; filter: saturate(80%);"></a>
							</div>
							<div class="header-search same-style" style="margin-left: 10px; margin-right: 13px">
								<a href="login-register.html"><img src="resources/img/header/search.png"
																						style="width: 30px; filter: saturate(80%);"></a>
							</div>
						</div>
					</div>
					<div class="mobile-menu-area col-12">
						<div class="mobile-menu">
							<nav id="mobile-menu-active">
								<ul class="menu-overflow">
									<li><a href="#">이:음 소개</a>
									<li><a href="service.list">서비스</a>
										<ul>
											<li><a href="about-us.html">수리</a></li>
											<li><a href="cart.html">청소</a></li>
											<li><a href="cart.html">해충</a></li>
										</ul></li>
									<li><a href="OnedayList.one">원데이 클래스</a></li>
									<li><a href="#">FAQ</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>

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