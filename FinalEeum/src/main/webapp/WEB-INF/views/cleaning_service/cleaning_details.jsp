<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Nokshi - Minimalist eCommerce HTML5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.png">

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

<link rel="stylesheet" href="resources/css/cleaning/expert_details.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- 모달 관련 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%@ include file="../header.jsp" %>
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


		<div class="banner-area hm-4-padding">
			<div class="container-fluid">
				<!-- 사람이름 -->
				<div class="banner-img">
						<c:set var="po" value="${portfolio}"/>
					<div class="grad">
						<img src="resources/expert_profile${po.PF_SAVEPROFILE}" alt="" id="userimg">
					</div>
					<b
						style="font-size: 50px; position: relative; left: 680px; bottom: 190px;">${expertdata.expert_name}
					</b>

					<!-- 전문가 아이디 -->
					<input type="hidden" value="${expertdata.expert_id}" id="EXPERT_ID">
					<!-- 사용자 아이디 -->
					<input type="hidden" value="${user_id}" id="USER_ID">



					<div class="heart_click">
						<c:if test="${like ==1 }">
							<i id="fa-heart-o" class="fa fa-heart"
								style="position: relative; left: 13px; top: 12px;"></i>
							<span
								style="position: relative; left: 20px; font-size: 17px; top: 12px; font-weight: 700;">찜하기</span>
						</c:if>
						<c:if test="${like == 0 }">
							<i id="fa-heart-o" class="fa fa-heart-o"
								style="position: relative; left: 13px; top: 12px;"></i>
							<span
								style="position: relative; left: 20px; font-size: 17px; top: 12px; font-weight: 700;">찜하기</span>
						</c:if>
					</div>


					<button style="font-weight: 700; font-size: 16px;"
						data-toggle="modal" data-target="#myModal1" class="heart_click2"
						id="request_btn">
						<i id="fa-pencil-square-o" class="fa fa-pencil-square-o"></i> <b
							style="color: black;">견적요청</b>
					</button>


					<div class="name_tag">
						<!-- 사람 이름 -->
						<i class="fa fa-check" style="position: relative; left: 135px;"></i>
						<b style="font-size: 25px; position: relative; left: 150px;">총
							'${RequestCount}' 건 예약</b> <i class="fa fa-smile-o"
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
							style="font-size: 24px; position: relative; left: 150px;">
							<c:set var="PF_TIME" value="${portfolio.PF_TIME}"/>
							${fn:substring(PF_TIME,0,2)}시 &nbsp;~&nbsp; ${fn:substring(PF_TIME,3,5)}시&nbsp;까지 연락 가능</b>


					</div>

					<!-- 모달 -->
					<%@include file="expert_modal.jsp" %>


				</div>


				<hr class="hr_1">
				<!-- 버튼 -->
				<!-- 후기 수 hidden 으로 -->
				<input type="hidden" value="${count}" id="count">

				<hr class="hr_2">
				<span
					style="font-size: 40px; font-weight: 700; position: relative; left: 240px; top: 60px;">서비스
					상세설명</span>
				<div class="details1">
					<p style="font-size: 22px; color: black; white-space: inherit">
						${po.PF_DESC}
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