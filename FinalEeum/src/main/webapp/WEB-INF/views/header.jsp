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
<link href="resources/img/favicon.png" rel="shortcut icon" type="image/x-icon">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
<style>
.header-area{background-color:white}
.header-site-icon{padding-right:50px !important}
.header-site-icon .header-login>li> ul > li > span {color:#72A0E0;}
</style>
<body>
		<div class="header-area transparent-bar">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-sm-5 col-5" style="padding-left:50px;padding-right:0">
						<div class="sticky-logo">
							<!-- 스크롤내렸을 때,메뉴바 로고  -->
							<a href="main"><img src="resources/img/logo/eeum_logo.png" style="width: 140px" /></a>
						</div>
						<div class="logo" style="margin-top: 30px">
							<!-- 반응형 웹 크게했을 때 로고 -->
							<a href="main"><img
								src="resources/img/logo/eeum_logo.png" style="width: 140px" /></a>
						</div>
					</div>
					<div class="col-lg-8 col-md-8 d-none d-md-block"
							style="margin-top: 29px; padding-left: 0px; padding-right: 10px">
						<div class="logo-menu-wrapper text-center">
							<div class="main-menu">
								<nav>
									<ul>
										<li><a href="about_us.net">이:음 소개</a></li>
										
										<c:choose>
											<c:when test="${empty user_id && empty expert_id}">
												<li><a href="no_id.service">서비스<i class="ion-ios-arrow-down" style="margin-left: 5px"></i></a>
													<ul style="text-align: center;">
														<li style="margin-bottom: 10px;"><a href="no_id.service">수리</a></li>
														<li style="margin-bottom: 10px;"><a href="no_id.service">청소</a></li>
														<li><a href="no_id.service">방역</a></li>
													</ul>
												</li>
											</c:when>
											<c:otherwise>
											<li><a href="expert.service">서비스<i class="ion-ios-arrow-down" style="margin-left: 5px"></i></a>
												<ul style="text-align: center;">
													<li style="margin-bottom: 10px;"><a href="expert_repair.service">수리</a></li>
													<li style="margin-bottom: 10px;"><a href="expert_cleaning.service">청소</a></li>
													<li><a href="expert_insect.service">방역</a></li>
												</ul>
											</li>
											</c:otherwise>
										</c:choose>

										<li><a href="OnedayList.one">원데이 클래스</a></li>
										<li><a href="FAQ.net">FAQ</a></li>
										<li><a href="Report.net">문의</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-7 col-7" style="padding-right:20px">
						<div class="header-site-icon">
						
							<c:if test="${empty user_id && empty expert_id}">
							<div class="header-login same-style"
								style="margin-left: 13px; margin-right: 13px">
								<li><a href="login.net"><img src="resources/img/header/user.png"
																						style="margin-bottom: 30px; width: 30px; filter: saturate(80%);margin-right:50px" /></a>
									<ul style="width:230px">
										<li>같이 이음해요 :)</li>
										<li><a href="login.net">로그인</a></li>
										<li><a href="userJoin.net">사용자 회원가입</a></li>
										<li><a href="expertJoin.net">전문가 회원가입</a></li>
									</ul>
								</li>
							</div>
							</c:if>
							
							<c:if test="${!empty user_id && empty expert_id}">
							<div class="header-login same-style"
								style="margin-left: 13px; margin-right: 13px">
								<li>
									<c:choose>
										<c:when test="${user_id eq 'admin1234'}">
											<a href="admin.net">
										</c:when>
										<c:otherwise>
											<a href="userpage.net">
										</c:otherwise>
									</c:choose>
									<img src="resources/img/header/user.png"
											style="margin-bottom: 30px; width: 30px; filter: saturate(80%);" />
									</a>
									<ul style="width:240px">
										<li><img src="resources/profile${user_saveprofile}" style="width:15%; height:auto;border-radius:50%;">&nbsp;&nbsp;${user_nick}&nbsp;님</li>
										<li><a href="userpage.net">나의 정보</a></li>
										<c:if test="${user_id eq 'admin1234'}">
										<li><a href="admin.net">관리자 페이지</a></li>
										</c:if>
										<li><a href="logout.net">이음 나가기</a></li>
									</ul></li>
							</div>
							<div class="header-cart same-style" style="margin-left: 13px; margin-right: 13px">
								<a href="messageReceive.net"><img src="resources/img/header/chat.png" style="width: 30px; filter: saturate(80%);"></a>
							</div>
							</c:if>
							
							<!-- USER_ID가 admin 계정일 때 관리자 페이지 이동하기 -->
							
							<c:if test="${!empty expert_id && empty user_id}">
							<div class="header-login same-style"
								style="margin-left: 13px; margin-right: 13px">
								<li><a href="expertpage.net"><img src="resources/img/header/user.png"
																						style="margin-bottom: 30px; width: 30px; filter: saturate(80%);" /></a>
									<ul style="width:200px">
										<li>
											<span>
											<c:choose>
												<c:when test="${pf_grade ==  '0'}">
													디딤돌¹
												</c:when>
												<c:when test="${pf_grade ==  '1'}">
													마루²
												</c:when>
												<c:when test="${pf_grade ==  '2'}">
													우주³
												</c:when>
												<c:when test="${pf_grade ==  '3'}">
													용마루⁴
												</c:when>
												<c:otherwise>
													${pf_grade}
												</c:otherwise>
											</c:choose>
											</span>
										&nbsp;${expert_name}</li>
										<li><a href="expertpage.net">나의 정보</a></li>
										<li><a href="logout.net">이음 나가기</a></li>
									</ul>
								</li>
							</div>
							<div class="header-cart same-style" style="margin-left: 13px; margin-right: 13px">
								<a href="messageReceive.net"><img src="resources/img/header/chat.png" style="width: 30px; filter: saturate(80%);"></a>
							</div>
							</c:if>
							
							<!-- 검색 
							<div class="header-search same-style" style="margin-left: 10px; margin-right: 13px">
								<a href="login-register.html"><img src="resources/img/header/search.png"
																						style="width: 30px; filter: saturate(80%);"></a>
							</div>-->
						</div>
					</div>
					<div class="mobile-menu-area col-12">
						<div class="mobile-menu">
							<nav id="mobile-menu-active">
								<ul class="menu-overflow">
									<li><a href="about_us.net">이:음 소개</a>
									
							<c:choose>
									<c:when test="${empty user_id && empty expert_id}">
										<li><a href="no_id.service">서비스</a>
											<ul>
												<li><a href="no_id.service">수리</a></li>
												<li><a href="no_id.service">청소</a></li>
												<li><a href="no_id.service">방역</a></li>
											</ul>
										</li>
									</c:when>
									<c:otherwise>
									<li><a href="expert.service">서비스</a>
										<ul>
											<li><a href="expert_repair.service">수리</a></li>
											<li><a href="expert_cleaning.service">청소</a></li>
											<li><a href="expert_insect.service">방역</a></li>
										</ul>
									</li>
									</c:otherwise>
							</c:choose>
							
									<li><a href="OnedayList.one">원데이 클래스</a></li>
									<li><a href="FAQ.net">FAQ</a></li>
									<li><a href="Report.net">문의</a></li>
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