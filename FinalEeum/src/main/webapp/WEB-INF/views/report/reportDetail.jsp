<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file ="../include2/head.jsp" %>
</head>
<body>
<%@ include file="../include2/main_header.jsp" %>
<%@ include file="../include2/left_column.jsp" %>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="background:#fffffa">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>회원 상세 보기 페이지</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item">일반 사용자 상세 보기</li>
              <li class="breadcrumb-item active">사용자 정보 보기</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">회원 정보 상세 페이지</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">
            <c:set var="u" value="${userinfo }"/>
              <div class="form-group">
                <table class="table table-striped">
                	<tr>
                		<td>사용자 아이디</td>
                		<td>${u.user_id }</td>
                	</tr>
                	<tr>
                		<td>사용자 별명</td>
                		<td>${u.user_nick }</td>
                	</tr>
                	<tr>
                		<td>사용자 이름</td>
                		<td>${u.user_name }</td>
                	</tr>
                	<tr>
               			<td>사용자 주소</td>
               			<td>${u.user_addr1 } ${u.user_addr2 }</td>
                	</tr>
                	<tr>
                		<td>사용자 연락처</td>
                		<td>${u.user_phone1 }-${u.user_phone2 }-${u.user_phone3 }</td>
                	</tr>
                	<tr>
                		<td>사용자 이메일 주소</td>
                		<td>${u.user_email1 }@${u.user_email2 }</td>
                	</tr>
                </table>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <a href="#" class="btn btn-secondary">이전으로</a>
        </div>
      </div>
    </section>
    <!-- /.content -->
    </div>
  <!-- /.content-wrapper -->

<!-- Main Footer -->
<%@ include file="../include2/main_footer.jsp" %>

<!-- REQUIRED SCRIPTS -->
<%@ include file="../include2/plugin_js.jsp" %>
</body>
</html>