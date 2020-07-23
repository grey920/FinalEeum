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
	<span id="review_text">후기</span>
	<div id="chart">
		<canvas id="myChart"
			style="width: 30%; height: 30%; position: relative;"> </canvas>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var expert = $('#EXPERT_ID').val();
							var expert_login_id = $("#expert_id_login").val();
							console.log("현재 로그인했니 전문가가.." + expert_login_id);

							//통계
							$.ajax({
										type : 'POST',
										url : "Review.Ajax?expert=" + expert,
										data : {
											"expert_id" : expert
										},
										dataType : "json",
										success : function(rdata) {
											console.log(rdata.length);
											console.log(rdata);
											$(rdata).each(
															function() {
																var rv_rating1 = (this.rv_rating1);
																var rv_rating2 = (this.rv_rating2);
																var rv_rating3 = (this.rv_rating3);
																var rv_rating4 = (this.rv_rating4);
																var rv_rating5 = (this.rv_rating5);
																var rv_rating6 = (this.rv_rating6);
																console
																		.log("평점:"
																				+ rv_rating1);

																output = "<input type='hidden' value='"+rv_rating1+"' id='rating1'>";

																var ctx = document
																		.getElementById(
																				'myChart')
																		.getContext(
																				'2d');

																var chart = new Chart(
																		ctx,
																		{
																			// The type of chart we want to create
																			type : 'polarArea',

																			// The data for our dataset
																			data : {
																				labels : [
																						"친절함",
																						"명확한 설명",
																						"청결도",
																						"전문성",
																						"시간준수",
																						"가격의 합리성" ],
																				datasets : [ {
																					label : "My First dataset",
																					backgroundColor : [
																							'rgba(255, 0, 0, 0.5)',
																							'rgba(100, 255, 0, 0.5)',
																							'rgba(200, 50, 255, 0.5)',
																							'rgba(0, 100, 255, 0.5)',
																							'rgba(250, 185, 46, 0.5)',
																							'rgba(255, 249, 89, 0.5)' ],
																					borderColor : '#fff',
																					data : [
																							rv_rating1,
																							rv_rating2,
																							rv_rating3,
																							rv_rating4,
																							rv_rating5,
																							rv_rating6 ],
																				} ]
																			},

																			// Configuration options go here
																			options : {}
																		});
																Chart.scaleService.defaults.radialLinear.ticks.backdropColor = 'rgba(0, 0, 0, 0)';
															});
											$("#career_table tbody").append(
													output);

										}
									});
						var expert_id_login1 = $('#expert_id_login').val();
						console.log("sdsddsd"+expert);
						$.ajax({
							type : 'POST',
							url : "ExpertLogin.Ajax?expert="+expert,
							data : {"expert_id" : expert},
							dataType : "json",
							success : function(rdata) {
								console.log("딱들어와");
								if(rdata == 1){
									alert('불가');
									$("#write").attr("disabled",true);
									$("#content").text("전문가는 후기를 남길 수 없습니다.");
									$("#content").attr("readonly",true);
								}else{
									
									
								}
								
								
							}
							
						});
							
						})
	</script>
	<script>
		
	</script>
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
			style="background: #CADEE3; border: 0px; ">
			<span style="color: black; font-weight: 700;" >등록</span>
		</button>

		<!-- 친절함  -->
		<div class="tag1_wrapper">
		<span id="tag1" >친절함: </span>
			
		<div class="svg-star-rating1 jq-stars"></div> 
		<span class="live-rating1" ></span>
		</div>
		
		
			 <input
			type="hidden" id="rating_hidden"><br> 
			
			<b
			style="font-size: 20px; position: relative; top: 30px;">명확한 설명 :
		</b><span class="svg-star-rating2 jq-stars"
			style="position: relative; left: 10%;"></span> <span
			class="live-rating2"
			style="position: relative; left: 230px; bottom: 28px;"></span> <input
			type="hidden" id="rating_hidden"><br> <b
			style="font-size: 15px;">청결도 : </b><span
			class="svg-star-rating3 jq-stars"></span> <span class="live-rating3"></span>
		<input type="hidden" id="rating_hidden"><br> <b
			style="font-size: 15px;">전문성 : </b><span
			class="svg-star-rating4 jq-stars"></span> <span class="live-rating4"></span>
		<input type="hidden" id="rating_hidden"><br> <b
			style="font-size: 15px;">시간준수 : </b><span
			class="svg-star-rating5 jq-stars"></span> <span class="live-rating5"></span>
		<input type="hidden" id="rating_hidden"><br> <b
			style="font-size: 15px;">가격의 합리성 : </b><span
			class="svg-star-rating6 jq-stars"></span> <span class="live-rating6"></span>
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