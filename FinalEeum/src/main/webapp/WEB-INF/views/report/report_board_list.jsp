<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>






<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>원데이 클래스</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/favicon.png">

<!-- all css here -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/chosen.min.css">
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/meanmenu.min.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/ionicons.min.css">
<link rel="stylesheet" href="resources/css/bundle.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>

<%@ include file="../header.jsp" %>
<style>
.write_oneday {
	border-style: none;
	padding: 3px 10px;
	background-color: #CADEE3;
	color: white;
	cursor: pointer;
}

.paging_align {
	display: flex;
	justify-content: center;
}

.product-wrapper .end:after {
	background: rgba(0, 0, 0, .53);
}
</style>
</head>
<body>
	<div class="wrapper">
		<!-- header start -->
		<div class="header-height"></div>
		<!-- main-search start -->
		<div class="main-search-active">
			<div class="sidebar-search-icon">
				<button class="search-close">
					<span class="ti-close"></span>
				</button>
			</div>
			<div class="sidebar-search-input">
				<form>
					<div class="form-search">
						<input id="search" class="input-text" value=""
							placeholder="Search Entire Store" type="search">
						<button>
							<i class="ti-search"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
		<div class="breadcrumb-area mt-37 hm-4-padding">
			<div class="container-fluid">
				<div class="breadcrumb-content text-center">
					<h2>문의 게시판</h2>

				</div>
			</div>
		</div>

		
<div class="container">
	<%--게시글이 있는 경우  --%>
	<c:if test="${listcount > 0 }">

	 <table class="table table-striped">
	 	<thead>
	 		<tr>
	 			<th colspan="3">신고 게시판</th>
	 			<th colspan="2"><font size=3>글 개수 : ${listcount}</font></th>
	 		</tr>
	 		<tr>
	 			<th><div>번호</div></th>
	 			<th><div>제목</div></th>
	 			<th><div>작성자</div></th>
	 			<th><div>날짜</div></th>

	 		</tr>
	 	</thead>
	 	<tbody>
	 	 <c:set var="num" value="${listcount-(page-1)*limit}"/>
	 	 <c:forEach var="b" items="${boardlist}">
	 	 <tr>
	 	 	<td><%--번호 --%>
	 	 		<c:out value="${num}"/><%--num 출력 --%>
	 	 		<c:set var="num" value="${num-1}"/> <%--num = num-1; 의미 --%>
	 	 	</td>
	 	 	<td><%--제목 --%>
	 	 		<div>
	 	 			<%--답변글 제목앞에 여백 처리 부분
	 	 				BOARD_RE_LEV, BOARD_NUM,
	 	 				BOARD_SUBJECT, BOARD_NAME, OARD_DATE
						BOARD_READCOUNT : property 이름
	 	 			 
	 	 			 --%>
	 	 			 

	 	 			 <c:if test="${user_id == b.REPORT_WRITER || user_id == 'admin1234'}">
	 	 			 <a href="./BoardDetailAction.bo?num=${b.REPORT_INDEX}">
	 	 			 	${b.REPORT_TITLE}
	 	 			 </a>
	 	 			 </c:if>
	 	 			 
	 	 			 	 <c:if test="${user_id != b.REPORT_WRITER && user_id != 'admin1234'}">
	 	 			 신고합니다.
	 	 			 </c:if>
	 	 			 
	 	 			 
	 	 		</div>
	 	 		</td>
	 	 				<c:if test="${user_id == b.REPORT_WRITER || user_id == 'admin1234'}">
	 	 			 	 	 	<td><div>${b.REPORT_WRITER}</div></td>
	 	 			 </c:if>
	 	 			 
	 	 			 
	 	 			  	<c:if test="${user_id != b.REPORT_WRITER && user_id != 'admin1234'}">
	 	 			<td><div>일반사용자</div></td>
	 	 			 </c:if>
	 	 		<td><div>${b.REPORT_DATE}</div></td>
	 	 	</tr>
	 	 	</c:forEach>
	 	</tbody>
	 </table>
	 
	 <div class="center-block">
	   <div class="row">
	     <div class="rol">
	       <ul class="pagination">
	       	 <c:if test="${page <= 1 }">
	       	   <li class="page-item">
	       	   	 <a class="page-link gray">이전&nbsp;</a>
	       	   	</li>
	       	  </c:if>
	       	  <c:if test="${page > 1}">
	       	    <li class="page-item">
	       	   	 <a href="./BoardList.bo?page=${page-1}"
	       	   	 	class="page-link">이전&nbsp;</a>
	       	   	</li>
	       	  </c:if>
	       	  
	       	  <c:forEach var="a" begin="${startpage}" end="${endpage}">
	       	  		<c:if test="${a == page }"> <!-- 현재페이지와 같으면 버튼이 회색되게 하는 것  -->
	       	  		  <li class="page-item">
	       	  		  	<a class="page-link gray">${a}</a>
	       	  		  </li>
	       	  		</c:if>
	       	  		<c:if test="${a != page}">
	       	  		  <li class="page-item">
	       	  		    <a href="./BoardList.bo?page=${a}"
	       	  		    	class="page-link">${a}</a>
	       	  		  </li>
	       	  		</c:if>
	       	   </c:forEach>
	       	  
	       	  <c:if test="${page >= maxpage}">
	       	  	<li class="page-item">
	       	      <a class="page-link gray">&nbsp;다음</a>
	       	  	</li>
	       	  </c:if>
	       	  <c:if test="${page < maxpage}">
	       	  	<li class="page-item">
	       	  	  <a href="./BoardList.bo?page=${page+1}"
	       	  	     class="page-link">&nbsp;다음</a>
	       	  	</li>
	       	  </c:if>
	       </ul>
	     </div>
	   </div>
	 </div>
	</c:if>
	<!-- 레코드가 없으면 -->
	<c:if test="${listcount == 0}">
		<font size=5>등록된 글이 없습니다.</font>
	</c:if>

