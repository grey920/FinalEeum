<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<link href="resources/dist/img/eeumLogo2.png" rel="shortcut icon" type="image/x-icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@include file="include2/main_header.jsp" %>
<%@include file="include2/left_column.jsp" %>
<link rel="stylesheet" type="text/css" href="resources/dist/preloader/style.css">
<body class="hold-transition sidebar-mini">
<!-- preloader page -->
<!-- <div class="load">
  <hr/><hr/><hr/><hr/>
</div> -->
<!-- pageload end -->
	<div class="wrapper">
		<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="background:#fffffa">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Main</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item">Home</li>
              <li class="breadcrumb-item active">Main</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<!-- Small boxes (Stat box) -->
				<!-- 전체 회원 수 -->
				<div class="row">
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box">
							<div class="inner" style=" background:#7DCADD; border-top-left-radius:4px; border-top-right-radius:4px; color:white;">
								<h3>${allUsers }</h3>
								<p>전체 회원 수</p>
							</div>
							<div class="icon">
								<i class="ion ion-person"></i>
							</div>
							<a class="small-box-footer" style="background:#5d93a1;border-bottom-right-radius:4px; border-bottom-left-radius:4px;">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					
					<!-- 전체 후기 수 -->
					<div class="col-lg-3 col-6" >
						<!-- small box -->
						<div class="small-box">
							<div class="inner" style="background:#DBE8AE;border-top-right-radius:4px;border-top-left-radius:4px ;color:#444540;">
								<h3></h3>
								<p>전체 후기 수</p>
							</div>
							<div class="icon">
								<i class="fas fa-edit"></i>
							</div>
							<a class="small-box-footer" style="background:#b6c77d;border-bottom-right-radius:4px; border-bottom-left-radius:4px;color:#444540">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					
					<!-- 신규 가입 회원 수 -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box">
							<div class="inner" style="background:#F7E590; border-top-right-radius:4px;border-top-left-radius:4px;color:#4a3f0d">
								<h3></h3>
								<p>신규 가입 회원 수</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a class="small-box-footer" style="background:#e6d275;border-bottom-right-radius:4px; border-bottom-left-radius:4px; color:#4a3f0d">More info 
							<i class="fas fa-arrow-circle-right" style="color::#4a3f0d"></i></a>
						</div>
					</div>
					<!-- ./col -->
					
					<!-- 신규 후기 수  -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box">
							<div class="inner" style="background:#E89EBA; border-top-right-radius:4px;border-top-left-radius:4px;color:white">
								<h3></h3>
								<p>신규 후기 수</p>
							</div>
							<div class="icon">
								<i class="fas fa-pencil-alt"></i>
							</div>
							<a class="small-box-footer" style="background:#b0748b; border-bottom-left-radius:4px; border-bottom-right-radius:4px;">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
				</div>
				<!-- /.row -->
				
				
				<!-- Main row -->
				<div class="row">
					<!-- Left col -->
					<section class="col-lg-12 connectedSortable">
						<!-- Custom tabs (Charts with tabs)-->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">
									<i class="fas fa-chart-pie mr-1" style="color:#36518f"></i> 수익</h3>
								<div class="card-tools">
									<ul class="nav nav-pills ml-auto">
										<li class="nav-item"></li>
									</ul>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div class="tab-content p-0">
									<!-- Morris chart - Sales -->
									<div class="chart tab-pane active" id="revenue-chart" style="position: relative; height: 300px;">
										<canvas id="revenue-chart-canvas" height="300"
											style="height: 300px;"></canvas>
									</div>
									<div class="chart tab-pane" id="sales-chart"
										style="position: relative; height: 300px;">
										<canvas id="sales-chart-canvas" height="300"
											style="height: 300px;"></canvas>
									</div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</section>
					<!-- /.Left col -->
					<!-- Right col -->
					<!-- <section class = "col-lg-5 connectedSortable">
					DIRECT CHAT
						<div class="card direct-chat direct-chat-primary">
							<div class="card-header">
								<h3 class="card-title">채팅</h3>

								<div class="card-tools">
									<span data-toggle="tooltip" title="3 New Messages"
										class="badge badge-primary">3</span>
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
									<button type="button" class="btn btn-tool"
										data-toggle="tooltip" title="Contacts"
										data-widget="chat-pane-toggle">
										<i class="fas fa-comments"></i>
									</button>
									<button type="button" class="btn btn-tool"
										data-card-widget="remove">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
							/.card-header
							<div class="card-body" style="height:300px;">
								Conversations are loaded here
								<div class="direct-chat-messages">
									Message. Default to the left
									<div class="direct-chat-msg">
										<div class="direct-chat-infos clearfix">
											<span class="direct-chat-name float-left">Alexander
												Pierce</span> <span class="direct-chat-timestamp float-right">23
												Jan 2:00 pm</span>
										</div>
										/.direct-chat-infos
										<img class="direct-chat-img" src="resources/dist/img/user1-128x128.jpg"
											alt="message user image">
										/.direct-chat-img
										<div class="direct-chat-text">Is this template really
											for free? That's unbelievable!</div>
										/.direct-chat-text
									</div>
									/.direct-chat-msg

									Message to the right
									<div class="direct-chat-msg right">
										<div class="direct-chat-infos clearfix">
											<span class="direct-chat-name float-right">Sarah
												Bullock</span> <span class="direct-chat-timestamp float-left">23
												Jan 2:05 pm</span>
										</div>
										/.direct-chat-infos
										<img class="direct-chat-img" src="resources/dist/img/user3-128x128.jpg"
											alt="message user image">
										/.direct-chat-img
										<div class="direct-chat-text">You better believe it!</div>
										/.direct-chat-text
									</div>
									/.direct-chat-msg

									Message. Default to the left
									<div class="direct-chat-msg">
										<div class="direct-chat-infos clearfix">
											<span class="direct-chat-name float-left">Alexander
												Pierce</span> <span class="direct-chat-timestamp float-right">23
												Jan 5:37 pm</span>
										</div>
										/.direct-chat-infos
										<img class="direct-chat-img" src="resources/dist/img/user1-128x128.jpg"
											alt="message user image">
										/.direct-chat-img
										<div class="direct-chat-text">Working with AdminLTE on a
											great new app! Wanna join?</div>
										/.direct-chat-text
									</div>
									/.direct-chat-msg

									Message to the right
									<div class="direct-chat-msg right">
										<div class="direct-chat-infos clearfix">
											<span class="direct-chat-name float-right">Sarah
												Bullock</span> <span class="direct-chat-timestamp float-left">23
												Jan 6:10 pm</span>
										</div>
										/.direct-chat-infos
										<img class="direct-chat-img" src="resources/dist/img/user3-128x128.jpg"
											alt="message user image">
										/.direct-chat-img
										<div class="direct-chat-text">I would love to.</div>
										/.direct-chat-text
									</div>
									/.direct-chat-msg

								</div>
								/.direct-chat-messages

								Contacts are loaded here
								<div class="direct-chat-contacts">
									<ul class="contacts-list">
										<li><a href="#"> <img class="contacts-list-img"
												src="resources/dist/img/user1-128x128.jpg">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Count Dracula <small
														class="contacts-list-date float-right">2/28/2015</small>
													</span> <span class="contacts-list-msg">How have you been?
														I was...</span>
												</div> /.contacts-list-info
										</a></li>
										End Contact Item
										<li><a href="#"> <img class="contacts-list-img"
												src="resources/dist/img/user7-128x128.jpg">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Sarah Doe <small
														class="contacts-list-date float-right">2/23/2015</small>
													</span> <span class="contacts-list-msg">I will be waiting
														for...</span>
												</div> /.contacts-list-info
										</a></li>
										End Contact Item
										<li><a href="#"> <img class="contacts-list-img"
												src="resources/dist/img/user3-128x128.jpg">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Nadia Jolie <small
														class="contacts-list-date float-right">2/20/2015</small>
													</span> <span class="contacts-list-msg">I'll call you back
														at...</span>
												</div> /.contacts-list-info
										</a></li>
										End Contact Item
										<li><a href="#"> <img class="contacts-list-img"
												src="resources/dist/img/user5-128x128.jpg">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Nora S. Vans <small
														class="contacts-list-date float-right">2/10/2015</small>
													</span> <span class="contacts-list-msg">Where is your
														new...</span>
												</div> /.contacts-list-info
										</a></li>
										End Contact Item
										<li><a href="#"> <img class="contacts-list-img"
												src="resources/dist/img/user6-128x128.jpg">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> John K. <small
														class="contacts-list-date float-right">1/27/2015</small>
													</span> <span class="contacts-list-msg">Can I take a look
														at...</span>
												</div> /.contacts-list-info
										</a></li>
										End Contact Item
										<li><a href="#"> <img class="contacts-list-img"
												src="resources/dist/img/user8-128x128.jpg">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Kenneth M. <small
														class="contacts-list-date float-right">1/4/2015</small>
													</span> <span class="contacts-list-msg">Never mind I
														found...</span>
												</div> /.contacts-list-info
										</a></li>
										End Contact Item
									</ul>
									/.contacts-list
								</div>
								/.direct-chat-pane
							</div>
							/.card-body
							<div class="card-footer">
								<form action="#" method="post">
									<div class="input-group">
										<input type="text" name="message"
											placeholder="Type Message ..." class="form-control">
										<span class="input-group-append">
											<button type="button" class="btn btn-primary">Send</button>
										</span>
									</div>
								</form>
							</div>
							/.card-footer
						</div>
						/.direct-chat
					</section> -->
				</div>
				<!-- /.row (main row) -->
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>

	<!-- Main Footer -->
	<%@include file = "include2/main_footer.jsp" %>
	
 <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
<!-- ./wrapper -->
</div>
	<%@include file="include2/head.jsp" %>
	<!-- REQUIRED SCRIPTS -->
	<%@include file="include2/plugin_js.jsp" %>
	</body>
</html>
