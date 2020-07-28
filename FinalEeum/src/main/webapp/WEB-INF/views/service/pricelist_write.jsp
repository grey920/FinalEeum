<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>원데이 클래스</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.png">

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

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script  src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js" defer></script>

<%@ include file="../header.jsp" %>
<style>
body{ 
  		font-family: 'NanumSquareRound'; 
  		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff'); 
  		font-weight: normal; font-style: normal; 
  	}
.oneday_write_form{
margin-bottom:30px;
}
</style>	
</head>
<body>
<input type="hidden" id="loginid" value="${id }" name="loginid">
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
		
		<div class="login-register-area ptb-130 hm-4-padding">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-7 ml-auto mr-auto">
						<div class="login-register-wrapper">
							<div class="login-register-tab-list nav">
								<div class="index">
									<h2 style="margin-bottom:20px">전문가 상세페이지 - 가격 작성</h2>
								</div>

							</div>
							<div class="tab-content">
								<div class="tab-pane active">
									<div class="login-form-container">
										<div class="login-form">
											<form action="price.in" method="post"
												enctype="multipart/form-data" name="onedayform">

												<span style="margin-top:30px;">작성자</span> <input type="text" id="expert_price" name="EXID"
													 class="oneday_write_form" value="${expert_id}" readonly>

													<span>내용</span>
													<p>서비스 항목과 가격은 10개만 작성 가능합니다.</p>
												<textarea name="PRIC_CON" id="summernote"></textarea>


												<div class="button-box">
													<button type="submit" class="btn-style cr-btn">
														<span>등록</span>
													</button>
													<button type="reset" class="btn-style cr-btn">
														<span>취소</span>
													</button>
												</div>
											</form>
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


	<script>
		$(function() {
			$("#summernote").summernote({
				height : 500
			});

		});// document.ready

		function goWrite(frm) {
			var content = frm.PRIC_CON.value;

			if (content.trim() == '') {
				alert("내용을 입력해주세요");
				return false;
			}
	
			frm.submit();
		}
	 
	</script>

	<!-- all js here -->

	<!-- 	<script src="resources/js/jquery-3.5.0.js"></script> -->
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