<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<link href="resources/dist/img/eeumLogo2.png" rel="shortcut icon"
	type="image/x-icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

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
<script>
var i =1;
</script>
<%@include file="../header.jsp"%>
</head>
<body>
	<div class="wrapper">
		<div class="all-info ptb-130">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="contact-message-wrapper">
							<h4 class="content-title">가격</h4>
							<div class="writeprice">
								<form id="priceform" action="#" method="post">
									<div class="row">
										<div class="col-lg-6">
											<div class="contact-form-style mb-20 inssub">
												<input name="subject" placeholder="제공할 서비스를 입력하세요" type="text" id="inssub"></div>
										</div>
										<div class="col-lg-6">
											<div class="contact-form-style  mb-20  inspric">
												<input name="price" placeholder="가격을 입력하세요" type="text" id="inspric"></div>
										</div>
										<div class="col-lg-12">
											<div class="contact-form-style">
												<button class="appbtn" type="button">추가하기</button>
												<button class="submit" type="submit">
													<span>저장하기</span>
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
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
	<script>
		$(".appbtn").on('click', function(){
			$(".inssub").after('<div class="contact-form-style mb-20"><input name="subject'+i+'" placeholder="제공할 서비스를 입력하세요" type="text" id="inssub"></div>');
			$(".inspric").after('<div class="contact-form-style mb-20"><input name="price'+i+'" placeholder="가격을 입력하세요" type="text" id="inspric"></div>');
			i++;
		})
	</script>
	<script src="resources/js/main.js"></script>
</body>
</html>
