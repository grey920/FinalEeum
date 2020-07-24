<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/img/favicon.png" rel="shortcut icon" type="image/x-icon">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>신고 회원 관리</title>
</head>
<%@ include file="../include2/head.jsp" %>
<%@ include file ="../include2/main_header.jsp" %>
<%@ include file="../include2/left_column.jsp" %>
<style>
table>tbody>tr>td>ul>li{float: left; list-style: none; margin-right : 4%;}
table>tbody>tr>td>ul{height:30px;}

</style>
<body>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper" style="background:#fffffa">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>신고 회원 관리</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item">신고 회원 관리</li>
							<li class="breadcrumb-item active">회원 관리</li>
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
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">신고 회원 목록</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<table id="expertTable" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>신고당한 회원 아이디</th>
											<th>신고자</th>
											<th>조치</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="r" items="${qnalist}">
										<tr>
											<td>${r.QNA_REPORT }</td>
											
											<td>
											<c:forEach var="q" items="${r.qnalist }">
											<ul>
											<li>${q.QNA_WRITER }</li>			
											<li>${q.QNA_TYPE }</li>
											<li>${q.QNA_TIMES }</li>
											</ul>
											</c:forEach>
											</td>
											<td></td>
										</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>신고당한 회원 아이디</th>
											<th>신고자</th>
											<th>조치</th>
										</tr>
									</tfoot>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
					
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
		
		
	</div>
	<!-- /.content-wrapper -->
	
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	
	<!-- jQuery -->
	<script src="resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- DataTables -->
	<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script src="resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<!-- AdminLTE App -->
	<script src="resources/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="resources/dist/js/demo.js"></script>
	<!-- page script -->
	<%@ include file="../include2/main_footer.jsp" %>
	<script>
		$(function() {
			$("#expertTable").DataTable({
				"responsive" : true,
				"autoWidth" : false,
			});
		});
	</script>
</body>
