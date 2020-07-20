<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>전문가 - 포트폴리오</title>
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
<link rel="stylesheet" href="resources/css/service/portfolioForm.css">
<script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
<%@ include file="../header.jsp" %>
<style>
#upfile1, #upfile2{width:300px;height:auto;}
#sido1 {
	width: 100%;
	margin: 0;
}

#gugun1 {
	width: 100%;
	margin: 0;
}

</style>
</head>
<body>
	<div class="wrapper">

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
					<h2>전문가 포트폴리오</h2>
						<hr>
				</div>
			</div>
		</div>

		<!-- portfolio start -->
		<div class="checkout-area pt-130 hm-3-padding pb-100">
			<div class="container-fluid">
							<%--포폴이 없는 경우 --%>
				<c:if test="${PFdata == null}">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-12" id="noPFdata">	
							<p>아직 포트폴리오가 없어요!😢</p>
							<p>포트폴리오가 등록되어야 전문가로 활동할 수 있어요</p>
							<a href="writePortfolio"><button type="button" class="btn-style button">포트폴리오 작성하기</button></a>
						</div>
					</div>
				</c:if>
				<%--포폴이 있는 경우 --%>
				<c:if test="${PFdata != null}">
				<c:set var="p" value="${PFdata}"/>
				<input type="hidden" name="PF_PROFILE" value="${p.PF_PROFILE}">
					<div class="row">
						<div class="col-lg-6 col-md-12 col-12">
							<div class="checkbox-form">
								<div class="row">

									<div class="col-md-12">
										<div class="profile_image">
											<label for="savefile_reg"><span>프로필</span><span class="required">*</span></label> 
												<br>
												<img
													src="resources/expert_profile${p.PF_SAVEPROFILE}" alt="profile"
													id="profile"
													style="width: 170px; height: 170px; border-radius: 50%; cursor: pointer">
										</div>
									</div>

									<div class="col-md-12">
										<div class="category-select">
											<label>분야 <span class="required">*</span></label> 
											<c:if test="${p.PF_CATE == 0}"> 
											<input type="text" id="PF_CATEGORY" name="PF_CATEGORY" value="청소" disabled>
											</c:if>
											<c:if test="${p.PF_CATE == 1}"> 
											<input type="text" id="PF_CATEGORY" name="PF_CATEGORY" value="방역" disabled>
											</c:if>
											<c:if test="${p.PF_CATE == 2}"> 
											<input type="text" id="PF_CATEGORY" name="PF_CATEGORY" value="수리" disabled>
											</c:if>
											<!-- <select name="PF_CATE">
												<option value="0">청소</option>
												<option value="1">방역</option>
												<option value="2">수리</option>
											</select> -->
										</div>

										<fieldset class="location-select">
											<label>활동 지역 <span class="required">*</span></label>
											<div class="loc-align">
											<div class="col-md-6" style="padding-left: 0px;">
											<input type="text" name="sido1" id="sido1" value="${sido}" disabled>
											</div>
											<div class="col-md-6" style="padding-right: 0px;">
											<input type="text" name="gugun1" id="gugun1" value="${gugun}" disabled>
											</div>	
											</div>
										</fieldset>

									</div>


									<div class="col-md-12">
										<label>예약 가능 시간 <span class="required">*</span></label>
									</div> 
									<div class="col-md-6">	
										<label> 시작 시간 </label> <input name="starthour" id="starthour" value="${starthour }시 ">
									</div>
									<div class="col-md-6">
										<label>종료 시간 </label> <input name="endhour" id="endhour"  value="${endhour }시">
									</div>


									<div class="col-md-12">
										<div class="checkout-form-list">
											<label>경력 상세설명 <span class="required">*</span></label>
											<textarea name="PF_DESC" cols="30" rows="5" disabled>${p.PF_DESC}</textarea>
										</div>
									</div>

								</div>
							</div>

						</div>

						<div class="col-lg-6 col-md-12 col-12">
							<!-- 오른쪽 내용 -->
							<div class="col-md-12">
								<div class="file_form-group">
									<label for="savefile_reg"><span>사업자등록증 등록</span></label><br>
									 <label for="upfile1"> </label> 
									 <c:if test="${p.PF_SV_OP == null}">
									<p>등록한 자격증이 없습니다.</p>
									</c:if>
									<c:if test="${p.PF_SV_OP != null}">
									 <img src="resources/pf_OP_upload${p.PF_SV_OP}"
											alt="business_registration"  id="upfile1" name="uploadfile1">
									<span id="filevalue1"></span>
									</c:if>
								</div>
							</div>

							<div class="col-md-12">
								<div class="file_form-group">
									<label for="savefile_lic"><span>자격증 등록</span></label><br> 
									<label for="upfile2"> </label> 
									<c:if test="${p.PF_SV_LI == null}">
									<p>등록한 자격증이 없습니다.</p>
									</c:if>
									<c:if test="${p.PF_SV_LI != null}">
									<img src="resources/pf_LI_upload${p.PF_SV_LI}"
											alt="business_registration" id="upfile2" name="uploadfile2">
									<span id="filevalue2"></span>
									</c:if>
								</div>
							</div>

							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>전문가 소개 한마디 <span class="required">*</span></label>
									<textarea name="PF_One" cols="30" rows="2" disabled>${p.PF_One }</textarea>
								</div>
							</div>
							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>전문가 소개말 <span class="required">*</span></label>
									<textarea name="PF_INTRO" cols="30" rows="5" disabled>${p.PF_INTRO }</textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12 col-md-12 col-12">
								<div class="buttons">
									 <button type="submit" class="btn-style" onclick="location.href='modifyPF'">수정</button>
									<button type="reset" class="btn-style reset" onclick="location.href='deletePF'">삭제</button> 
								</div>
							</div>
						</div>
					</div>
				</c:if>


			</div>
		</div>
		<!-- checkout-area end -->
		
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
