<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/dist/img/eeumLogo2.png" rel="shortcut icon" type="image/x-icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>일반 사용자 보기</title>
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
						<h1>일반 사용자 정보 보기</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item">일반 사용자 정보</li>
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
								<h3 class="card-title">일반 사용자 정보 보기</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
							<table id="userTable" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>사용자 아이디</th>
											<th>사용자 별명</th>
											<th>사용자 이름</th>
											<th>사용자 주소</th>
											<th>사용자 연락처</th>
											<th>사용자 이메일 주소</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="gu" items="${userlist}">
											<tr>
												<td>${gu.user_id }</td>
												<td>${gu.user_nick}</td>
												<td>${gu.user_name }</td>
												<td>${gu.user_addr2 } ${gu.user_addr3 }</td>
												<td>${gu.user_phone1 }-${gu.user_phone2 }-${gu.user_phone3 }</td>
												<td>${gu.user_email1}@${gu.user_email2 }</td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>사용자 아이디</th>
											<th>사용자 별명</th>
											<th>사용자 이름</th>
											<th>사용자 주소</th>
											<th>사용자 연락처</th>
											<th>사용자 이메일 주소</th>
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
			$("#userTable").DataTable({
				//정렬 기능 
				"ordering" : true,
				//표시 건수 기능
				"lengthChange" : true,
				"responsive" : true,
				"autoWidth" : false,
			});
			

		});
		
	</script>
</body>
</html>