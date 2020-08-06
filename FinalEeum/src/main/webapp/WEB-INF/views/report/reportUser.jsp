<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.png">
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
						<h1>신고 회원 관리</h1>
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
								<h3 class="card-title">신고 회원 보기</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
							<table id="userTable" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>신고한 사용자 아이디</th>
											<th>신고당한 사용자 아이디</th>
											<th>신고 글 게시 날짜</th>
											<th>신고 유형</th>
											<th>조치</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="r" items="${reportlist}">
										
											<tr>
												<td>${r.REPORT_WRITER}</td>
												<td>${r.REPORT_REPORT}</td>		<input value="${r.REPORT_REPORT}" type="hidden"  id="reportid">							
												<td>${r.REPORT_DATE }</td>
												<td id="type">
												<c:choose>
													<c:when test="${r.REPORT_TYPE == 0}">기타</c:when>
													<c:when test="${r.REPORT_TYPE == 1 }">성적인 내용</c:when>
													<c:when test="${r.REPORT_TYPE == 2 }">폭력적 또는 혐오스러운 내용</c:when>
													<c:when test="${r.REPORT_TYPE == 3 }">증오 또는 악의적인 내용</c:when>
													<c:when test="${r.REPORT_TYPE == 4 }">유해하거나 위험한 행위</c:when>
													<c:otherwise>스팸 또는 오해의 소지가 있는 내용</c:otherwise>
												</c:choose>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>신고한 사용자 아이디</th>
											<th>신고당한 사용자 아이디</th>
											<th>신고 글 게시 날짜</th>
											<th>신고 유형</th>
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
			$("#userTable").DataTable({
				//정렬 기능 
				"ordering" : true,
				//표시 건수 기능
				"lengthChange" : true,
				"responsive" : true,
				"autoWidth" : false,
			});
			var id = $("#reportid").val();
					$('body').on('click', '#mea', function(){
						
		
	
					console.log(id);
					$.ajax({
						type :"POST",
						url:"report.Ajax",
						cache:false,
						data:{"REPORT_REPORT":id},
						sucess : function(a){
							alert('처리 되었습니다.');
						}
					});
					console.log("처리 ㅇㅋ");
			
				})	
					
			});

		
	</script>
</body>
</html>