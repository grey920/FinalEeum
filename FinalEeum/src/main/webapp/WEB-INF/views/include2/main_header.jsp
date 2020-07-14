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
<!-- <script>
	$(window).laod(function() {
		$('.load').fadeOut('slow');
	})
</script> -->
<body>
<!-- page preloader -->
<!-- <div class="loadwrapper">
<div class="load">
  <hr/><hr/><hr/><hr/>
</div>
</div> -->
	<!-- 헤더 영역입니다 -->
	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-white navbar-light" style="background:#E4E8F0; height:100px; ">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars" style="font-size:28px; color:#5C7BA4; margin-top:18px"></i></a></li>
			<li class="nav-item d-none d-sm-inline-block">
			<img src="resources/dist/img/eeumLogo2.png" alt="E-eum:admin" class="brand-image img-square" style="opacity: .8; height: 80px; margin-top:10px" ></li>
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

		<!-- Right navbar links -->
		<!-- <ul class="navbar-nav ml-auto">
			Messages Dropdown Menu
			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#"> <i class="far fa-comments" style="font-size:28px;color:#5C7BA4"></i>
					<span class="badge navbar-badge" style="background:#C94D4D; font-size:13px; color:white">3</span>
			</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<a href="#" class="dropdown-item"> 
					Message Start
						<div class="media">
							<img src="resources/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
							<div class="media-body">
								<h3 class="dropdown-item-title">Brad Diesel <span class="float-right text-sm text-danger"><i
										class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">Call me whenever you can...</p>
								<p class="text-sm text-muted">
									<i class="far fa-clock mr-1"></i> 4 Hours Ago
								</p>
							</div>
						</div> Message End
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> Message Start
						<div class="media">
							<img src="resources/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									John Pierce <span class="float-right text-sm text-muted"><i
										class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">I got your message bro</p>
								<p class="text-sm text-muted">
									<i class="far fa-clock mr-1"></i> 4 Hours Ago
								</p>
							</div>
						</div> Message End
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> Message Start
						<div class="media">
							<img src="resources/dist/img/user3-128x128.jpg" alt="User Avatar"
								class="img-size-50 img-circle mr-3">
							<div class="media-body">
								<h3 class="dropdown-item-title">Nora Silvester <span class="float-right text-sm text-warning"><i
										class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">The subject goes here</p>
								<p class="text-sm text-muted">
									<i class="far fa-clock mr-1"></i> 4 Hours Ago
								</p>
							</div>
						</div> Message End
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
				</div></li>
			Notifications Dropdown Menu
			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#"> <i class="far fa-bell" style="font-size:28px; color:#5C7BA4"></i> <span
					class="badge badge-warning navbar-badge" style="background:#F7E590; font-size:13px;">15</span>
			</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" >
					<span class="dropdown-item dropdown-header">15 Notifications</span>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i
						class="fas fa-envelope mr-2"></i> 4 new messages <span
						class="float-right text-muted text-sm">3 mins</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i class="fas fa-users mr-2"></i>
						8 friend requests <span class="float-right text-muted text-sm">12 hours</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
						3 new reports <span class="float-right text-muted text-sm">2 days</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
				</div></li>
		</ul> -->
	</nav>
	<!-- /.navbar -->
</body>

</html>