<button type="button" class="btn btn-info float-right">글 쓰 기</button>
</div>

<!-- 글쓰기 마지막 -->
			<footer class="hm-4-padding">
				<div class="container-fluid">
					<div class="footer-top pt-125 pb-25">
						<div class="row">
							<div class="col-lg-3 col-md-5">
								<div class="footer-widget mb-30">
									<div class="footer-widget-title">
										<h3>Get in Touch</h3>
									</div>
									`
									<div class="food-info-wrapper">
										<div class="food-address">
				
				
											<div class="food-info-icon">
												<i class="ion-ios-home-outline"></i>
											</div>
											<div class="food-info-content">
												<p>
													2020 Willshire Glen, Out of <br>Alpharetta, GA-30009
												</p>
											</div>
										</div>
										<div class="food-address">
				
											<div class="food-info-icon">
												<i class="ion-ios-telephone-outline"></i>
											</div>
											<div class="food-info-content">
												<p>(+00) 121 025 0214</p>
											</div>
										</div>
										<div class="food-address">
											<div class="food-info-icon">
												<i class="ion-ios-email-outline"></i>
											</div>
											<div class="food-info-content">
												<p>
													<a href="#">info@example.com</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-2 col-md-4">
								<div class="footer-widget mb-30 pl-10">
									<div class="footer-widget-title">
										<h3>Information</h3>
									</div>
									<div class="food-widget-content">
										<ul class="quick-link">
											<li><a href="#">Delivery</a></li>
											<li><a href="#">Legal Notice</a></li>
											<li><a href="#">Terms & Conditions</a></li>
											<li><a href="about-us.html">About Us</a></li>
											<li><a href="#">Secure Payment</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-2 col-md-3">
								<div class="footer-widget mb-30 pl-100">
									<div class="footer-widget-title">
										<h3>accounts</h3>
									</div>
									<div class="food-widget-content">
										<ul class="quick-link">
											<li><a href="login-register.html">Sign In</a></li>
											<li><a href="cart.html">View Cart</a></li>
											<li><a href="wishlist.html">My Wishlist</a></li>
											<li><a href="#">Track My Order</a></li>
											<li><a href="#">Help</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-2 col-md-6">
								<div class="footer-widget mb-30 pl-125">
									<div class="footer-widget-title">
										<h3>support</h3>
									</div>
									<div class="food-widget-content">
										<ul class="quick-link">
											<li><a href="contact.html">Hello & Contact</a></li>
											<li><a href="#">Shipping & Tax</a></li>
											<li><a href="#">Return Policy</a></li>
											<li><a href="#">Affiliates</a></li>
											<li><a href="#">Legal Notice</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="footer-widget mb-30 f-right">
									<div class="footer-widget-title">
										<h3>twitter feed</h3>
									</div>
									<div class="twitter-info-wrapper">
										<div class="single-twitter">
											<div class="twitter-icon">
												<i class="ion-social-twitter-outline"></i>
											</div>
											<div class="twitter-content">
												<p>
													A modern <a href="#">#Shopify theme </a> <a class="link1"
														href="#">@devitems</a> <br> <a class="link2" href="#">https://twitter.com/devitemsllc</a>
												</p>
											</div>
										</div>
										<div class="single-twitter">
											<div class="twitter-icon">
												<i class="ion-social-twitter-outline"></i>
											</div>
											<div class="twitter-content">
												<p>
													A modern <a href="#">#Shopify theme </a> <a class="link1"
														href="#">@devitems</a> <br> <a class="link2" href="#">https://twitter.com/devitemsllc</a>
												</p>
											</div>
										</div>
										<div class="single-twitter">
											<div class="twitter-icon">
												<i class="ion-social-twitter-outline"></i>
											</div>
											<div class="twitter-content">
												<p>
													A modern <a href="#">#Shopify theme </a> <a class="link1"
														href="#">@devitems</a> <br> <a class="link2" href="#">https://twitter.com/devitemsllc</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="footer-bottom border-top-1 ptb-15">
						<div class="row">
							<div class="col-md-6 col-12">
								<div class="copyright-payment">
									<div class="copyright">
										<p>
											Copyright © 2018 <a href="https://freethemescloud.com/">Free
												themes Cloud</a> All RIght Reserved.
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-12">
								<div class="footer-payment-method">
									<a href="#"><img alt="" src="resources/img/icon-img/7.png"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</footer>
			<!-- modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-hidden="true">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span class="ion-android-close" aria-hidden="true"></span>
				</button>
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-body">
							<div class="qwick-view-left">
								<div class="quick-view-learg-img">
									<div class="quick-view-tab-content tab-content">
										<div class="tab-pane active show fade" id="modal1"
											role="tabpanel">
											<img src="resources/img/quick-view/l1.jpg" alt="">
										</div>
										<div class="tab-pane fade" id="modal2" role="tabpanel">
											<img src="resources/img/quick-view/l2.jpg" alt="">
										</div>
										<div class="tab-pane fade" id="modal3" role="tabpanel">
											<img src="resources/img/quick-view/l3.jpg" alt="">
										</div>
									</div>
								</div>
								<div class="quick-view-list nav" role="tablist">
									<a class="active" href="#modal1" data-toggle="tab"> <img
										src="resources/img/quick-view/s1.jpg" alt="">
									</a> <a href="#modal2" data-toggle="tab"> <img
										src="resources/img/quick-view/s2.jpg" alt="">
									</a> <a href="#modal3" data-toggle="tab"> <img
										src="resources/img/quick-view/s3.jpg" alt="">
									</a>
								</div>
							</div>
							<div class="qwick-view-right">
								<div class="qwick-view-content">
									<h3>Handcrafted Supper Mug</h3>
									<div class="price">
										<span class="new">$90.00</span> <span class="old">$120.00
										</span>
									</div>
									<div class="rating-number">
										<div class="quick-view-rating">
											<i class="ion-ios-star red-star"></i> <i
												class="ion-ios-star red-star"></i> <i
												class="ion-ios-star red-star"></i> <i
												class="ion-ios-star red-star"></i> <i
												class="ion-ios-star red-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adip elit, sed
										do tempor incididun ut labore et dolore magna aliqua. Ut enim
										ad mi , quis nostrud veniam exercitation .</p>
									<div class="quick-view-select">
										<div class="select-option-part">
											<label>Size*</label> <select class="select">
												<option value="">- Please Select -</option>
												<option value="">900</option>
												<option value="">700</option>
											</select>
										</div>
										<div class="select-option-part">
											<label>Color*</label> <select class="select">
												<option value="">- Please Select -</option>
												<option value="">orange</option>
												<option value="">pink</option>
												<option value="">yellow</option>
											</select>
										</div>
									</div>
									<div class="quickview-plus-minus">
										<div class="cart-plus-minus">
											<input type="text" value="02" name="qtybutton"
												class="cart-plus-minus-box">
										</div>
										<div class="quickview-btn-cart">
											<a class="btn-style cr-btn" href="#"><span>add to
													cart</span></a>
										</div>
										<div class="quickview-btn-wishlist">
											<a class="btn-hover cr-btn" href="#"><span><i
													class="ion-ios-heart-outline"></i></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>






		<!-- 
		<script>
	     var date = new Date();
	     $('#poster').attr("src", "resources/upload${o.SAVEFILE}?"+date.getTime());
		</script>
 -->

		<!-- all js here -->
		<script src="resources/js/jquery-3.5.0.js"></script>
		<script src="resources/js/oneday_list.js"></script>
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
		<script src="resources/js/qna_board/list.js"></script>
</body>
</html>