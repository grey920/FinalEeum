<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메시지 보기</title>

<!-- all css here -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/chosen.min.css">
<link rel="stylesheet" href="resources/css/meanmenu.min.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/ionicons.min.css">
<link rel="stylesheet" href="resources/css/bundle.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/responsive.css">

<style>
input{border-radius:10px}
p{font-weight:800}
.button-box span{font-size:13pt}
.btn-style{margin-top:5px !important;
       			margin-right:0 !important; 
       			font-size:12px;
         		border-radius:20px;
         		background-color:white;
         		color:#72A0E0;
         		border:2px solid #72A0E0;
         		padding: 13px 20px
         		}
.btn-style:hover{background-color:#72A0E0;
         					color:white;
         					border:2px solid #72A0E0;
         				  }
</style>
</head>
<body>
<div>
	<form>
		보낸 사람 &nbsp;
		<input type="text" id="msg_sid" name="msg_sid" value="<%=request.getParameter("msg_sid") %>" style="width:30%" readOnly><br>
		받은 사람 &nbsp;
		<input type="text" id="msg_rid" name="msg_rid" value="<%=request.getParameter("msg_rid") %>" style="width:30%" readOnly><br>
		<p>상담 내용</p>
		<input type="text" id="msg_content" name="msg_content" value="<%=request.getParameter("msg_content") %>" readOnly><br>
		
		<div class="button-box" style="text-align:center;margin:0 auto">
			<button class="btn-style" onclick="window.close();">
				<span>닫기</span>
			</button>
		</div>
	</form>
</div>
</body>
</html>