<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

 <!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>사용자 - 받은 메시지 목록</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.png">
		
		<!-- all css here -->
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/animate.css">
        <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="resources/css/chosen.min.css">
        <link rel="stylesheet" href="resources/css/meanmenu.min.css">
        <link rel="stylesheet" href="resources/css/themify-icons.css">
        <link rel="stylesheet" href="resources/css/ionicons.min.css">
        <link rel="stylesheet" href="resources/css/bundle.css">
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/css/responsive.css">
        <script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
        <%@ include file="../header.jsp" %>

<style>
select {font-size:13pt}
.text-center h2{font-weight:900}
.ptb-130 {padding-top:30px !important}
.pt-120{padding-top:50px !important}
.breadcrumb-content{padding-top:0;margin-top:1em}
.breadcrumb-content ul > li{font-size:13pt}
.login-form-container {box-shadow : none; 
									border:1px solid #36518F;
									border-radius:10px;
									padding:0px 20px 20px}
.nodata{display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;}
.product-subtotal{font-size:17px !important}
.product-name{font-size:17px}
 .table-content table td.product-name a {font-size: 17px;cursor:pointer;margin:0}
.table-content table td {border-bottom:2px solid #e8e6e6; padding:15px 10px}
table thead tr th{font-size:21px !important}
#msgbox{border-collapse: collapse;
				border : 2px solid #72A0E0;
				font-size:15pt;
				margin: 30px 0 30px 0}
#msgbox tr th {padding:10px 50px 10px 50px;}
#check{background-color:#72A0E0;}
#check a {color:white}
#uncheck a{color:#72A0E0}
.btn-style{margin-top:0 !important;
       			margin-right:0 !important; 
       			font-size:18px;
         		border-radius:20px;
         		background-color:white;
         		color:#72A0E0;
         		border:2px solid #72A0E0;
         		padding:13px 20px;
         		}
.btn-style:hover{background-color:#72A0E0;
         				    color:white;
         					border:2px solid #72A0E0;
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
                        <h2>MESSAGE LIST</h2>
                        <ul>
                            <li>메시지 목록</li>
                        </ul>
                    </div>
                </div>
            </div>

			<div class="col-lg-12 col-md-12 col-12 nodata">	
	            <table id="msgbox">
	            	<tr>
	            		<th id="check"><a href="messageReceive.net">받은 메시지함</a></th>
	            		<th id="uncheck"><a href="messageSend.net">보낸 메시지함</a></th>
	            	</tr>
	            </table>
	        </div>

            <div class="product-cart-area hm-3-padding pt-120 pb-130">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="table-content table-responsive">
                            
                                <table style="text-align:center">
                                    <thead>
                                        <tr>
                                            <th class="product-name">일시</th>
                                            <th class="product-quantity">보낸 사람</th>
                                            <th class="product-name">내용</th>
                                            <th class="product-quantity">상태</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                    	<c:forEach var="r" items="${rlist}">
                                        <tr>
                                         <c:set var="date" value="${r.MSG_TIME}"/>
                                            <td class="product-name" style="width:150px">
	                                           	 	<fmt:formatDate value="${date}" type="date" dateStyle="long"/><br>
	                                           	 	<fmt:formatDate value="${date}" type="time" timeStyle="short"/>
                                            </td>
                                            <td class="product-subtotal"> ${r.MSG_SID}</td>
                                            
                                            <td class="product-name">
	                                            <span class="amount">
		                                            <c:choose>
		                                            	<c:when test="${fn:length(r.MSG_CONTENT) >14}">
		                                            		<a onclick="javascript:message('msgView.net?msg_no=${r.MSG_NO}&msg_sid=${r.MSG_SID}&msg_rid=${r.MSG_RID}&msg_content=${r.MSG_CONTENT}')">
		                                            			<c:out value="${fn:substring(r.MSG_CONTENT,0,13)}"/>...
		                                            		</a>
		                                            	</c:when>
		                                            	<c:otherwise>
		                                            		<a onclick="javascript:message('msgView.net?msg_no=${r.MSG_NO}&msg_sid=${r.MSG_SID}&msg_rid=${r.MSG_RID}&msg_content=${r.MSG_CONTENT}')">
				                                           		<c:out value="${r.MSG_CONTENT}"/>
		                                            		</a>
		                                            	</c:otherwise>
		                                            </c:choose>
                                            	</span>
                                            </td>
	                                        <td class="product-subtotal">
		                                        <c:choose>
		                                            <c:when test="${!empty user_id && empty expert_id}">
														<button class="btn-style" id="message" onclick="javascript:message('msgWrite.net?msg_rid=${r.MSG_SID}&msg_sid=${user_id}')">
															<span>상세보기</span>	
														</button>
													</c:when>
													
													<c:when test="${empty user_id && !empty expert_id }">
														<button class="btn-style" id="message" onclick="javascript:message('msgWrite.net?msg_rid=${r.MSG_SID}&msg_sid=${expert_id}')">
															<span>상세보기</span>	
														</button>
													</c:when>
												</c:choose>
											</td>
                                          </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                </table>
                            </div>
                            
                            
				 			<div class="pagination-style text-center mt-30" id="pagination">
								<ul class="paging_align">
									<c:if test="${page <= 1 }">
										<li><i class="ion-chevron-left" style="display: none;"></i></li>
									</c:if>
									<c:if test="${page > 1}">
										<li><a href="userOneday.net?page=${page-1}"><i
												class="ion-chevron-left"></i></a></li>
									</c:if>
				
									<c:forEach var="a" begin="${startpage}" end="${endpage}">
										<c:if test="${a == page }">
											<li><a class="active" href="#">${a}</a></li>
										</c:if>
										<c:if test="${a != page}">
											<li><a href="userOneday.net?page=${a}">${a}</a></li>
										</c:if>
									</c:forEach>
				
									<c:if test="${page >= maxpage}">
										<li><i class="ion-chevron-right" style="display: none;"></i></li>
									</c:if>
									<c:if test="${page < maxpage}">
										<li><a href="userOneday.net?page=${page+1}"> <i
												class="ion-chevron-right"></i>
										</a></li>
									</c:if>
								</ul>
							</div>
                            
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
														href="#">@devitems</a> <br>
													<a class="link2" href="#">https://twitter.com/devitemsllc</a>
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
		</div>







		<!-- all js here -->
		<script src="resources/js/jquery-3.5.0.js"></script>
		<script>
			function message (url) {
				var send = window.open(url, "send", "width=100, heigth=100");
				send.resizeTo(700,800);
			};
		</script>
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