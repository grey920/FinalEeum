<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이음 관리자</title>
</head>

<style>
.logoarea, .sidebar, .mt-2, .main-sidebar {
	background: #72A0E0;
	color: white;
}

body {
	transition: 0s !important;
}
</style>
<body>
	<!-- 좌측 사이드바 영역입니다 -->
	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4"
		style="background: #72A0E0; color: white">
		<!-- Brand Logo -->
		<div class="logoarea" style="text-align: center;border-color: white">
			<a href="admin.net" class="brand-link" style="border-color: white">
				<span class="brand-text font-weight-bold" style="color: white">이 : 음 관리자 페이지</span>
			</a>
		</div>
		
		<div class="sidebar">
			<c:if test="${!empty user_id && empty expert_id}">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex"
					style="border-color: white; color: white;">
					<div class="image">
						<img src="resources/profile${user_saveprofile}" class="img-circle"
							alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block" style="color: white">${user_id }</a>
					</div>
				</div>
			</c:if>

			<!-- Sidebar Menu -->
			<nav class="mt-2" style="color: white">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="true">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<!-- 통계 영역 -->
					<li class="nav-item has-treeview menu"><a href="admin.net"
						class="nav-link" style="color: white"> <i
							class="nav-icon fas fa-home" style="color: white"></i>
							<p>HOME</p>
					</a></li>
					<li class="nav-item has-treeview"><a href="#" class="nav-link"
						style="color: white"> <i class="nav-icon fas fa-chart-pie"></i>
							<p>
								통계 <i class="right fas fa-angle-left" style="color: white"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="chartjs.bo" class="nav-link"
								style="color: white"> <i class="far fa-circle nav-icon"
									style="color: white"></i>
									<p>수익통계</p>
							</a></li>
						</ul></li>

					<!-- 신고회원 관리 -->
					<li class="nav-item has-treeview"><a href="#" class="nav-link"
						style="color: white"> <i class="nav-icon fas fa-edit"
							style="color: white"></i>
							<p>
								회원 관리 <i class="fas fa-angle-left right" style="color: white"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="reportUser.net"
								class="nav-link" style="color: white"> <i
									class="far fa-circle nav-icon" style="color: white"></i>
									<p>신고 회원 관리</p>
							</a></li>
							<li class="nav-item"><a href="reportExpert.net"
								class="nav-link" style="color: white"> <i
									class="far fa-circle nav-icon" style="color: white"></i>
									<p>신고 전문가 관리</p>
							</a></li>
						</ul></li>

					<!-- 회원 정보 보기 -->
					<li class="nav-item has-treeview"><a href="#" class="nav-link"
						style="color: white"> <i class="nav-icon fas fa-table"
							style="color: white"></i>
							<p>
								회원 기본 정보 보기 <i class="fas fa-angle-left right"
									style="color: white"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="generalUser.bo"
								class="nav-link" style="color: white"> <i
									class="far fa-circle nav-icon" style="color: white"></i>
									<p>일반 회원 기본 정보</p>
							</a></li>
							<li class="nav-item"><a href="expertUser.bo"
								class="nav-link" style="color: white"> <i
									class="far fa-circle nav-icon" style="color: white"></i>
									<p>전문가 회원 기본 정보</p>
							</a></li>
						</ul></li>
					<li class="nav-header" style="color: white">LABELS</li>
					<li class="nav-item"><a href="#" class="nav-link"
						style="color: white"> <i class="nav-icon fas fa-circle"
							style="color: #C94D4D"></i>
							<p class="text">Important</p>
					</a></li>
					<li class="nav-item"><a href="#" class="nav-link"
						style="color: white"> <i class="nav-icon fas fa-circle"
							style="color: #F7E590"></i>
							<p>Warning</p>
					</a></li>
					<li class="nav-item"><a href="#" class="nav-link"
						style="color: white"> <i class="nav-icon fas fa-circle"
							style="color: #b6c77d"></i>
							<p>Informational</p>
					</a></li>
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>


</body>
</html>