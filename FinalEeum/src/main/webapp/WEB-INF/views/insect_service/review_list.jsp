<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/service/review_list.css">
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">


<link rel="stylesheet" type="text/css"
	href="resources/css/service/star-rating-svg.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/service/demo.css">

<script src="resources/js/service/jquery.star-rating-svg.js"></script>
<script src="resources/js/repair/review_list.js"></script>
<script src="resources/js/service/hexagon-chart.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Insert title here</title>

</head>
<body>
	<span id="review_text">후기</span>

	<hr>

	<div id="comment">
		<button class="btn btn-info float-left" style="background: #CADEE3; border: 0px"><span style="color: black; font-weight: 700; ">※이유없는 비방 및 욕설은
			신고대상입니다.</span></button>

		<textarea rows=6 class="form-control" id="content" maxLength="400" cols="50"
			style="resize: none" wrap="hard"></textarea>
		<button id="write" class="btn btn-info float-right" style="background:#CADEE3; border: 0px "><span style="color: black; font-weight: 700; ">등록</span></button>

		<!-- 친절함  -->
		<b id="tag1" style="font-size: 20px; position: relative; top:30px;">친절함 : </b><span class="svg-star-rating1 jq-stars" style="position: relative; left: 10%;"></span>
		 <span class="live-rating1" style="position: relative; left: 230px; bottom: 28px;"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b style="font-size: 20px; position: relative; top:30px;">명확한 설명 : </b><span class="svg-star-rating2 jq-stars" style="position: relative; left: 10%;"></span>
		 <span class="live-rating2" style="position: relative; left: 230px; bottom: 28px;"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b style="font-size: 15px;">청결도 : </b><span class="svg-star-rating3 jq-stars"></span>
		 <span class="live-rating3"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b style="font-size: 15px;">전문성 : </b><span class="svg-star-rating4 jq-stars"></span>
		 <span class="live-rating4"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b style="font-size: 15px;">시간준수 : </b><span class="svg-star-rating5 jq-stars"></span>
		 <span class="live-rating5"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b style="font-size: 15px;">가격의 합리성 : </b><span class="svg-star-rating6 jq-stars"></span>
		 <span class="live-rating6"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		
		 



		<table class="table table_striped" id="user_review" style="max-width: 110%;">

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