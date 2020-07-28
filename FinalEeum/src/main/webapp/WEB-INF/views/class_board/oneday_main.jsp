<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>원데이 클래스</title>
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
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/meanmenu.min.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/ionicons.min.css">
<link rel="stylesheet" href="resources/css/bundle.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
<%@ include file="../header.jsp" %>
<style>
.write_oneday {border-style: none;
						padding: 3px 10px;
						background-color: #CADEE3;
						color: white;
						cursor: pointer;}
.paging_align {display: flex;
						justify-content: center;}
.product-wrapper .end:after {background: rgba(0, 0, 0, .53);}
.breadcrumb-content{padding-top:0;margin-top:1em}
.breadcrumb-content ul > li{font-size:13pt}
.pt-120{padding-top:50px}
.product-content {padding:10px 15px 10px;
								margin-bottom: 70px; 
								border :2px solid #C1C8D9;
								border-radius:0 0 10px 10px;
								border-top:none}
.product-title-3 a {font-weight:700; color:#303030}
.price-decrease > span {font-size : 25px;
        								padding:5px 10px;
        								border-radius:10px;}
.description-oneday{text-align:center;
								font-size:13pt;
								color:#575555;
								margin-bottom:5px}
</style>
</head>
<body>
	<div class="wrapper">
		<!-- header start -->
		<div class="header-height"></div>
		
		<div class="breadcrumb-area mt-37 hm-4-padding">
			<div class="container-fluid">
				<div class="breadcrumb-content text-center">
					<h2>ONE DAY CLASS</h2>
					<ul>
						<li>원데이 클래스</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="banner-area hm-4-padding">
			<div class="container-fluid">
				<div class="banner-img">
					<a href="#"><img src="resources/img/banner/16.png" alt=""></a>
				</div>
			</div>
		</div>
		
		<div class="shop-wrapper hm-3-padding pt-120 pb-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
					
						<div class="shop-topbar-wrapper">
							<c:if test="${user_id=='admin'}">
								<div class="shop-filter">
									<button class="write_oneday">글쓰기</button>
								</div>
							</c:if>
						</div>
						
					</div>
				</div>

				<!-- 여기부터 반복문 시작 -->
				<div class="grid-list-product-wrapper">
					<div class="product-grid product-view">
						<div class="row" id="pagingOne">

							<c:set var="num" value="${listcount-(page-1)*limit}" />
							<c:forEach var="o" items="${onedaylist}">
								<div class="product-width col-md-6 col-xl-4 col-lg-4">
									<div class="product-wrapper mb-35">
										<div style="display: none">
											<jsp:useBean id="now" class="java.util.Date" />
											<fmt:formatDate value="${now}" pattern="yyyyMMdd" />
											<fmt:parseDate value="${o.ONE_RDATE}" var="rdate" pattern="yyyy-MM-dd" />
											<fmt:formatDate value="${rdate}" pattern="yyyyMMdd" />
										</div>
										<c:if test="${rdate >= now}">
											<div class="product-img">
												<a href="./OnedayDetailAction.one?num=${o.ONE_INDEX}"> <img
													alt="oneday_main_poster" id="poster"
													src="resources/OBoardupload${o.SAVEFILE}" width="310px"
													height="375px">
												</a>
												<%-- <div style="display:none">
											<jsp:useBean id="now" class="java.util.Date"/>
											<fmt:formatDate value="${now}" pattern="yyyyMMdd" />
											<fmt:parseDate value="${o.ONE_RDATE}" var="rdate" pattern="yyyy-MM-dd" />
											<fmt:formatDate value="${rdate}" pattern="yyyyMMdd" />
											</div> --%>

												<div class="price-decrease">
													<span>모집중</span>
												</div>
											</div>
										</c:if>

										<c:if test="${rdate < now}">
											<div class="product-img end">
												<div class="posterWrapper">
													<a href="./OnedayDetailAction.one?num=${o.ONE_INDEX}">
														<img alt="oneday_main_poster" id="poster"
														src="resources/OBoardupload${o.SAVEFILE}" width="310px"
														height="375px" style="opacity:0.3">
													</a>
												</div>
												<div class="price-decrease">
													<span class="ERdate" style="background: black">종료</span>
												</div>
											</div>
										</c:if>
										<%-- <div class="product-action-3">
												<a class="action-plus-2" title="Quick View"
													href="./OnedayDetailAction.one?num=${o.ONE_INDEX}"> <span>상세정보
														보러가기</span>
												</a>
											</div> --%>

										<div class="product-content" >
											<div class="product-title-wishlist">
												<div class="product-title-3" style="text-align:center; margin:0 auto; font-size:25px;">
													<a href="./OnedayDetailAction.one?num=${o.ONE_INDEX}">
														❮ ${o.ONE_TITLE} ❯
													</a>
												</div>

											</div>
											<div class="product-peice-addtocart">
												<div class="description-oneday">- ${o.ONE_LINE} -</div>
												<span> 일시 : ${o.ONE_RDATE} | ${o.ONE_PRICE}원</span>
												<div>
													<span>장소 : ${o.ONE_LOCATE}</span>
												</div>
											</div>
										</div>
										<div class="product-list-details">
											<h2>
												<a href="product-details.html">Awesome Cloth Jewelry</a>
											</h2>
											<div class="product-price">
												<span class="old">$22.00 </span> <span>$19.00</span>
											</div>
											<p></p>
										</div>
									</div>
								</div>
							</c:forEach>



						</div>
					</div>
				</div>
			</div>

			<!-- 부트스트랩 제공 페이징-->
			<div class="pagination-style text-center mt-30" id="pagination">
				<ul class="paging_align">
					<c:if test="${page <= 1 }">
						<li><i class="ion-chevron-left" style="display: none;"></i></li>
					</c:if>
					<c:if test="${page > 1}">
						<li><a href="./OnedayList.one?page=${page-1}"><i
								class="ion-chevron-left"></i></a></li>
					</c:if>

					<c:forEach var="a" begin="${startpage}" end="${endpage}">
						<c:if test="${a == page }">
							<li><a class="active" href="#">${a}</a></li>
						</c:if>
						<c:if test="${a != page}">
							<li><a href="./OnedayList.one?page=${a}">${a}</a></li>
						</c:if>
					</c:forEach>

					<c:if test="${page >= maxpage}">
						<li><i class="ion-chevron-right" style="display: none;"></i></li>
					</c:if>
					<c:if test="${page < maxpage}">
						<li><a href="./OnedayList.one?page=${page+1}"> <i
								class="ion-chevron-right"></i>
						</a></li>
					</c:if>
				</ul>
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
			<!-- modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-hidden="true">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span class="ion-android-close" aria-hidden="true"></span>
				</button>
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-body">
							<div class="qwick-view-left">
								<div class="quick-view-learg-img">
									<div class="quick-view-tab-content tab-content">
										<div class="tab-pane active show fade" id="modal1"
											role="tabpanel">
											<img src="resources/img/quick-view/l1.jpg" alt="">
										</div>
										<div class="tab-pane fade" id="modal2" role="tabpanel">
											<img src="resources/img/quick-view/l2.jpg" alt="">
										</div>
										<div class="tab-pane fade" id="modal3" role="tabpanel">
											<img src="resources/img/quick-view/l3.jpg" alt="">
										</div>
									</div>
								</div>
								<div class="quick-view-list nav" role="tablist">
									<a class="active" href="#modal1" data-toggle="tab"> <img
										src="resources/img/quick-view/s1.jpg" alt="">
									</a> <a href="#modal2" data-toggle="tab"> <img
										src="resources/img/quick-view/s2.jpg" alt="">
									</a> <a href="#modal3" data-toggle="tab"> <img
										src="resources/img/quick-view/s3.jpg" alt="">
									</a>
								</div>
							</div>
							<div class="qwick-view-right">
								<div class="qwick-view-content">
									<h3>Handcrafted Supper Mug</h3>
									<div class="price">
										<span class="new">$90.00</span> <span class="old">$120.00
										</span>
									</div>
									<div class="rating-number">
										<div class="quick-view-rating">
											<i class="ion-ios-star red-star"></i> <i
												class="ion-ios-star red-star"></i> <i
												class="ion-ios-star red-star"></i> <i
												class="ion-ios-star red-star"></i> <i
												class="ion-ios-star red-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adip elit, sed
										do tempor incididun ut labore et dolore magna aliqua. Ut enim
										ad mi , quis nostrud veniam exercitation .</p>
									<div class="quick-view-select">
										<div class="select-option-part">
											<label>Size*</label> <select class="select">
												<option value="">- Please Select -</option>
												<option value="">900</option>
												<option value="">700</option>
											</select>
										</div>
										<div class="select-option-part">
											<label>Color*</label> <select class="select">
												<option value="">- Please Select -</option>
												<option value="">orange</option>
												<option value="">pink</option>
												<option value="">yellow</option>
											</select>
										</div>
									</div>
									<div class="quickview-plus-minus">
										<div class="cart-plus-minus">
											<input type="text" value="02" name="qtybutton"
												class="cart-plus-minus-box">
										</div>
										<div class="quickview-btn-cart">
											<a class="btn-style cr-btn" href="#"><span>add to
													cart</span></a>
										</div>
										<div class="quickview-btn-wishlist">
											<a class="btn-hover cr-btn" href="#"><span><i
													class="ion-ios-heart-outline"></i></span></a>
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






		<!-- 
		<script>
	     var date = new Date();
	     $('#poster').attr("src", "resources/upload${o.SAVEFILE}?"+date.getTime());
		</script>
 -->

		<!-- all js here -->
		<script src="resources/js/jquery-3.5.0.js"></script>
		<script src="resources/js/oneday_list.js"></script>
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