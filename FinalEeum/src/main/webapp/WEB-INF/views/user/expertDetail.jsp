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
    <section class="content" >
      <div class="row">
        <div class="col-md-6" style="padding:15px; margin:auto;">
          <div class="card card-primary">
            <div class="card-header" style="background:#b6c77d">
              <h3 class="card-title" >전문가 회원 포트폴리오</h3>
            </div>
            <div class="card-body">
            <c:set var="d" value="${ deExperts}" />

              <div class="form-group">
             		<table class="table table-striped">
             		<tr>
             			<td>전문가 사용자 아이디</td>
             			<td>${d.PF_EXID}</td>
             		</tr>
             		<tr>
             			<td>전문가 활동 지역</td>
             			<td>${d.PF_LOC}</td>
             		</tr>
             		<tr>
             			<td>전문가 사용자 분류</td>
             			<td>
             				<c:choose>
            					<c:when test="${d.PF_GRADE == 0 }"> 디딤돌 </c:when>
            					<c:when test="${d.PF_GRADE == 1 }"> 마루 </c:when>
            					<c:when test="${d.PF_GRADE == 2 }"> 우주 </c:when>
            					<c:otherwise>용마루</c:otherwise>
            				</c:choose>
            			</td>
             		</tr>
             		<tr>
             			<td>전문가 서비스 분야</td>
             			<td>     
             				<c:choose>
            					<c:when test="${d.PF_CATE == 0 }">청소</c:when>
            					<c:when test="${d.PF_CATE == 1 }">방역</c:when>
            					<c:otherwise>수리</c:otherwise>
            				</c:choose> 
            			</td>
             		</tr>
             		<tr>
             			<td>전문가 연락 가능 시간</td>
             			<td>${d.PF_TIME }</td>
             		</tr>
             		<tr>
             			<td>전문가 경력 상세</td>
             			<td>${d.PF_DESC }</td>
             		</tr>
             		<tr>
             			<td>전문가 자격증</td>
             			<td>${d.PF_LI}</td>
             		</tr>
             		<tr>
             			<td>전문가 사업자 번호</td>
             			<td>${d.PF_OP }</td>
             		</tr>
             		<tr>
             			<td>전문가 소개말</td>
             			<td>${d.PF_INTRO }</td>
             		</tr>
             		<tr>
             			<td>전문가 간략 소개</td>
             			<td> ${d.PF_One}</td>
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
        <div class="col-12" style="text-align:center;">
          <a href="expertUser.bo" class="btn btn-secondary" style="background:#aabee6;border:none;">이전으로</a>
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