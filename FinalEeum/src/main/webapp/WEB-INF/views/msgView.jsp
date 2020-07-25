<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메시지 상세보기</title>

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
input[type=text]{margin-bottom:10px}
p{color:#303030}
.button-box{margin-top:5px !important}
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
.logo{margin-bottom:20px !important;
		text-align:center;
		margin:0 auto;}
.btn-style.check{margin-right:10px !important}
.btn-style.short{padding:13px 32px}
</style>
<script src="resources/js/jquery-3.5.0.js"></script>
<script>
	$(document).ready(function(){
		window.resizeTo(600,680);
	});
	
	function message (url) {
		var send = window.open(url, "", "width=100, heigth=100, location=no");
		send.resizeTo(600,680);
		self.close();
	};
</script>
</head>
<body>
<div class="message-form">
	<div class="logo">
		<img src="resources/img/logo/eeum_logo.png" style="width:110px; height:auto">
	</div>
	<form>
		<%int msg_no = Integer.parseInt(request.getParameter("msg_no")); %>
		<input type="hidden" id="msg_no" name="msg_no" value="<%= msg_no %>">
		<%String msg_rid = (String) request.getParameter("msg_rid"); %>
		<input type="hidden" id="msg_rid" name="msg_rid" value="<%= msg_rid %>">
		
		보낸 사람&nbsp; <%String msg_sid = (String) request.getParameter("msg_sid"); %>
		<input type="text" id="msg_sid" name="msg_sid" value="<%= msg_sid %>" style="width:40%" disabled><br>
		받은 시간&nbsp;
		<input type="text" id="msg_time" name="msg_time" value="" style="width:40%" disabled><br>
		<p>상담 내용</p>
		<input type="text" id="msg_content" name="msg_content" value="<%=request.getParameter("msg_content") %>" 
					style="width:97%;height:230px" disabled><br>
					
		<div class="button-box" style="text-align:center;margin:0 auto;width:80%">
			<button class="btn-style check" onclick="javascript:message('msgWrite.net?msg_rid=<%=msg_sid%>&msg_sid=<%=msg_rid%>')">
					<span>답장하기</span>
			</button>
			<button class="btn-style short" onclick="window.close();opener.location.reload();">
				<span>&nbsp;닫기&nbsp;</span>
			</button>
		</div>
	</form>
</div>
</body>
</html>