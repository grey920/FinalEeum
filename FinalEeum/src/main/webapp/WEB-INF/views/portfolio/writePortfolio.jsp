<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>전문가 - 포트폴리오 작성폼</title>
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
					<h3>프사 공간</h3>
					<hr>
				</div>
			</div>
		</div>

		<!-- portfolio start -->
		<form action="writeActionPofo" enctype="multipart/form-data"
			method="POST">
			<div class="checkout-area pt-130 hm-3-padding pb-100">
				<div class="container-fluid">
					<div class="row">

						<div class="col-lg-6 col-md-12 col-12">
							<div class="checkbox-form">
								<div class="row">

									<div class="col-md-12">
										<div class="profile_image">
											<label for="savefile_reg"><span>프로필 등록</span><span
												class="required">*</span></label> <input type="file"
												id="expert_profile" name="uploadfilePRO"
												accept="image/gif, image/jpeg, image/png, image/jpg"
												style="visibility: hidden"><br> <label
												for="expert_profile"> <img
												src="resources/img/profile/profile.png" alt="profile"
												id="profile"
												style="width: 170px; height: 170px; border-radius: 50%; cursor: pointer">
											</label>
										</div>
									</div>

									<div class="col-md-12">
										<div class="category-select">
											<label>분야 <span class="required">*</span></label> <select
												name="PF_CATE">
												<option value="1">청소</option>
												<option value="2">방역</option>
												<option value="3">수리</option>
											</select>
										</div>

										<fieldset class="location-select">
											<label>활동 지역 <span class="required">*</span></label>
											<div class="loc-align">
												<select name="sido1" id="sido1"></select> <select
													name="gugun1" id="gugun1"></select>
											</div>
										</fieldset>

									</div>


									<div class="col-md-6">
										<label>예약 가능 시간 <span class="required">*</span></label><label>시작
											시간 </label> <select name="starthour" id="starthour"></select>
									</div>
									<div class="col-md-6">
										<label>종료 시간 </label> <select name="endhour" id="endhour"></select>
									</div>


									<div class="col-md-12">
										<div class="checkout-form-list">
											<label>경력 상세설명 <span class="required">*</span></label>
											<textarea name="PF_DESC" cols="30" rows="5"
												placeholder="경력에 대해 이야기 해주세요"></textarea>
										</div>
									</div>

								</div>
							</div>

						</div>

						<div class="col-lg-6 col-md-12 col-12">
							<!-- 오른쪽 내용 -->
							<div class="col-md-12">
								<div class="file_form-group">
									<label for="savefile_reg"><span>사업자등록증 등록</span></label> <label
										for="upfile1"> </label> <input type="file" id="upfile1"
										name="uploadfile1">
									<!-- domain에 있는 private MultipartFile uploadfile;랑 input의 name이 맞나 꼭 확인! -->
									<span id="filevalue1"></span>
								</div>
							</div>

							<div class="col-md-12">
								<div class="file_form-group">
									<label for="savefile_lic"><span>자격증 등록</span></label> <label
										for="upfile2"> </label> <input type="file" id="upfile2"
										name="uploadfile2">
									<!-- domain에 있는 private MultipartFile uploadfile;랑 input의 name이 맞나 꼭 확인! -->
									<span id="filevalue2"></span>
								</div>
							</div>

							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>전문가 소개 한마디 <span class="required">*</span></label>
									<textarea name="PF_One" cols="30" rows="2"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>전문가 소개말 <span class="required">*</span></label>
									<textarea name="PF_INTRO" cols="30" rows="5"
										placeholder="전문가 상세 페이지에 들어갑니다"></textarea>
								</div>
							</div>
						</div>
						<div class="row btnRow">
							<div class="col-lg-12 col-md-12 col-12">
								<div class="buttons">
									<button type="submit" class="btn-style">등록</button>
									<button type="reset" class="btn-style reset">취소</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- checkout-area end -->





		<!-- footer -->
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
	<script src="resources/js/jquery-3.5.0.js"></script>
	<script type="text/javascript">
		/*프로필 사진 업로드 처리*/
		$('#expert_profile').on('change', preview);

		function preview(e) {
			//선택한 그림의 File 객체를 취득
			//File객체 리스트에서 첫번째 File객체를 가져옵니다.
			var file = e.target.files[0];

			//file.type : 파일의 형식(MIME타입 - 예) text/html
			if (!file.type.match("image.*")) { //파일 타입이 image인지 확인합니다.
				alert('확장자는 이미지만 가능합니다.');
				return;
			}

			//파일을 읽기 위한 객체 생성
			var reader = new FileReader();

			//DataURL 형식으로 파일을 읽어옵니다.
			//읽어온 결과는 reader객체의 result 속성에 저장됩니다.
			reader.readAsDataURL(file);

			//읽기에 성공했을 때 실행되는 이벤트 핸들러
			reader.onload = function(e) {
				//result:읽기 결과가 저장됩니다.
				//reader.result 또는 e.target.result
				$('#profile').attr("src", e.target.result);
			}

		}
	</script>
	<script src="resources/js/sojaeji1.js"></script>
	<script src="resources/js/PF_writeform.js"></script>
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
