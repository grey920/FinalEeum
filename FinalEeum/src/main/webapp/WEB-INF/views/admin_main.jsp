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
 <style>
    	#curve_chart{
    		width:100%;
    		text-align:left;
    	}
    </style>
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
								<h3>${allReviews}</h3>
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
							<div class="card-body" style="height:500px; width:auto">
								<div class="tab-content p-0">
									<!-- Morris chart - Sales -->
										<div id="curve_chart" ></div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</section>
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
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['기간', '지난달', '이번달'],
          ['1',  1000,      400],
          ['10',  1170,      460],
          ['20',  660,       1120],
          ['30',  1030,      540]
        ]);

        var options = {
          title: '총 매출액',
          curveType: 'function',
          legend: { position: 'bottom' },
          width:'100%',
          height:'100%',
          colors:['#36518F', '#C94D4D']
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
        
        $(window).resize(function(){
        	drawChart();
        });
      }
    </script> 
   
	</body>
</html>
