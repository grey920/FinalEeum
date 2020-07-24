<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="resources/css/service/review_list.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">


<link rel="stylesheet" type="text/css"
	href="resources/css/service/star-rating-svg.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/service/demo.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
<script src="resources/js/service/jquery.star-rating-svg.js"></script>

<script src="resources/js/service/review_list.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


<title>Insert title here</title>

</head>
<body>
	<span id="review_text" style="padding-left: 10%;">후기</span>
	<div id="chart">
		<canvas id="myChart"
			style="width: 30%; height: 30%; position: relative;"> </canvas>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>


	<hr>
	<table id="career_table">
		<tbody>
			<!-- 경력 출력 -->

		</tbody>
	</table>

	<div id="comment">

		<button class="btn btn-info float-left" id="button_etc1"
			style="background: #CADEE3; border: 0px;">
			<span style="color: black; font-weight: 700; ">※이유없는 비방 및 욕설은
				신고대상입니다.</span>
		</button>

		<textarea rows=6 class="form-control" id="content" maxLength="400"
			cols="50" style="resize: none" wrap="hard"></textarea>
		<button id="write" class="btn btn-info float-right"
			style="background: #CADEE3; border: 0px; ">등록</button>

		<!-- 친절함  -->
		
		<span id="tag1" >친절함: </span>
			
		<span class="svg-star-rating1 jq-stars" style="position: absolute;  width: 500px;"></span> 
		<span class="live-rating1" style="float: right; padding-right: 53%; " ></span>
	
		
		
			 <input
			type="hidden" id="rating_hidden"><br> 
			
			<b
			style="font-size: 15px; ">명확한 설명 :
		</b><span class="svg-star-rating2 jq-stars"
			style="position: absolute; "></span> <span
			class="live-rating2"
			style="float: right; padding-right: 53%;"></span>
			
			 <input
			type="hidden" id="rating_hidden"><br> 
			
			<b style="font-size: 15px;">청결도 : </b><span class="svg-star-rating3 jq-stars"  style="position: absolute; "></span> <span class="live-rating3" style="float: right; padding-right: 53%;"></span>
		<input type="hidden" id="rating_hidden"><br> <b
			style="font-size: 15px;">전문성 : </b><span
			class="svg-star-rating4 jq-stars" style="position: absolute; "></span> <span class="live-rating4" style="float: right; padding-right: 53%;"></span>
		<input type="hidden" id="rating_hidden"><br> <b
			style="font-size: 15px;">시간준수 : </b><span
			class="svg-star-rating5 jq-stars" style="position: absolute; "></span> <span class="live-rating5" style="float: right; padding-right: 53%;"></span>
		<input type="hidden" id="rating_hidden"><br> <b
			style="font-size: 15px;">가격의 합리성 : </b><span
			class="svg-star-rating6 jq-stars" style="position: absolute; "></span> <span class="live-rating6" style="float: right; padding-right: 53%;"></span>
		<input type="hidden" id="rating_hidden"><br>



		<table class="table table_striped" id="user_review"
			style="max-width: 110%;">

			<thead>
				<tr>

				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>

	</div>
	<div id="message"></div>




</body>
</html>