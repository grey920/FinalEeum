<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>해충 전문가 리스트</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/favicon.png">
	


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
<link rel="stylesheet" href="resources/css/service/expert_list.css">
<!-- js끝 -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
.breadcrumb-content{padding-top:0;margin-top:1em}
.price-decrease > span {font-size : 25px;
        									padding:5px 10px;
        									border-radius:10px;}
.pt-120{padding-top:50px !important}
</style>
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
		<div class="breadcrumb-area mt-37 hm-4-padding">
			<div class="container-fluid">
				<div class="breadcrumb-content text-center">
					<h2>해충 전문가 리스트</h2>
					
				</div>
			</div>
		</div>

		<div class="shop-wrapper hm-3-padding pt-120 pb-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="shop-topbar-wrapper">
							<div class="rows">

							</div>


							<div class="grid-list-options">
							</div>

						</div>
					</div>
				</div>

				<!-- 전문가 리스트 페이지 여기서 부터 시작 -->
				<c:if test="${listcount > 0 }">
					<div class="grid-list-product-wrapper">
						<div class="product-grid product-view">
							<div class="row">
								<c:forEach var="e" items="${expertlist}">
									<!-- 포폴 시작!!!!!!!!!!!!!!!! -->
								
								<div class="product-width col-md-6 col-xl-3 col-lg-4z" style="margin-left:30px; margin-right:30px">

										<div class="product-wrapper mb-35">
											<!-- 전문가 리스트 뽑아오기 시작 -->
											<a href="./insectDetail.service?expert=${e.EXPERT_ID}">
											<div class="product-img" style="text-align:center; margin:0 auto;">

												<div id="circle"  style="width:230px; padding-right:0; text-align:center; margin:0 auto">
												<input type="hidden" id="page" value="${page}" name="page">
												
													<img src="resources/expert_profile${e.PF_SAVEPROFILE}" style="width:100%;height:auto"
														id="userimg">

												</div>
												
												<p>
													<b id="expert_name">
													전문가&nbsp;${e.EXPERT_NAME}
													</b>
												</p>
												<b id="expert_intro">${e.PF_ONE}</b>
												<div class="modal fade" id="myModal" tabindex="-1"
													role="dialog" aria-hidden="true">

													<div class="modal-dialog" role="document">
														<div class="modal-content "
															style="font-weight: bold; width: 870px; height: 840px;">
															<div class="modal-body"
																style="padding: 50px; padding-top: 40px;">

																<!-- 부모 모달 -->
																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close" id="realclose"
																	style="position: relative; bottom: 410px; left: 770px;">
																	<span class="ion-android-close" aria-hidden="true"></span>
																</button>
																<div class="qwick-view-right ">
																
																	<div class="qwick-view-content" style="width: 550px;">
																	
																		<h3 style="font-weight: 700;">[청소]</h3>
																	
																	
																	
																
																		<img src="resources/img/blog/cat2.jpg" alt=""
																			id="userimg"
																			style="position: relative; left: 0px; right: 0px;">

																		<div class="price" style="margin: 0px;">
																			<h1
																				style="font-size: 60px; position: relative; right: 10px; left: 210px; bottom: 160px; font-family: NanumGothic; font-weight: 700;">안연지</h1>
																			<br>
																		</div>
																		<button class="heart_click2" data-toggle="modal"
																			data-target="#myModal1"
																			style="font-weight: 700; font-size: 16px;">
																			<i id="fa-pencil-square-o"
																				class="fa fa-pencil-square-o"></i> <b
																				style="color: black;">견적요청</b>
																		</button>
																		<button class="heart_click1">
																			<i id="fa-pencil-square-o"
																				class="fa fa-pencil-square-o"></i> <b
																				style="color: black;">상세페이지</b>
																		</button>
																		<div class="rating-number">
																			<div class="quick-view-rating">
																				<i class="ion-ios-star red-star"></i> <i
																					class="ion-ios-star red-star"></i> <i
																					class="ion-ios-star red-star"></i> <i
																					class="ion-ios-star red-star"></i> <i
																					class="ion-ios-star red-star"></i> <span>4.0</span>
																			</div>
																		</div>
																		<span id="details_text">서비스 상세설명</span><br> <br>
																		<table
																			style="border: 1px solid lightgray; position: relative; width: 650px; height: 320px; bottom: 100px;">
																			<tr>
																				<th style="font-size: 20px; font-weight: 300;">
																					이사입주청소<br>
																					(싱크대상판연마코팅.욕실나노코팅.마루왁스코팅.찌든때.묵은때.물때.기름때.곰팡이. 스티커 제거
																					)<br> 신축입주청소<br> ( 화학성분 유해물질 미세먼지 제거
																					싱크대상판코팅.욕실나노코팅 )<br>
																				</th>
																			</tr>

																		</table>


																		<div class="quickview-btn-wishlist"></div>

																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>

												<!-- 전체 리스트로 조회한 경우 전문가별 카테고리가 나옴. -->
												
												<div class="price-decrease">
												
												<c:if test="${e.PF_CATE ==  0}">
													<span>청소</span>
												</c:if>
												<c:if test="${e.PF_CATE ==  1}">
													<span>해충</span>
												</c:if>
												<c:if test="${e.PF_CATE ==  2}">
													<span>수리</span>
												</c:if>
												
												</div>

											</div>
											</a>
										</div>

									</div>

								</c:forEach>
							

							</div>

							<!-- 페이징 -->
							<div class="pagination-style text-center mt-30">

								<ul>
									<!-- 1. 개수가  1보다 많거나 적을때-->
									<c:if test="${page <= 1 }">
										<i class="ion-chevron-left" style="visibility: hidden;"></i>
									</c:if>

									<!-- 2. 개수가 1 보다 많을때  -->
									<c:if test="${page > 1}">
										<li class="ion-chevron-left"><a
											href="./expert_insect.service?page=${page-1}"></a></li>
									</c:if>


									<c:forEach var="a" begin="${startpage}" end="${endpage}">
										<c:if test="${a == page }">
											<!-- 현재페이지와 같으면 버튼이 회색되게 하는 것  -->
											<li><a href="#" class="active">${a}</a></li>
										</c:if>
										<!-- 현재 페이지와 같지 않다면 -->
										<c:if test="${a != page}">
											<li><a href="./expert_insect.service?page=${a}">${a}</a></li>
										</c:if>
									</c:forEach>

									<c:if test="${page >= maxpage}">
										<li class="ion-chevron-right"><a></a></li>
									</c:if>

									<c:if test="${page < maxpage}">
										<li class="ion-chevron-right"><a
											href="./expert_insect.service?page=${page+1}"></a></li>
									</c:if>
								</ul>
							</div>
							<!-- 페이징 -->


						</div>
					</div>
				</c:if>
				<!-- 전문가 리스트 페이지 끝 -->

				<!-- 없는 경우 -->
				<c:if test="${listcount == 0}">
					<font size=5>등록된 전문가가 없습니다.</font>
				</c:if>
				<!-- 없는 경우 -->
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
	<script src="resources/js/service/expert_list.js"></script>

</body>
</html>
