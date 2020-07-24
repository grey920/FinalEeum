<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
					<h2>원데이 클래스</h2>
					<ul>
						<li><a href="#">home</a></li>
						<li>One day Class</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="banner-area hm-4-padding">
			<div class="container-fluid">
				<div class="banner-img">
					<a href="#"><img src="resources/img/banner/16.png" alt=""></a>
				</div>
			</div>
		</div>
		<div class="shop-wrapper hm-3-padding pt-120 pb-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="shop-topbar-wrapper">
							<div class="grid-list-options">
								<ul class="view-mode">
									<li class="active"><a href="#product-grid"
										data-view="product-grid"><i class="ion-grid"></i></a></li>
									<li><a href="#product-list" data-view="product-list"><i
											class="ion-navicon"></i></a></li>
								</ul>
							</div>
							<c:if test="${user_id=='admin'}">
								<div class="shop-filter">
									<button class="write_oneday">글쓰기</button>
								</div>
							</c:if>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="product-filter-wrapper">
							<div class="row">
								<div class="product-filter col-md-3 col-sm-6 col-xs-12 mb-30">
									<h5>Sort by</h5>
									<ul class="sort-by">
										<li><a href="#">Default</a></li>
										<li><a href="#">Popularity</a></li>
										<li><a href="#">Average rating</a></li>
										<li><a href="#">Newness</a></li>
										<li><a href="#">Price: Low to High</a></li>
										<li><a href="#">Price: High to Low</a></li>
									</ul>
								</div>
								<div class="product-filter col-md-3 col-sm-6 col-xs-12 mb-30">
									<h5>color filters</h5>
									<ul class="color-filter">
										<li><a href="#"><i style="background-color: #000000;"></i>Black</a></li>
										<li><a href="#"><i style="background-color: #663300;"></i>Brown</a></li>
										<li><a href="#"><i style="background-color: #FF6801;"></i>Orange</a></li>
										<li><a href="#"><i style="background-color: #ff0000;"></i>red</a></li>
										<li><a href="#"><i style="background-color: #FFEE00;"></i>Yellow</a></li>
									</ul>
								</div>
								<div class="product-filter col-md-3 col-sm-6 col-xs-12 mb-30">
									<h5>product tags</h5>
									<div class="product-tags">
										<a href="#">New ,</a> <a href="#">brand ,</a> <a href="#">black
											,</a> <a href="#">white ,</a> <a href="#">chire ,</a> <a href="#">table
											,</a> <a href="#">Lorem ,</a> <a href="#">ipsum ,</a> <a href="#">dolor
											,</a> <a href="#">sit ,</a> <a href="#">amet ,</a>
									</div>
								</div>
								<div class="product-filter col-md-3 col-sm-6 col-xs-12 mb-30">
									<h5>Filter by price</h5>
									<div id="price-range"></div>
									<div class="price-values">
										<span>Price:</span> <input type="text" class="price-amount">
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 여기 -->
					<input type="hidden" id="loginid" value="${user_id}" name="loginid">
	<div class="container">
	  <table class="table table-striped">
	  	<tr><th colspan="2"> 신고 게시판 </th></tr>
	  	<tr>
	  		<td><div>글쓴이</div></td>
	  		<td><div>${boarddata.QNA_WRITER}</div></td>
	  	</tr>
	  	<tr>
	  		<td><div>제목</div></td>
	  		<td><div>${boarddata.QNA_TITLE}</div></td>
	  	</tr>
	  	<tr>
	  		<td><div>내용</div></td>
	  		<td>${boarddata.QNE_CONTENT}</td>
	  	</tr>


	  	 <tr>	 
	  	 	<td colspan="2" class="center">
	  	 		
	  	 	<c:if test="${boarddata.QNA_WRITER == user_id || user_id == 'admin' }">
		  	 	<a href="BoardModifyView.bo?num=${boarddata.QNA_INDEX }">
		  	 		<button class="btn btn-info">수정</button>
		  	 	</a>

	  	 	</c:if>
	  	 	<a href="BoardList.bo">
	  	 		<button class="btn btn-primary">목록</button>
	  	 	</a>
	  	 	</td>
	  	 </tr>
	  </table>
	  	<%--게시판 수정 end --%>
	  	
	  	<%-- modal 시작  --%>
	  	<div class="modal" id="myModal">
	  	  <div class="modal-dialog">
	  	    <div class="modal-content">
	  	    <!-- Modal body -->
	  	     <div class="modal-body">
	  	       <form name="deleteForm" action="BoardDeleteAction.bo" method="post">
	  	       	<%--http://localhost:8088/SEMI_PROJECT/BoardDetailAction.bo?num=22
	  	       		주소를 보면 num을 파라미터로 넘기고 있습니다.
	  	       		이 값을 가져와서 ${param.num}를 사용
	  	       		또는 ${boarddata.BOARD_NUM}
	  	       	 --%>
	  	       	 <input type="hidden" name="num" value="${param.num}" id="board_num">
	  	       	 <div class="form-group">
	  	       	 	<label for="pwd">비밀번호</label>
	  	       	 	<input type="password"
	  	       	 			class="form-control" placeholder="Enter password"
	  	       	 			name="BOARD_PASS" id="board_pass">
	  	       	 </div>
	  	       	 <button type="submit" class="btn btn-primary">전송</button>
	  	       	 <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
	  	       </form>
	  	     </div>
	  	    </div>
	  	  </div>
	  	</div>
	  	
	  	<!-- 댓글 -->
	  	<!-- 관리자면 댓글을 보여라.. -->
	  	
	  	 <div id="comment">
	  	 <c:if test="${user_id == 'admin'}">

         <button id="write" class="btn btn-info float-right">등록</button>
         <textarea rows=3 class="form-control" id="content" maxLength="300"
            style="resize: none"></textarea>
         <table class="table table_striped">
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
         </c:if>
         <div id="message"></div>
      </div>
   </div>
				</div>
				
</div>

	


			<footer class="hm-4-padding">
				<div class="container-fluid">
					<div class="footer-top pt-125 pb-25">
						<div class="row">
							<div class="col-lg-3 col-md-5">
								<div class="footer-widget mb-30">
									<div class="footer-widget-title">
										<h3>Get in Touch</h3>
									</div>
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
		<script src="resources/js/qna_board/view3.js"></script>
</body>
</html>