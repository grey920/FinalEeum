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

.services-icon>img {
	width: 60px;
	height: 60px;
}

.testimonial-icon {
	font-size: 25px;
}

.single-testimonial text-center>img {
	width: 90px;
	height: 90px;
}

.servies-icon>.lastone>img {
	width: 50px;
	height: 55px;
}

.team-content {
	text-align: center;
}

.owl-carousel .owl-item .single-testimonial img {
	width: 100px;
	height: auto;
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
				<div class="col-lg-4">
					<div class="about-us-title">
						<h3 style="font-weight: bold">
							여성 공동체를 지향하는<br>우리는 이음입니다.
						</h3>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="about-us-details">
						<p class="about-us-pera-mb">여성의 사회 진출이 늘어남에 따라 여성 1인 가구 증가율이
							최근 10년 사이 31.4% 증가했습니다. 이러한 통계를 기반으로 2019년 2~30대 여성 1인 가구를 조사한
							결과, 이들의 43%는 생활의 큰 어려움으로 주거환경 수리를 꼽았으며 또한 주거 침입 안전이 걱정된다고 표한 비율은
							70% 이상이나 되었습니다.</p>
						<p class="about-us-pera-mb">우리는 여성 1인 가구들이 안심하고 집과 관련된 서비스를
							이용할 뿐만 아니라 여성들 사이의 사회적 연결망을 구축하는 '이음'입니다.</p>
						<p>사용자와 전문가 모두 '여성'만 가입, 이용할 수 있어 전문적인 지식을 가진 전문가와 개인을 연결시켜 주는
							플랫폼 역할을 합니다. 더 나아가 이음 원데이 클래스를 통해 여성들이 집에서 자주 접할 수 있는 간단한 문제들을
							스스로 해결할 수 있도록 배움의 자리를 제공합니다.</p>
						<p class="about-us-pera-mb">이음이 지향하는 가치는 다음과 같습니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="services-area hm-3-padding h3-services pb-100">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="single-services firstone mb-30"
						style="background: #f7f6e7">
						<div class="services-icon">
							<img alt="" src="resources/img/icon-img/friends.png">
						</div>
						<div class="services-text">
							<!-- <h5>FREE SHIPPING</h5> -->
							<p>
								여성만 가입 <br>가능합니다.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-services secondone mb-30"
						style="background: #ffeac9">
						<div class="services-icon">
							<img alt="" src="resources/img/icon-img/help.png">
						</div>
						<div class="services-text">
							<!-- <h5>ONLINE SUPPORT</h5> -->
							<p>
								여성들의 연대에<br>동참합니다.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-services thirdone mb-30"
						style="background: #efd3cd">
						<div class="services-icon">
							<img alt="" src="resources/img/icon-img/goal.png">
						</div>
						<div class="services-text">
							<!-- <h5>MONEY RETURN</h5> -->
							<p>여성의 사회진출을 장려합니다.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-services lastone mb-30"
						style="background: #c8dbcd">
						<div class="services-icon">
							<img alt="" src="resources/img/icon-img/magnet.png">
						</div>
						<div class="services-text">
							<!-- <h5>MEMBER DISCOUNT</h5> -->
							<p>
								사용자와 전문가를<br>매칭합니다.
							</p> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="testimonials-area">
		<div class="container-fluid">
			<div class="testimonial-active owl-carousel pt-90 pb-75"
				style="background: #f2f7ff">
				<div class="single-testimonial text-center">
					<img alt="" src="resources/img/team/hammer.png">
					<p>수도 설비, 전기 등 집 안에서 혼자 하기 버거웠던 수리를 서비스 요청할 수 있습니다.</p>
					<div class="testimonial-icon">
						<i class="ti-direction-alt"></i>
					</div>
				</div>
				<div class="single-testimonial text-center">
					<img alt="" src="resources/img/team/mop.png">
					<p>
						아무리 청소해도 조금의 찝찝함이 남으셨나요? 이를 해소하기 위한 청소 서비스입니다.<br> 청소 분야의
						전문가의 손길로 깨끗하고 정돈된 집을 만나보세요.
					</p>
					<div class="testimonial-icon">
						<i class="ti-direction-alt"></i>
					</div>
				</div>
				<div class="single-testimonial text-center">
					<img alt="" src="resources/img/team/pesticide.png">
					<p>
						사시사철 삶의 질을 떨어뜨리는 해충들을 어떻게 박멸하는지 고민하셨나요?<br> 방역 전문가의 손길로 해충
						걱정은 사라질거에요.
					</p>
					<div class="testimonial-icon">
						<i class="ti-direction-alt"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="about-us-area hm-3-padding pt-125 pb-125">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-4">
					<div class="about-us-title">
						<h3 style="font-weight: bold">이음 사이트 이용 안내</h3>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="about-us-details">
						<p class="about-us-pera-mb">이음이 제공하는 서비스를 이용하기 위해서는 다음과 같은 절차가
							필요합니다.</p>
						<p class="about-us-pera-mb">서비스 탭 선택 - 원하는 서비스 분야 선택 - 원하는 전문가
							선택 - 견적 요청하기 - 견적 요청서 작성 - 전문가와 상담(쪽지) 후 예약 완료 - 결제</p>
						<p>
							<br>
						</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="about-us-title">
						<h3 style="font-weight: bold">이음 전문가 분류 안내</h3>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="about-us-details">
						<p class="about-us-pera-mb">이음은 전문가를 총 4가지로 분류하고 있습니다. 이음의 전문가 분류는 전통 한옥의 구성요소를 의미합니다. </p>
						<p class="about-us-pera-mb">
							첫번째로 디딤돌은 한옥의 구성 요소 중에서 기반을 다지는
							요소 중 하나입니다. 이음에서 전문가 분류의 '디딤돌'은 기반을 다지고 있는 모든 전문가 회원들을 의미합니다.</p>
							<p class="about-us-pera-mb">두번째로 마루는 집의 중심공간이면서 모든 동선이 거쳐 가는 허브의 역할을 합니다. 전문가 분류의 '마루'는 이음의
							전문가 회원들이 전문가 회원들이 활발히 사회에서 활동하길 바라는 의미를 가지고 있습니다.</p>
							<p class="about-us-pera-mb">세번째로 우주는 귓기둥을 의미하며 다른 기둥들 보다 높이를 높게 합니다. 이음에서 전문가 분류의 '우주'는 전문가가 지향하는 위치까지
							도달하는데 지지함을 의미합니다.</p>
							<p class="about-us-pera-mb">마지막으로 용마루는 한옥에서 기와지붕의 가장 높은 마룻대를 의미하고 일과 만물의 으뜸 자리를 의미합니다. 
							이음 전문가 분류의 '용마루'는 전문가 회원들이 활동하는 분야에서 으뜸이 되길 바라는 의미를 가지고 있습니다. 
						</p>
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
				<div class="col-lg-1 col-md-6 col-12"></div>
				<div class="col-lg-2 col-md-6 col-12">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<img src="resources/img/team/cat.png" alt="">
						</div>
						<div class="team-content">
							<h4>정겨운</h4>
							<span style="text-align: center;">팀 프로젝트 매니저 / <br>기획
								및 개발 담당
							</span>
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
							<img src="resources/img/team/giraffe.png" alt="">
						</div>
						<div class="team-content">
							<h4>장한솔</h4>
							<span>기획 및 개발 담당</span>
						</div>
					</div>
				</div>
				<div class="col-lg-1 col-md-6 col-12"></div>
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