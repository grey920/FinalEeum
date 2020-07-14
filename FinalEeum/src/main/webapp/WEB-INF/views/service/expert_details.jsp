<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Nokshi - Minimalist eCommerce HTML5 Template</title>
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
<link rel="stylesheet" href="resources/css/easyzoom.css">
<link rel="stylesheet" href="resources/css/meanmenu.min.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/ionicons.min.css">
<link rel="stylesheet" href="resources/css/bundle.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/responsive.css">

<link rel="stylesheet" href="resources/css/service/expert_details.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- 모달 관련 -->


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div class="wrapper">
		<!-- header start -->
		<header>
			<div class="header-area transparent-bar">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-5 col-5">
							<div class="language-currency">
								<div class="language">
									<select class="select-header orderby">
										<option value="">ENGLISH</option>
										<option value="">BANGLA</option>
										<option value="">HINDI</option>
									</select>
								</div>
								<div class="currency">
									<select class="select-header orderby">
										<option value="">USD</option>
										<option value="">US</option>
										<option value="">EURO</option>
									</select>
								</div>
							</div>
							<div class="sticky-logo">
								<a href="index.html"><img src="resources/img/logo/2.png"
									alt="" /></a>
							</div>
							<div class="logo-small-device">
								<a href="index.html"><img alt=""
									src="resources/img/logo/logo.png"></a>
							</div>
						</div>
						<div class="col-lg-8 col-md-8 d-none d-md-block">
							<div class="logo-menu-wrapper text-center">
								<div class="logo">
									<a href="index.html"><img src="resources/img/logo/logo.png"
										alt="" /></a>
								</div>
								<div class="main-menu">
									<nav>
										<ul>
											<li><a href="index.html">home</a></li>
											<li><a href="about-us.html">about us </a></li>
											<li><a href="shop.html">shop <i
													class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="product-details.html">Product details</a></li>
												</ul></li>
											<li><a href="#">pages <i class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="about-us.html">about us</a></li>
													<li><a href="cart.html">cart page</a></li>
													<li><a href="checkout.html">checkout</a></li>
													<li><a href="wishlist.html">wishlist</a></li>
													<li><a href="login-register.html">login</a></li>
													<li><a href="contact.html">contact</a></li>
												</ul></li>
											<li><a href="blog.html">blog <i
													class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="blog-details-standerd.html">about us</a></li>
												</ul></li>
											<li><a href="contact.html">contact us</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-7 col-7">
							<div class="header-site-icon">
								<div class="header-search same-style">
									<button class="sidebar-trigger-search">
										<span class="ti-search"></span>
									</button>
								</div>
								<div class="header-login same-style">
									<a href="login-register.html"> <span class="ti-user"></span>
									</a>
								</div>
								<div class="header-cart same-style">
									<button class="sidebar-trigger">
										<i class="ti-shopping-cart"></i> <span class="count-style">03</span>
									</button>
								</div>
							</div>
						</div>
						<div class="mobile-menu-area col-12">
							<div class="mobile-menu">
								<nav id="mobile-menu-active">
									<ul class="menu-overflow">
										<li><a href="#">HOME</a>
											<ul>
												<li><a href="index.html">home version 1</a></li>
												<li><a href="index-2.html">home version 2</a></li>
												<li><a href="index-3.html">home version 3</a></li>
												<li><a href="index-4.html">home version 4</a></li>
											</ul></li>
										<li><a href="#">pages</a>
											<ul>
												<li><a href="about-us.html">about us</a></li>
												<li><a href="cart.html">cart page</a></li>
												<li><a href="checkout.html">checkout</a></li>
												<li><a href="wishlist.html">wishlist</a></li>
												<li><a href="login-register.html">login</a></li>
												<li><a href="contact.html">contact</a></li>
											</ul></li>
										<li><a href="#">shop</a>
											<ul>
												<li><a href="#">shop grid</a>
													<ul>
														<li><a href="shop-grid-2-col.html"> grid 2 column</a></li>
														<li><a href="shop-grid-3-col.html"> grid 3 column</a></li>
														<li><a href="shop.html"> grid 4 column</a></li>
														<li><a href="shop-grid-6-col.html"> grid 6 column</a></li>
														<li><a href="shop-grid-box.html"> grid box style</a></li>
													</ul></li>
												<li><a href="#">shop list</a>
													<ul>
														<li><a href="shop-list.html"> list 1 column</a></li>
														<li><a href="shop-list-2-col.html"> list 2 column</a></li>
														<li><a href="shop-list-3-col.html"> list 3 column</a></li>
														<li><a href="shop-list-box.html"> list box style</a></li>
													</ul></li>
												<li><a href="shop-grid-view-5-col.html">product
														details</a>
													<ul>
														<li><a href="product-details.html">tab style</a></li>
														<li><a href="product-details-sticky.html">sticky
																style</a></li>
														<li><a href="product-details-gallery.html">gallery
																style</a></li>
														<li><a href="product-details-fixed-img.html">fixed
																image style</a></li>
													</ul></li>
											</ul></li>
										<li><a href="#">BLOG</a>
											<ul>
												<li><a href="blog-masonry.html">Blog Masonry</a></li>
												<li><a href="#">Blog Standard</a>
													<ul>
														<li><a href="blog-left-sidebar.html">left sidebar</a></li>
														<li><a href="blog-right-sidebar.html">right
																sidebar</a></li>
														<li><a href="blog-no-sidebar.html">no sidebar</a></li>
													</ul></li>
												<li><a href="#">Post Types</a>
													<ul>
														<li><a href="blog-details-standerd.html">Standard
																post</a></li>
														<li><a href="blog-details-audio.html">audio post</a></li>
														<li><a href="blog-details-video.html">video post</a></li>
														<li><a href="blog-details-gallery.html">gallery
																post</a></li>
														<li><a href="blog-details-link.html">link post</a></li>
														<li><a href="blog-details-quote.html">quote post</a></li>
													</ul></li>
											</ul></li>
										<li><a href="contact.html"> Contact us</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
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

		
		<div class="banner-area hm-4-padding">
			<div class="container-fluid">
				<!--  -->
				<div class="banner-img">
					
					<div class="grad">
						<img src="resources/profile${expertdata.expert_profile}" alt=""
							id="userimg">
					</div>
					<b
						style="font-size: 50px; position: relative; left: 680px; bottom: 190px;">${expertdata.expert_name}
						</b>
					<div class="heart_click">
						<i id="fa-heart-o" class="fa fa-heart-o"
							style="position: relative; left: 13px; top: 12px;"></i><span
							style="position: relative; left: 20px; font-size: 17px; top: 12px; font-weight: 700;">찜하기</span>
					</div>


					<button style="font-weight: 700; font-size: 16px;"
						data-toggle="modal" data-target="#myModal " class="heart_click2">
						<i id="fa-pencil-square-o" class="fa fa-pencil-square-o"></i> <b
							style="color: black;">견적요청</b>
					</button>


					<div class="name_tag">
						<!-- 사람 이름 -->
						<i class="fa fa-check" style="position: relative; left: 135px;"></i>
						<b style="font-size: 25px; position: relative; left: 150px;">총
							'(숫자)' 건 예약</b> <i class="fa fa-smile-o"
							style="position: relative; right: 78px; top: 38px; font-size: 20px;"></i>

						<div class="quick-view-rating">
							<i class="ion-ios-star red-star"></i> <i
								class="ion-ios-star red-star"></i> <i
								class="ion-ios-star red-star"></i> <i
								class="ion-ios-star red-star"></i> <i
								class="ion-ios-star red-star"></i> <span>4.0</span>
						</div>
						<i class="fa fa-calendar"
							style="position: relative; left: 138px; font-size: 17px;"></i> <b
							style="font-size: 24px; position: relative; left: 150px;">총
							가능한 날짜 나옴</b>


					</div>

					<div id="myModal" class="modal" data-backdrop-limit="1"
						tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content" style="height: 720px;">
								<!-- body -->
								<div class="modal-body"
									style="padding: 50px; padding-top: 40px; width: 440px; height: 750px;">

									<!-- 부모 모달 -->
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close"
										style="position: relative; bottom: 320px; left: 770px;">
										<span class="ion-android-close" aria-hidden="true"></span>
									</button>
									<div class="row justify-content-center mt-0">
										<div
											class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2"
											style="width: 500px; padding-left: 10px;">
											<div class="card px-0 pt-4 pb-0 mt-3 mb-3"
												style="width: 700px; position: relative; right: 140px;">
												<h3 id="top"></h3>
												<div class="row"
													style="height: 0px; position: relative; bottom: 0px;">
													<div class="col-md-12 mx-0">
														<form id="msform" action="" method="post"
															enctype="multipart/form-data">
															<!-- progressbar -->
															<ul id="progressbar">
																<li class="active" id="account"><strong>건물
																		유형</strong></li>
																<li id="personal"><strong>수리 유형</strong></li>
																<li id="payment"><strong>첨부 사진</strong></li>
																<li id="confirm"><strong>간단 요청</strong></li>
															</ul>
															<!-- fieldsets -->
															<fieldset>
																<div class="form-card " style="height: 350px;">
																	<!-- 여기 라디오 버튼 : form -->
																	<b>* 선택해주세요.</b><br> <br> <input type="radio"
																		name="structure1" id="structure1" checked="checked"><span>아파트</span>
																	<input type="radio" name="structure1" id="structure1"
																		style="position: relative; left: 270px;"> <span
																		style="position: relative; left: 275px;">단독주택</span><br>
																	<input type="radio" name="structure1" id="structure1">
																	<span>빌라/연립주택</span> <input type="radio"
																		name="structure1" id="structure1"
																		style="position: relative; left: 197px;"> <span
																		style="position: relative; left: 202px;">빌딩/상가</span><br>
																	<input type="radio" name="structure1" id="structure1"><span>기타</span><br>
																	<textarea rows="4" cols="20" maxlength="50"
																		style="border: 1px solid lightgray;"></textarea>
																	<b class="page_number">1/4</b>
																</div>
																<!-- 버튼 -->
																<input type="button" name="next"
																	class="next action-button" value="다음" id="next" />

															</fieldset>
															<fieldset style="display: none;">

																<div class="form-card " style="height: 400px;">
																	<!-- 여기 라디오 버튼 : form -->
																	<b>* 선택해주세요.</b><br> <br> <input type="radio"
																		name="structure1" id="structure1" checked="checked"><span>전자제품
																		수리</span> <input type="radio" name="structure1"
																		id="structure2"
																		style="position: relative; left: 232px;"> <span
																		style="position: relative; left: 239px;">가구수리</span><br>
																	<input type="radio" name="structure1" id="structure2">
																	<span>열쇠/도어락 수리</span> <input type="radio"
																		name="structure1" id="structure2"
																		style="position: relative; left: 199px;"> <span
																		style="position: relative; left: 205px;">전기 배선
																		수리</span><br> <input type="radio" name="structure1"
																		id="structure2"> <span>방충망 및 방범창 수리</span> <input
																		type="radio" name="structure1" id="structure2"
																		style="position: relative; left: 155px;"> <span
																		style="position: relative; left: 161px;">문 수리</span><br>
																	<input type="radio" name="structure1" id="structure2"
																		style="position: relative; left: 396px;"> <span
																		style="position: relative; left: 400px;">수도 관련
																		수리</span> <input type="radio" name="structure1"
																		id="structure2"
																		style="position: relative; right: 173px;"> <span
																		style="position: relative; right: 174px;">기타</span><br>
																	<textarea rows="4" cols="20" maxlength="50"
																		style="border: 1px solid lightgray;"></textarea>
																	<b class="page_number">2/4</b>
																</div>
																<!-- 버튼 -->
																<input type="button" name="previous"
																	class="previous action-button-previous" value="이전" />
																<input type="button" name="next"
																	class="next action-button" value="다음" />
															</fieldset>
															<fieldset style="display: none;">
																<div class="form-card" style="height: 400px;">
																	<!-- 사진을 첨부해주세요.: form -->
																	<span style="font-size: 15px; color: lightgray;">*최대
																		10장</span>
																	<textarea rows="8" cols="25"></textarea>
																	<input type="file" id="upfile" name="BOARD_FILE">
																	<b class="page_number">3/4</b>
																</div>
																<!-- 버튼 -->
																<input type="button" name="previous"
																	class="previous action-button-previous" value="이전" />
																<input type="button" name="next"
																	class="next action-button" value="다음" />
															</fieldset>
															<fieldset style="display: none;">
																<div class="form-card">
																	<b>* 공식적인 요청 외 전문가에게 무리한 요구시 요청이 거절될 수 있습니다.</b>
																	<textarea rows="10" cols="20" maxlength="70"
																		style="border: 1px solid lightgray;">내용을 입력하세요.</textarea>

																	<b class="page_number">4/4</b>
																</div>
																<input type="button"
																	class="previous action-button-previous" value="이전" />
																<input type="button" name="finish" class="action-button"
																	value="요청" />
															</fieldset>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
								<!-- modal-body -->
							</div>
							<!-- .modal -->
						</div>
						<!-- .modal-dialog -->

					</div>

				</div>


				<hr class="hr_1">
				<!-- 버튼 -->


				<hr class="hr_2">
				<span
					style="font-size: 40px; font-weight: 700; position: relative; left: 240px; top: 60px;">서비스
					상세설명</span>
				<div class="details1">
					<p style="font-size: 22px; color: black;">
						이사입주청소<br> (싱크대상판연마코팅.욕실나노코팅.마루왁스코팅.찌든때.묵은때.물때.기름때.곰팡이. 스티커
						제거 )<br> 신축입주청소<br> ( 화학성분 유해물질 미세먼지 제거 싱크대상판코팅.욕실나노코팅 )<br>
					</p>
				</div>
				<!-- 탭메뉴 들어간다. -->
				<div class="container1">
					<ul class="tab">
						<li data-tab="tab1" class='tabmenu tab1' id="default"
							style="position: relative; left: 390px; top: 14px;"><b
							style="font-size: 20px; color: white;" id="tabText1">포트폴리오</b></li>
						<li data-tab="tab2" class='tabmenu tab2'
							style="position: relative; left: 640px; bottom: 15px;"><b
							style="font-size: 20px; color: white;" id="tabText2">후기</b></li>
						<li data-tab="tab3" class='tabmenu tab3'
							style="position: relative; left: 850px; bottom: 45px;"><b
							style="font-size: 20px; color: white;" id="tabText3">가격</b></li>
						<li data-tab="tab4" class='tabmenu tab4'
							style="position: relative; left: 1100px; bottom: 75px;"><b
							style="font-size: 20px; color: white;" id="tabText4">Q&A</b></li>
					</ul>
					<div id="tabcontent"></div>
					<!-- 내용 들어갈 공간 -->
				</div>
				<!-- 탭 -->

				<div class="product-details-area hm-3-padding ptb-130"></div>

				<footer class="hm-4-padding">
					<div class="container-fluid">
						<div class="footer-top pt-125 pb-25" style="padding-top: 800px;">
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
															href="#">@devitems</a> <br> <a class="link2"
															href="#">https://twitter.com/devitemsllc</a>
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
															href="#">@devitems</a> <br> <a class="link2"
															href="#">https://twitter.com/devitemsllc</a>
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
															href="#">@devitems</a> <br> <a class="link2"
															href="#">https://twitter.com/devitemsllc</a>
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
												Copyright Â© 2018 <a href="https://freethemescloud.com/">Free
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
	<script src="resources/js/service/expert_details.js"></script>

</body>
</html>
