<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
</head>
<style type="text/css">
.checkout-area{padding-top:50px;}
button{margin-bottom:20px;}
table {
	width: 100%;
}

.hide {
	display: none;
}

.show {
	display: table-row;
}

.item td {
	cursor: pointer;
}
</style>
<body>
	<div class="wrapper">
		<div class="breadcrumb-area mt-37 hm-4-padding">
			<div class="container-fluid">
				<div class="breadcrumb-content text-center">
					<h3>Q&A</h3>
				</div>
			</div>
		</div>


		<div class="checkout-area pt-130 hm-3-padding pb-100">
			<div class="container-fluid">
			<%-- 게시글이 있는 경우 --%>
				<div class="row">
					<div class="col-md-12">
				<button type="button" class="btn float-right">문의글 작성</button>
						<div class="coupon-accordion">

							<table cellspacing="0" border="1" class="recruit">
								<thead>
									<tr class="">
										<th scope="col"><div>번호</div></th>
										<th scope="col"><div>제목</div></th>
										<th scope="col"><div>작성자</div></th>
										<th scope="col"><div>작성일</div></th>
										<th scope="col"><div>조회수</div></th>
									</tr>
								</thead>
								<tbody>
									<tr class="item">
										<td>아야어</td>
										<td>아야어</td>
										<td>아야어</td>
										<td>아야어</td>
									</tr>
									<tr class="hide">
										<td colspan="4">1. 모집부분 <br> [경력] 제휴사업기획 인원 모집 <br>
											<br> 2. 담당업무 <br> 1) 시장 분석 및 전략 수립 <br> 2) 사업적
											지표(데이터)관리 및 분석 <br> 3) 사업 일정 관리 및 내,외부 커뮤니케이션/관리 <br>
											<br> 3. 자격요건 <br> - 게임 및 게임사업에 대한 비전과 열정 보유 <br>
											- 원만한 대인관계 및 커뮤니케이션 능력 보유 <br> - 전략적인 문제 해결능력 및 데이터 분석
											능력 보유 <br> - 사업/마케팅/기획 업무 능력 보유 <br> - 책임감이 강하며,
											꼼꼼하고 정확한 성격의 소유자
										</td>
									</tr>
									<tr class="item">
										<td>아야어</td>
										<td>아야어</td>
										<td>아야어</td>
										<td>아야어</td>
									</tr>
									<tr class="hide">
										<td colspan="4">1. 모집부분 <br> [경력] 제휴사업기획 인원 모집 <br>
											<br> 2. 담당업무 <br> 1) 시장 분석 및 전략 수립 <br> 2) 사업적
											지표(데이터)관리 및 분석 <br> 3) 사업 일정 관리 및 내,외부 커뮤니케이션/관리 <br>
											<br> 3. 자격요건 <br> - 게임 및 게임사업에 대한 비전과 열정 보유 <br>
											- 원만한 대인관계 및 커뮤니케이션 능력 보유 <br> - 전략적인 문제 해결능력 및 데이터 분석
											능력 보유 <br> - 사업/마케팅/기획 업무 능력 보유 <br> - 책임감이 강하며,
											꼼꼼하고 정확한 성격의 소유자
										</td>
									</tr>
									<tr class="item">
										<td>아야어</td>
										<td>아야어</td>
										<td>아야어</td>
										<td>아야어</td>
									</tr>
									<tr class="hide">
										<td colspan="4">1. 모집부분 <br> [경력] 제휴사업기획 인원 모집 <br>
											<br> 2. 담당업무 <br> 1) 시장 분석 및 전략 수립 <br> 2) 사업적
											지표(데이터)관리 및 분석 <br> 3) 사업 일정 관리 및 내,외부 커뮤니케이션/관리 <br>
											<br> 3. 자격요건 <br> - 게임 및 게임사업에 대한 비전과 열정 보유 <br>
											- 원만한 대인관계 및 커뮤니케이션 능력 보유 <br> - 전략적인 문제 해결능력 및 데이터 분석
											능력 보유 <br> - 사업/마케팅/기획 업무 능력 보유 <br> - 책임감이 강하며,
											꼼꼼하고 정확한 성격의 소유자
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
	</div>
	<!-- <script type="text/javascript">
		$(function() {
			var article = (".recruit .show");
			$(".recruit .item  td").click(function() {
				var myArticle = $(this).parents().next("tr");
				if ($(myArticle).hasClass('hide')) {
					$(article).removeClass('show').addClass('hide');
					$(myArticle).removeClass('hide').addClass('show');
				} else {
					$(myArticle).addClass('hide').removeClass('show');
				}
			});
		});
	</script> -->
	<script src="resources/js/vendor/jquery-1.12.0.min.js"></script>

	<script src="resources/js/popper.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/isotope.pkgd.min.js"></script>
	<script src="resources/js/imagesloaded.pkgd.min.js"></script>
	<script src="resources/js/jquery.counterup.min.js"></script>
	<script src="resources/js/waypoints.min.js"></script>
	<script src="resources/js/ajax-mail.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>