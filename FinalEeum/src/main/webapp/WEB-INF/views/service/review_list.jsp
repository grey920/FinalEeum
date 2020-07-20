<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/service/review_list.css">
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">


<link rel="stylesheet" type="text/css"
	href="resources/css/service/star-rating-svg.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/service/demo.css">

<script src="resources/js/service/jquery.star-rating-svg.js"></script>
<script src="resources/js/service/review_list.js"></script>
<script src="resources/js/service/hexagon-chart.js"></script>
<title>Insert title here</title>
<script>
            function getValueByID(id) {
                return document.getElementById(id).value;
            }

            function fresh() {
                var str = getValueByID('PUSH-UPS') / 10;
                var agi = getValueByID('SQUATS') / 10;
                var mag = getValueByID('PULL-UPS') / 10;
                var hp = getValueByID('LEG-RAISES') / 10;
                var mp = getValueByID('BRIDGES') / 10;
                var def = getValueByID('HANDSTAND PUSH-UPS') / 10;

                hexagon.init('demo', 180, ['PU', 'SQ', 'PL', 'LR', 'BR', 'HU']);
                hexagon.draw([str, agi, mag, hp, mp, def]);
            }

            fresh ();
        </script>
</head>
<body>
	<span id="review_text">후기</span>
        <div id="base_container" class="container-fluid text-center" style="width: 100%;">

            <div class="col-md-6">
                <canvas id="demo"></canvas>
            </div>

            <div class="col-md-6">
                <table class="table table-bordered table-striped table-hover">
                    <tbody style="display: none;">
                        <tr>
                            <th class="text-center">Abbreviation</th>
                            <th class="text-center">Name</th>
                            <th class="text-center">Level</th>
                        </tr>
                        <tr>
                            <td>PU</td>
                            <td>PUSH-UPS</td>
                            <td><input type="hidden" class="form-control" id="PUSH-UPS" value="5" /></td>
                        </tr>
                        <tr>
                            <td>SQ</td>
                            <td>SQUATS</td>
                            <td><input type="text" class="form-control" id="SQUATS" value="7" /></td>
                        </tr>
                        <tr>
                            <td>PL</td>
                            <td>PULL-UPS</td>
                            <td><input type="text" class="form-control" id="PULL-UPS" value="1" /></td>
                        </tr>
                        <tr>
                            <td>LR</td>
                            <td>LEG-RAISES</td>
                            <td><input type="text" class="form-control" id="LEG-RAISES" value="3" /></td>
                        </tr>
                        <tr>
                            <td>BR</td>
                            <td>BRIDGES</td>
                            <td><input type="text" class="form-control" id="BRIDGES" value="1" /></td>
                        </tr>
                        <tr>
                            <td>HU</td>
                            <td>HANDSTAND PUSH-UPS</td>
                            <td><input type="text" class="form-control" id="HANDSTAND PUSH-UPS" value="1" /></td>
                        </tr>
                    </tbody>
                </table>
            <button class="btn btn-lg btn-info btn-block" onclick="fresh()" style="display: none;">Submit</button>
            </div>

        </div>
	<hr>

	<div id="comment">
		<button class="btn btn-info float-left" >이유없는 비방 및 욕설은
			신고대상입니다.</button>

		<textarea rows=6 class="form-control" id="content" maxLength="400" cols="50"
			style="resize: none" wrap="hard"></textarea>
		<button id="write" class="btn btn-info float-right">등록</button>

		<!-- 친절함  -->
		<b id="tag1">친절함 : </b><span class="svg-star-rating1 jq-stars"></span>
		 <span class="live-rating1"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b>명확한 설명 : </b><span class="svg-star-rating2 jq-stars"></span>
		 <span class="live-rating2"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b>청결도 : </b><span class="svg-star-rating3 jq-stars"></span>
		 <span class="live-rating3"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b>전문성 : </b><span class="svg-star-rating4 jq-stars"></span>
		 <span class="live-rating4"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b>시간준수 : </b><span class="svg-star-rating5 jq-stars"></span>
		 <span class="live-rating5"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 
		 <b>가격의 합리성 : </b><span class="svg-star-rating6 jq-stars"></span>
		 <span class="live-rating6"></span>
		 <input type="hidden" id="rating_hidden"><br>
		 



		<table class="table table_striped" id="user_review">

			<thead>
				<tr>

				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
		<div id="message"></div>
	</div>



</body>
</html>