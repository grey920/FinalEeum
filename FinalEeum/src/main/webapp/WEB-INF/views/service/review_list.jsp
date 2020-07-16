<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/service/review_list.css">

<link rel="stylesheet" type="text/css"
	href="resources/css/service/star-rating-svg.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/service/demo.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="resources/js/service/jquery.star-rating-svg.js"></script>
<%@ include file="../header.jsp" %>
<title>Insert title here</title>
<script>
	$(function() {

		$(".svg-star-rating").starRating(
				{
					totalStars : 5,

					emptyColor : '#D9FFD9',
					hoverColor : 'blue',
					activeColor : '#006600',
					onHover : function(currentIndex, currentRating, $el) {
						console.log('index: ', currentIndex, 'currentRating: ',
								currentRating, ' DOM element ', $el);
						$('.live-rating').text(currentIndex);
					},
					onLeave : function(currentIndex, currentRating, $el) {
						console.log('index: ', currentIndex, 'currentRating: ',
								currentRating, ' DOM element ', $el);
						$('.live-rating').text(currentRating);
					}
				});//네

	});
</script>
</head>
<body>
	<span id="review_text">후기</span>
	<img src="resources/img/blog/to.PNG" alt="" id="to_img">
	<hr>

	<div id="comment">
		<button class="btn btn-info float-left">이유없는 비방 및 욕설은
			신고대상입니다.</button>

		<textarea rows=3 class="form-control" id="content" maxLength="50"
			style="resize: none"></textarea>
		<button id="write" class="btn btn-info float-right">등록</button>

		<span class="svg-star-rating jq-stars" data-rating="3.0"></span> <span
			class="live-rating"></span>
			


		<table class="table table_striped" id="user_review">

			<thead>
				<tr>
					<td>아이디</td>
					<td>내용</td>
					<td>날짜</td>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
		<div id="message"></div>
	</div>

	<script
		src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
	<script src="resources/js/vendor/jquery-1.12.0.min.js"></script>

</body>
</html>