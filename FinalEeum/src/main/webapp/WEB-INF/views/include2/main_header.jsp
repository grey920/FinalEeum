<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이음 관리자</title>
<link rel="stylesheet" type="text/css" href="resources/plugins/adminfonts.css">
<!-- <link rel="stylesheet" type="text/css" href="resources/dist/preloader/style.css"> -->
<script src="resources/js/jquery-3.5.0.js"></script>
<style>
	body{ 
  		font-family: 'NanumSquareRound'; 
  		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff'); 
  		font-weight: normal; font-style: normal; 
  	}
</style>
</head>
	<!-- 헤더 영역입니다 -->
	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-white navbar-light" style="background:#E4E8F0; height:100px; ">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars" style="font-size:28px; color:#5C7BA4; margin-top:22px"></i></a></li>
			<li class="nav-item d-none d-sm-inline-block">
			<a href="main.bo"><img src="resources/img/logo/eeum_logo.png" alt="E-eum:admin" class="brand-image img-square" style="opacity: .8; height: 80px; margin: 7.5px 0;" ></a></li>
		</ul>

		<!-- SEARCH FORM -->
		<form class="form-inline ml-3">
			<div class="input-group input-group-sm">
				<input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" style="height:55px; width:300px; font-size:22px">
				<div class="input-group-append">
					<button class="btn btn-navbar" type="submit">
						<i class="fas fa-search" style="font-size:24px;"></i>
					</button>
				</div>
			</div>
		</form>
	</nav>
	<!-- /.navbar -->
</body>

</html>