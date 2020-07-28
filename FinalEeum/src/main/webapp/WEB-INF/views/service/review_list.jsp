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
	<span id="review_text" style="padding-left: 10%;">후기-</span>
	<div id="chart">
		<canvas id="myChart"
			style="width: 30%; height: 30%; position: relative;"> </canvas>
	</div>

	<hr>
	<table id="career_table">
		<tbody>
			<!-- 경력 출력 -->

		</tbody>
	</table>

	<div id="comment">


	<div>

		<textarea class="form-control" id="content" maxLength="400"
			 rows="20" style="resize: none; width: 25%; position: absolute;" wrap="hard" ></textarea>

</div>

		<!-- 친절함  -->
		
		<div id="div_1" >
		<span id="tag1" style="background: #E4E8F0;padding: 5%;border-radius: 4px; padding-left: 12%; text-align: center;"><b>친절함: </b></span>
		<span class="svg-star-rating1 jq-stars" style="position: absolute;  width: 950px; padding-left: 2%;"></span> 
		<div class="live-rating1" style="float: right; " ></div>
		<input type="hidden" id="rating_hidden"><br> 


		<span style="background: #E4E8F0;padding: 2.4%;border-radius: 4px;">명확한 설명 : </span>
		<span class="svg-star-rating2 jq-stars" style="position: absolute;  width: 950px; padding-left: 2%;"></span> 
		<span class="live-rating2" style="float: right;"></span>
		<input type="hidden" id="rating_hidden"><br> 
			
	
		<span style="background: #E4E8F0;padding: 3%;border-radius: 4px; padding-left: 13%;">청결도 : </span> 
		<span class="svg-star-rating3 jq-stars"  style="position: absolute;  width: 950px; padding-left: 2%;"></span> 
		<span class="live-rating3" style="float: right; "></span>
		<input type="hidden" id="rating_hidden"><br> 
	
		
		<span style="background: #E4E8F0;padding:3%;border-radius: 4px;padding-left: 13%;">전문성 : </span>
		<span class="svg-star-rating4 jq-stars" style="position: absolute;  width: 950px; padding-left: 2%;">
		</span> <span class="live-rating4" style="float: right; "></span>
		<input type="hidden" id="rating_hidden"><br> 
		
		<span style="background: #E4E8F0;padding: 3%;border-radius: 4px;padding-left: 8%;">시간준수 : </span>
		<span class="svg-star-rating5 jq-stars" style="position: absolute;width: 950px;padding-left: 2.0%;"></span>
		<span class="live-rating5" style="float: right; "></span>
		<input type="hidden" id="rating_hidden"><br> 
		
		<span style="background: #E4E8F0;padding: 3%;border-radius: 4px;">가격의합리성 : </span>
		
		<span class="svg-star-rating6 jq-stars" style="position: absolute;  width: 950px; padding-left: 1.3%;"></span> 
		<span class="live-rating6" style="float: right; "></span>
		<input type="hidden" id="rating_hidden"><br>
		
		</div>
	
		<br>
		<br>
		<br>
		<br>
		<br>
		<button id="write" class="btn btn-info"
			style="background: #CADEE3; border: 0px; ">등록</button>
		<table class="table table_striped" id="user_review"
			style="max-width: 120%;">

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