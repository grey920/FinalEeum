<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/dist/img/eeumLogo2.png" rel="shortcut icon" type="image/x-icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>전문가 회원 보기</title>
</head>
<%@ include file="../include2/head.jsp" %>
<%@ include file ="../include2/main_header.jsp" %>
<%@ include file="../include2/left_column.jsp" %>
<body>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper" style="background:#fffffa">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>전문가 사용자 정보 보기</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item">전문가 사용자 정보</li>
							<li class="breadcrumb-item active">회원 정보 보기</li>
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
								<h3 class="card-title">DataTable with default features</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<table id="expertTable" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>전문가 아이디</th>
											<th>전문가 이름</th>
											<th>전문가 연락처</th>
											<th>전문가 이메일 주소</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var = "ex" items="${exlist}">
											<tr>
												<td>${ex.expert_id }</td>
												<td>${ex.expert_name}</td>
												<td>${ex.expert_phone1 }-${ex.expert_phone2 }-${ex.expert_phone3 }</td>
												<td>${ex.expert_email1 }@${ex.expert_email2 }</td>
												
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>전문가 아이디</th>
											<th>전문가 이름</th>
											<th>전문가 연락처</th>
											<th>전문가 이메일 주소</th>
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
</html>