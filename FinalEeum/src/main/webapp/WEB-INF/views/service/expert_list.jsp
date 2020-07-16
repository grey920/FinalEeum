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
					<h2>Shop Page</h2>
					<ul>
						<li><a href="#">home</a></li>
						<li>Shop page</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="banner-area hm-4-padding">
			<div class="container-fluid">
				<div class="banner-img">
					<a href="#"><img src="resources/img/banner/16.jpg" alt=""></a>
				</div>
			</div>
		</div>
		<div class="shop-wrapper hm-3-padding pt-120 pb-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="shop-topbar-wrapper">
							<div class="rows">
								<span>줄보기</span> <select class="form-control" id="viewcount">
									<option value="12">12</option>
									<option value="16">16</option>
									<option value="20">20</option>
									<option value="24">24</option>
									<option value="28" selected>28</option>
								</select>
							</div>


							<div class="grid-list-options">
								<ul class="view-mode">
									<li class="active"><a href="#product-grid"
										data-view="product-grid"><i class="ion-grid"></i></a></li>
									<li><a href="#product-list" data-view="product-list"><i
											class="ion-navicon"></i></a></li>
								</ul>
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
								<div class="product-width col-md-6 col-xl-3 col-lg-4z">

										<div class="product-wrapper mb-35">
											<!-- 전문가 리스트 뽑아오기 시작 -->

											<div class="product-img">

												<div id="circle">
												<a href="./expert_details?page=${page}&expert=${e.EXPERT_ID}">
													<img src="resources/profile${e.EXPERT_PROFILE}" alt=""
														id="userimg"></a>

												</div>
												<b id="expert_name">${e.EXPERT_NAME }</b> <b
													style="font-size: 10px; position: relative; top: 60px; left: 100px;">전문가</b>
												<br> <b id="expert_intro">뭐든지 깔끔하게 만들어 드립니다.</b>
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
													<span style="font-family: NanumGothic; font-weight: bold;">[청소]</span>
												</div>
												<div class="product-action-3">
													<a class="action-plus-2" title="간략히 보기" data-toggle="modal"
														data-target="#myModal" 
														style="text-decoration: none;"> <i class="ti-plus"
														style="position: relative; width: 20px; height: 20px; left: 20px; bottom: 8px;"></i>
														<span style="color: white;">간략히 보기</span>
													</a>
												</div>

											</div>

										</div>

										<hr id="hr_3">
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
											href="./expert.list?page=${page-1}"></a></li>
									</c:if>


									<c:forEach var="a" begin="${startpage}" end="${endpage}">
										<c:if test="${a == page }">
											<!-- 현재페이지와 같으면 버튼이 회색되게 하는 것  -->
											<li><a href="#" class="active">${a}</a></li>
										</c:if>
										<!-- 현재 페이지와 같지 않다면 -->
										<c:if test="${a != page}">
											<li><a href="./expert.list?page=${a}">${a}</a></li>
										</c:if>
									</c:forEach>

									<c:if test="${page >= maxpage}">
										<li class="ion-chevron-right"></a></li>
									</c:if>

									<c:if test="${page < maxpage}">
										<li class="ion-chevron-right"><a
											href="./expert.list?page=${page+1}"></a></li>
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


		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-hidden="true">

			<div class="modal-dialog" role="document">
				<div class="modal-content "
					style="font-weight: bold; width: 870px; height: 840px;">
					<div class="modal-body" style="padding: 50px; padding-top: 40px;">

						<!-- 부모 모달 -->
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close"
							style="position: relative; bottom: 410px; left: 770px;">
							<span class="ion-android-close" aria-hidden="true"></span>
						</button>
						<div class="qwick-view-right ">
							<div class="qwick-view-content" style="width: 550px;">
								<h3 style="font-weight: 700;">[청소]</h3>
								<!-- 사진 테두리 -->
								<img src="resources/img/blog/cat2.jpg" alt="" id="userimg"
									style="position: relative; left: 0px; right: 0px;">

								<div class="price" style="margin: 0px;">
									<h1
										style="font-size: 60px; position: relative; right: 10px; left: 210px; bottom: 160px; font-family: NanumGothic; font-weight: 700;">안연지</h1>
									<br>
								</div>
								<div class="rating-number"
									style="position: relative; bottom: 160px; left: 220px; right: 0px;">
									<div class="quick-view-rating">
										<i class="ion-ios-star red-star"></i> <i
											class="ion-ios-star red-star"></i> <i
											class="ion-ios-star red-star"></i> <i
											class="ion-ios-star red-star"></i> <i
											class="ion-ios-star red-star"></i> <span>4.0</span>
									</div>
								</div>
								<span
									style="font-size: 45px; position: relative; right: 50px; bottom: 100px; font-family: NanumGothic; font-weight: 700; color: black;">서비스
									상세설명</span><br> <br>
								<table
									style="border: 1px solid lightgray; position: relative; width: 650px; height: 320px; bottom: 100px;">
									<tr>
										<th style="font-size: 20px; font-weight: 300;">이사입주청소<br>
											(싱크대상판연마코팅.욕실나노코팅.마루왁스코팅.찌든때.묵은때.물때.기름때.곰팡이. 스티커 제거 )<br>
											신축입주청소<br> ( 화학성분 유해물질 미세먼지 제거 싱크대상판코팅.욕실나노코팅 )<br>
										</th>
									</tr>

								</table>


								<div class="quickview-btn-wishlist">
									<button class="btn-hover cr-btn btn" data-toggle="modal"
										data-target="#myModal1"
										style="position: relative; bottom: 40px; padding: 0px; width: 130px;">
										<span style="color: white; position: relative;">견적요청</span>
									</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 서브 모달  -->
		<div id="myModal1" class="modal modal-child" data-backdrop-limit="1"
			tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
			aria-hidden="true" data-modal-parent="#myModal">
			<div class="modal-dialog modal-lg">
				<div class="modal-content" style="height: 700px;">
					<!-- body -->
					<div class="modal-body"
						style="padding: 50px; padding-top: 40px; width: 440px; height: 750px;">

						<!-- 부모 모달 -->
						<button type="button" class="close" data-dismiss="modal"
							id="close1" aria-label="Close"
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
									<div class="row">
										<div class="col-md-12 mx-0">
											<form id="msform" action="" method="post"
												enctype="multipart/form-data">
												<!-- progressbar -->
												<ul id="progressbar">
													<li class="active" id="account"><strong>건물 유형</strong></li>
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
														<span>빌라/연립주택</span> <input type="radio" name="structure1"
															id="structure1" style="position: relative; left: 197px;">
														<span style="position: relative; left: 202px;">빌딩/상가</span><br>
														<input type="radio" name="structure1" id="structure1"><span>기타</span><br>
														<textarea rows="4" cols="20" maxlength="50"
															style="border: 1px solid lightgray;" id="textarea1" name="textarea1"></textarea>
														<b class="page_number">1/4</b>
													</div>
													<!-- 버튼 -->
													<input type="button" name="next" class="next action-button"
														value="다음" id="next" />

												</fieldset>
												<fieldset style="display: none;">

													<div class="form-card " style="height: 400px;">
														<!-- 여기 라디오 버튼 : form -->
														<b>* 선택해주세요.</b><br> <br> <input type="radio"
															name="structure1" id="structure1" checked="checked"><span>전자제품
															수리</span> <input type="radio" name="structure1" id="structure2"
															style="position: relative; left: 232px;"> <span
															style="position: relative; left: 239px;">가구수리</span><br>
														<input type="radio" name="structure1" id="structure2">
														<span>열쇠/도어락 수리</span> <input type="radio"
															name="structure1" id="structure2"
															style="position: relative; left: 199px;"> <span
															style="position: relative; left: 205px;">전기 배선 수리</span><br>
														<input type="radio" name="structure1" id="structure2">
														<span>방충망 및 방범창 수리</span> <input type="radio"
															name="structure1" id="structure2"
															style="position: relative; left: 155px;"> <span
															style="position: relative; left: 161px;">문 수리</span><br>
														<input type="radio" name="structure1" id="structure2"
															style="position: relative; left: 396px;"> <span
															style="position: relative; left: 400px;">수도 관련 수리</span>
														<input type="radio" name="structure1" id="structure2"
															style="position: relative; right: 173px;"> <span
															style="position: relative; right: 174px;">기타</span><br>
														<textarea rows="4" cols="20" maxlength="50"
															style="border: 1px solid lightgray;"></textarea>
														<b class="page_number">2/4</b>
													</div>
													<!-- 버튼 -->
													<input type="button" name="previous"
														class="previous action-button-previous" value="이전" /> <input
														type="button" name="next" class="next action-button"
														value="다음" />
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
														class="previous action-button-previous" value="이전" /> <input
														type="button" name="next" class="next action-button"
														value="다음" />
												</fieldset>
												<fieldset style="display: none;">
													<div class="form-card">
														<b>* 공식적인 요청 외 전문가에게 무리한 요구시 요청이 거절될 수 있습니다.</b>
														<textarea rows="10" cols="20" maxlength="70"
															style="border: 1px solid lightgray;">내용을 입력하세요.</textarea>

														<b class="page_number">4/4</b>
													</div>
													<input type="button"
														class="previous action-button-previous" value="이전" /> <input
														type="button" name="finish" class="action-button"
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
