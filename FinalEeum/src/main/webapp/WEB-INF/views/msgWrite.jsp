<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메시지 보내기</title>

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
.message-form{border:2px solid #72A0E0;
						margin:20px 20px;
						border-radius:20px;
						padding:20px 30px;
						width:550px;
						height:580px
						}
input{border-radius:10px}
input[type=text]{margin-bottom:15px}
p{color:#303030}
.button-box{margin-top:30px !important}
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
.logo{margin-bottom:30px !important;
		text-align:center;
		margin:0 auto;}
.btn-style.check{margin-right:10px !important;
						padding:13px 28px}
.btn-style.short{padding:13px 36px}
</style>
</head>
<body>
<div class="message-form">
	<div class="logo">
		<img src="resources/img/logo/eeum_logo.png" style="width:110px; height:auto">
	</div>
	<form action="messageProcess.net" method="post">
		받는 사람 &nbsp;
		<input type="text" id="msg_rname" name="msg_rname" value="${rname}" style="width:40%" readOnly>
		<input type="hidden" id="msg_rid" name="msg_rid" value="${msg_rid}">
		<input type="hidden" id="msg_sid" name="msg_sid" value="${msg_sid}">
		<br>
		<p>상담 내용</p>
		<textarea id="msg_content" name="msg_content" placeholder="상담할 내용을 적어주세요"
					style="width:97%;height:230px"></textarea><br>
					
		<div class="button-box" style="text-align:center;margin:0 auto;width:80%">
			<button type="submit" class="btn-style check">
				<span>보내기</span>
			</button>
			<button class="btn-style short" onclick="window.close();opener.location.reload();">
				<span>닫기</span>
			</button>
		</div>
	</form>
</div>
</body>
</html>