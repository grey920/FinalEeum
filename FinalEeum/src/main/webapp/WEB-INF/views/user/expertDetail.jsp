<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/dist/img/eeumLogo2.png" rel="shortcut icon" type="image/x-icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>회원 기본 정보 - 전문가 사용자</title>
<%@ include file ="../include2/head.jsp" %>
	<style>
  	@font-face { 
  		font-family: 'NanumSquareRound'; 
  		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff'); 
  		font-weight: normal; font-style: normal; 
  	}
	</style>
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
            <h1>전문가 사용자 상세 보기 페이지</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item">전문가 사용자 상세 정보</li>
              <li class="breadcrumb-item active">전문가 사용자 정보 보기</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-6 center-block">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">일반 회원 상세 보기</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">
            <c:set var="e" value="${expertinfo }"/>
              <div class="form-group">
             		<table class="table table-striped">
             		<tr>
             			<td>전문가 사용자 아이디</td>
             			<td>${e.expert_id }</td>
             		</tr>
             		<tr>
             			<td>전문가 사용자 이름</td>
             			<td>${e.expert_id }</td>
             		</tr>
             		<tr>
             			<td>전문가 사용자 연락처</td>
             			<td>${e.exeprt_phone1 }-${e.expert_phone2 }-${e.expert_phone3 }</td>
             		</tr>
             		<tr>
             			<td>전문가 사용자 이메일 주소</td>
             			<td>${e.expert_email1 }@${e.epxert_eamil2 }</td>
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