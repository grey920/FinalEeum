<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>수익통계 페이지</title>
<link href="resources/dist/img/eeumLogo2.png" rel="shortcut icon"
	type="image/x-icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="../include2/main_header.jsp"%>
<%@ include file="../include2/left_column.jsp"%>
<style>
#curve_chart {
	width: 100%;
	text-align: left;
}

#piechart {
	height: 100%;
	text-align: left;
}
</style>
<body>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper" style="background: #fffffa">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>수익 통계</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item">통계</li>
							<li class="breadcrumb-item active">수익 통계</li>
						</ol>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6">
						<!-- DONUT CHART -->
						<div class="card">
							<div class="card-header" style="background: #F7E590;">
								<h3 class="card-title" style="color: #8a7c38">서비스 분야별 수익 비율</h3>

								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus" style="color: #8a7c38"></i>
									</button>
									<button type="button" class="btn btn-tool"
										data-card-widget="remove">
										<i class="fas fa-times" style="color: #8a7c38"></i>
									</button>
								</div>
							</div>
							<div class="card-body" style="height:45%;">
								<div id="piechart"></div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<div class="col-md-6">
						<!-- BAR CHART -->
						<div class="card">
							<div class="card-header" style="background: #DBE8AE;">
								<h3 class="card-title" style="color: #79825b">Bar Chart</h3>

								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus" style="color: #79825b"></i>
									</button>
									<button type="button" class="btn btn-tool"
										data-card-widget="remove">
										<i class="fas fa-times" style="color: #79825b"></i>
									</button>
								</div>
							</div>
							<div class="card-body"style="height:45%;">
								<div class="chart">
									<div id="curve_chart" style="height: auto; width: 100%;"></div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>
			</div>
			<!-- /.row -->
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Add Content Here -->
	</aside>
	<!-- /.control-sidebar -->
	<!-- Main Footer -->
	<%@include file="../include2/main_footer.jsp"%>
	<!-- jQuery -->
	<script src="resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="resources/plugins/chart.js/Chart.min.js"></script>
	<!-- AdminLTE App -->
	<script src="resources/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="resources/dist/js/demo.js"></script>
	<!-- page script -->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {
			'packages' : [ 'corechart' ]
		});
		google.charts.setOnLoadCallback(drawChart);

		function drawChart() {

			var data = google.visualization.arrayToDataTable([
					[ 'Task', 'Hours per Day' ], [ 'Work', 11 ], [ 'Eat', 2 ],
					[ 'Commute', 2 ], [ 'Watch TV', 2 ], [ 'Sleep', 7 ] ]);

			var options = {
				title : 'My Daily Activities',
				width:'100%',
				height:'auto'
			};

			var chart = new google.visualization.PieChart(document
					.getElementById('piechart'));

			chart.draw(data, options);
			$(window).resize(function() {
				drawChart();
			})
		}
	</script>
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {
			'packages' : [ 'corechart' ]
		});
		google.charts.setOnLoadCallback(drawChart);

		function drawChart() {
			var data = google.visualization.arrayToDataTable([
					[ 'Year', 'Sales', 'Expenses' ], [ '2004', 1000, 400 ],
					[ '2005', 1170, 460 ], [ '2006', 660, 1120 ],
					[ '2007', 1030, 540 ] ]);

			var options = {
				title : 'Company Performance',
				curveType : 'function',
				legend : {
					position : 'bottom'
				},
				width : '100%',
				height : 'auto'
			};

			var chart = new google.visualization.LineChart(document
					.getElementById('curve_chart'));

			chart.draw(data, options);

			$(window).resize(function() {
				drawChart();
			})
		}
	</script>

	<!-- REQUIRED SCRIPTS -->
	<%@ include file="../include2/head.jsp"%>
	<%@ include file="../include2/plugin_js.jsp"%>
</body>
</html>