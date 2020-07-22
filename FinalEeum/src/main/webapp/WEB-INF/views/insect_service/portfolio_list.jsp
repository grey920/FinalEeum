<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/service/portfolio_list.css">

<title>Insert title here</title>
</head>
<script>
$(function() {
	
	var expert = $('#EXPERT_ID').val();
	$.ajax({
		type : 'POST',
		url : "Portfolio.Ajax?expert="+expert,
		data : {"expert_id" : expert},
		dataType : "json",
		success : function(rdata) {
			console.log(rdata.length);
			console.log(rdata);
			output = '';
			
			$(rdata).each(function(){
				output += "<tr><th id='career_th'>"
					   + this.PF_INTRO
					   + "</th></tr>";
			});
			console.log(output);
			$("#career_table tbody").append(output);
			
			
		}
		
	});

	})

</script>
<body>

	<span id="career_text">경력</span>
	<table id="career_table">
		<tbody>
		<!-- 경력 출력 -->
		</tbody>
	</table>
	<hr id="hr_1">
	<span id="picture_text">사진</span>

</body>
</html>