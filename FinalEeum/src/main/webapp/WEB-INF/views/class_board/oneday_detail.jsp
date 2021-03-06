<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>원데이클래스 상세페이지</title>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
<%@ include file="../header.jsp" %>
<style>
.oneday-title_h1 {
	font-size: 38px;
}

.oneday-title_h2 {
	font-size: 20px;
}

.oneday-title_h3 {
	font-size: 24px;
	margin: 50px 0 30px 0;
}

.quickview-btn-cart {
	margin: 30px 0;
}

.dec-img, .oneday_poster {
	width: 597px;
	height: 597px;
}

#oneday_submit {
	position: absolute;
	bottom: 0;
	width: 70%;
	text-align: center;
}

.button {
	border: none;
}

.custom-class {
	width: 70%;
}

#closebtn {
	margin-right: 0px;
	font-size: 30px;
	margin-left: 0px;
	color: grey;
}

.modal-apply {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.modal-footer{
    display: flex;
    justify-content: center;
}
.seat{font-size:18pt; margin-top:40px}
.pt-130{padding-top:30px}
.btn-style{margin-top:20px !important;
       			margin-right:0 !important; 
       			font-size:18px;
         		border-radius:20px;
         		background-color:white;
         		color:#72A0E0;
         		border:2px solid #72A0E0;
         		}
.btn-style:hover{background-color:#72A0E0;
         				color:white;
         				border:2px solid #72A0E0;
         				}
.btn-style.end{color:white;
						background-color:#C1C8D9;
						border:2px solid #C1C8D9}
h1 {margin-top:30px}
h5{margin-top:20px; color:#575555}
h2, h3{margin-top:50px}
</style>
</head>
<body>
	<div class="wrapper">
		<!-- header start -->
		<div class="header-height"></div>

		<!-- blog-area start -->
		<div class="blog-area pt-130 pb-125 hm-3-padding">
			<div class="container-fluid">
				<div class="row">


					<div class="col-lg-12 col-xl-12">
						<div class="blog-details-wrapper">
							<div class="single-blog-wrapper">

								<div class="dec-img-wrapper">
									<div class="row">
										<div class="col-md-6">
											<!-- 포스터부분 -->
											<div class="dec-img">
												<img src="resources/OBoardupload${onedaydata.SAVEFILE}"
													alt="oneday_poster" class="oneday_poster"
													style="height: 500px; width: 500px; position: absolute; right: 20px;">
											</div>
										</div>
										<div class="col-md-6" style="height: 500px;">
											<!-- 중요 정보 부분  -->
											<div class="dec-img dec-mrg">
<%-- 												<p>
													<a href="./OnedayList.one">원데이 클래스</a> >
													${onedaydata.ONE_TYPE}
												</p> --%>
												<h1 class="oneday-title oneday-title_h1">${onedaydata.ONE_TITLE}</h1>
												<h5 class="oneday-title oneday-title_h4">${onedaydata.ONE_LINE}</h5>
												<h2 class="oneday-title oneday-title_h2">일시 |
													${onedaydata.ONE_RDATE}</h2>
												<h2 class="oneday-title oneday-title_h2">장소 |
													${onedaydata.ONE_LOCATE}</h2>
												<h2 class="oneday-title oneday-title_h2">가격 | ${onedaydata.ONE_PRICE}원</h2>
												<div class="seat">정원 ${onedaydata.ONE_SEAT}명&nbsp;&nbsp;|&nbsp;&nbsp;가능 인원 ❛ ${onedaydata.ONE_SEAT - classCount} ❜ 명</div>
													<div style="display:none">
											<jsp:useBean id="now" class="java.util.Date"/>
											<fmt:formatDate value="${now}" pattern="yyyyMMdd" />
											<fmt:parseDate value="${onedaydata.ONE_RDATE}" var="rdate" pattern="yyyy-MM-dd" />
											<fmt:formatDate value="${rdate}" pattern="yyyyMMdd" />
											</div>
											<c:if test="${rdate >= now}">
												<button class="btn-style button button-box" data-toggle="modal" data-target="#applyModal">
													<c:if test="${user_id != null}">
													<span>신청하기</span>
													</c:if>
													<c:if test="${user_id == null}">
													<span>로그인시 가능합니다</span>
													</c:if>
												</button>
											</c:if>
											<c:if test="${rdate < now}">
											<button class="btn-style end button-box"> 종료된 이벤트입니다</button>
											</c:if>
											
												<c:if test="${user_id != null}">
												<!-- Modal -->
												<div class="modal fade" id="applyModal" tabindex="-1"
													role="dialog" aria-labelledby="exampleModalCenterTitle"
													aria-hidden="true">
													<div
														class="modal-dialog modal-dialog-centered custom-class"
														role="document">
														<div class="modal-content"
															style="width: 70%; margin: 0 auto;">
															<div class="modal-header">
																<h4 class="modal-title" id="exampleModalLongTitle"
																	style="margin: 0 auto">${onedaydata.ONE_TITLE}</h4>
																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close" id="closebtn">
																	<span>&times;</span>
																</button>
															</div>
															<div class="modal-body modal-apply"
																style="margin: 0 auto">
																<h5 style="margin-top: 0px;">${user_id}님💕</h5>
																<p>${onedaydata.ONE_RDATE}에 열리는 </p> 
																<p><b>${onedaydata.ONE_TITLE}클래스</b>에 신청하시겠습니까?
																</p>
																<img src="resources/OBoardupload${onedaydata.SAVEFILE}"
																	style="height: 200px; width: 200px;">
															</div>
															<div class="modal-footer">
																<a href="./OnedayApply.one?num=${onedaydata.ONE_INDEX}">
																	<button type="button" class="btn btn-apply"
																		style="background-color: #f3a395; color: #fff">신청</button>
																</a>
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">취소</button>
															</div>
														</div>
													</div>
												</div>
												</c:if>
												<!-- Modal end -->
												
												<c:if test="${user_id == null}">
												<div class="modal fade" id="applyModal" tabindex="-1"
													role="dialog" aria-labelledby="exampleModalCenterTitle"
													aria-hidden="true">
													<div
														class="modal-dialog modal-dialog-centered custom-class"
														role="document">
														<div class="modal-content"
															style="width: 70%; margin: 0 auto;">
															<div class="modal-body modal-apply"
																style="margin: 0 auto">
																<p> 로그인 페이지로 이동합니다 </p>
															</div>
															<div class="modal-footer">
																<a href="./login.net">
																	<button type="button" class="btn btn-apply"
																		style="background-color: #f3a395; color: #fff">네</button>
																</a>
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">취소</button>
															</div>
														</div>
													</div>
												</div>
												</c:if>
												
											</div>


										</div>
									</div>
								</div>
							</div>
							<p>${onedaydata.ONE_CONTENT}</p>
						</div>
						<hr>

						<c:if test="${user_id=='admin1234'}">
							<a href="./OnedayModifyView.one?num=${onedaydata.ONE_INDEX}"
								class="nounderline">
								<button class="btn-style button">수정</button>
							</a>
							<%-- href의 주소를 #으로 설정합니다. --%>

							<a href="#" class="nounderline">
								<button class="btn-style button" data-toggle="modal"
									data-target="#modalConfirmDelete"
									style="position: absolute; right: 0;">삭제</button>
							</a>
						</c:if>
					</div>
				</div>

				<%--modal 시작 --%>
				<!--Modal: modalConfirmDelete-->
				<div class="modal fade" id="modalConfirmDelete" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog modal-sm modal-notify modal-danger"
						role="document">
						<!--Content-->
						<div class="modal-content text-center"
							style="width: 40%; margin: 0 auto;">
							<!--Header-->
							<div class="modal-header d-flex justify-content-center">
								<p class="heading">정말로 삭제하시겠습니까?</p>
							</div>

							<!--Body-->
							<div class="modal-body">
								<i class="fa fa-times fa-4x animated rotateIn"
									style="width: auto; margin: 0 auto; color: #dc3545;"></i>
							</div>

							<!--Footer-->
							<div class="modal-footer flex-center">
								<form name="deleteForm" action="OnedayDeleteAction.one"
									method="post">
									<input type="hidden" name="num" value="${param.num }"
										id="oneday_num">
									<button type="submit" class="btn btn-outline-danger">네</button>
									<button type="button" class="btn  btn-danger waves-effect"
										data-dismiss="modal" style="color: white;">아니오</button>
								</form>
							</div>

						</div>
						<!--/.Content-->
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