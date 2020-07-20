<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="UTF-8">
<title>사이트 소개</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
<%@include file="header.jsp"%>
<style>
.img-wrapper>img {
	width: 1700px;
	height: auto;
	max-width: 1700px;
	max-height: 500px;
	margin-left: 50px;
	margin-right: 50px;
}

.services-icon>img{
	width:60px;
	height:60px;
}

.testimonial-icon {
	font-size: 25px;
}

.single-testimonial text-center>img {
	width: 90px;
	height: 90px;
}

.servies-icon>.lastone>img{
	width:50px;
	height:55px;
}

.team-content{
	text-align:center;
}

.owl-carousel .owl-item .single-testimonial img {
	width:100px;
	height:auto;
}
</style>
</head>
<body>
	<div class="breadcrumb-area mt-37 hm-4-padding">
		<div class="container-fluid">
			<div class="breadcrumb-content text-center">
				<h2>이:음 소개</h2>
			</div>
		</div>
	</div>
	<!-- <div class="banner-area hm-4-padding">
		<div class="container-fluid">
			<div class="banner-img">
				<img src="assets/img/banner/cleaning" alt="">
			</div>
		</div>
	</div> -->
	<div class="about-us-area hm-3-padding pt-125 pb-125">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<div class="about-us-title">
						<h3 style="font-weight:bold">
							여성 공동체를 지향하는<br>우리는 이음입니다.
						</h3>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about-us-details">
						<p class="about-us-pera-mb">일단 보류 </p>
						<p>이음은 이런 불편함을 해소하기 위한 사이트입니다. 이음은 여성만 가입 가능합니다. 
						검증된 전문가들에게 서비스를 요청할 수 있습니다. </p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="services-area hm-3-padding h3-services pb-100">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="single-services firstone mb-30">
						<div class="services-icon">
							<img alt="" src="resources/img/icon-img/friends.png">
						</div>
						<div class="services-text">
							<!-- <h5>FREE SHIPPING</h5> -->
							<p>여성만 가입 가능합니다.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-services secondone mb-30">
						<div class="services-icon">
							<img alt="" src="resources/img/icon-img/help.png">
						</div>
						<div class="services-text">
							<!-- <h5>ONLINE SUPPORT</h5> -->
							<p>여성들의 연대에 동참합니다</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-services thirdone mb-30">
						<div class="services-icon">
							<img alt="" src="resources/img/icon-img/search.png">
						</div>
						<div class="services-text">
							<!-- <h5>MONEY RETURN</h5> -->
							<p>Back guarantee under 5 days</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-services lastone mb-30">
						<div class="services-icon">
							<img alt="" src="resources/img/icon-img/magnet.png">
						</div>
						<div class="services-text">
							<!-- <h5>MEMBER DISCOUNT</h5> -->
							<p>사용자 사이의 매칭</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="testimonials-area">
		<div class="container-fluid">
			<div class="testimonial-active owl-carousel pt-90 pb-75" style="background:#f2f7ff">
				<div class="single-testimonial text-center">
					<img alt="" src="resources/img/team/hammer.png">
					<p>수도 설비, 전기 등 집 안에서 혼자 하기 버거웠던 수리를 서비스 요청할 수 있습니다.</p>
					<div class="testimonial-icon">
						<i class="ti-direction-alt"></i>
					</div>
				</div>
				<div class="single-testimonial text-center">
					<img alt="" src="resources/img/team/mop.png">
					<p>아무리 청소해도 조금의 찝찝함이 남으셨나요? 이를 해소하기 위한 청소 서비스입니다.<br>
					청소 분야의 전문가의 손길로 깨끗하고 정돈된 집을 만나보세요</p>
					<div class="testimonial-icon">
						<i class="ti-direction-alt"></i>
					</div>
				</div>
				<div class="single-testimonial text-center">
					<img alt="" src="resources/img/team/pesticide.png">
					<p>무더운 여름 뿐만 아니라 사시사철 삶의 질을 떨어뜨리는 해충들을 어떻게 박멸하는지 고민하셨나요?<br>
					ㅇㅇㅇㅇㅇ</p>
					<div class="testimonial-icon">
						<i class="ti-direction-alt"></i>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="team-area hm-3-padding pt-130 pb-95">
		<div class="container-fluid">
			<div class="section-title-2 text-center mb-55">
				<h2 class="mb-12">개발팀 소개</h2>
				<p>이:음을 기획 및 개발한 가람휘 팀을 소개합니다</p>
			</div>
			<div class="row">
			<div class="col-lg-1 col-md-6 col-12">
			</div>
				<div class="col-lg-2 col-md-6 col-12">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<img src="resources/img/team/cat.png" alt="">
						</div>
						<div class="team-content">
							<h4>정겨운</h4>
							<span style="text-align:center;">팀 프로젝트 매니저 / <br>기획 및 개발 담당</span>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-12">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<img src="resources/img/team/dog.png" alt="">
						</div>
						<div class="team-content">
							<h4>박우진</h4>
							<span>기획 및 개발 담당</span>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-12">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<img src="resources/img/team/bear.png" alt="">
						</div>
						<div class="team-content">
							<h4>안연지</h4>
							<span>기획 및 개발 담당</span>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-12">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<img src="resources/img/team/turtle.png" alt="">
						</div>
						<div class="team-content">
							<h4>안현빈</h4>
							<span>개발담당</span>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-12">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<img src="resources/img/team/turtle.png" alt="">
						</div>
						<div class="team-content">
							<h4>장한솔</h4>
							<span>기획 및 개발 담당</span>
						</div>
					</div>
				</div>
				<div class="col-lg-1 col-md-6 col-12">
				</div>
			</div>
		</div>
	</div>


	<!-- all js here -->
	<script src="resources/js/jquery-3.5.0.js"></script>
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