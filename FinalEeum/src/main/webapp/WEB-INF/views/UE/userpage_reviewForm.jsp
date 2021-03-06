<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>후기 상세보기</title>
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
		<%@ include file="../header.jsp" %>
        <style>
        body{font-size:20px}
        .btn-style{margin-top:10px !important;
       					 margin-right:0 !important; 
       					 font-size:18px;
         				 border-radius:20px;
         				 background-color:white;
         				 color:#72A0E0;
         				 border:2px solid #72A0E0;
         				 }
        .btn-style:hover{background-color:#72A0E0;
         					       color:white;
         					       border:2px solid #72A0E0;
         						  }
        .nodata{padding:100px 0 100px 0;
        			  display: flex;
					  justify-content: center;
					  align-items: center;
					  flex-direction: column;}
         .pt-120{padding-top:20px !important}
         .breadcrumb-content > h2{font-size:25px}
         .breadcrumb-content{padding-top:0;margin-top:1.5em}
         .table-content table th{padding:20px; font-size:20px;border:1px solid #e8e6e6;width:25%}
         .table-content table td{padding:20px; font-size:18px;border:1px solid #e8e6e6;width:25%}
         tr td.class-state{padding-top:10px; padding-bottom:20px}
         .table-estimate table tr{border-collapse:collapse; border:1px solid #C1C8D9}
         .modal-footer a {font-size:13pt}
        </style>
    </head>
    <body>
        <div class="wrapper">
            <!-- header start -->
            <div class="header-height"></div>
            
            <div class="breadcrumb-area mt-37 hm-4-padding">
                <div class="container-fluid">
                    <div class="breadcrumb-content text-center">
                        <h2>후기 상세보기</h2>
                    </div>
                </div>
            </div>

            <div class="product-cart-area hm-3-padding pt-120 pb-130">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="table-content table-responsive table-estimate">
                                <table style="text-align:center">
                                    <tbody>
                                        <tr>
                                        	<th>전문가 이름</th>
                                        	<td>${r.EXPERT_NAME}</td>
                                        	<th>후기 작성일</th>
                                        	<td>
											<c:set var="date" value="${r.RV_DATE}"/>
                                            	<fmt:formatDate value="${date}" type="date" dateStyle="long"/>
                                        	</td>
                                        </tr>
                                        <tr>
                                        	<th>친절함</th>
                                        	<td>                                            	
                                        		<c:choose>
                                            		<c:when test="${r.RV_RATING1 == '0' }"><img src="resources/img/review/0.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 > '0' && r.RV_RATING1 < '1'}"><img src="resources/img/review/0.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 == '1' }"><img src="resources/img/review/1.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 > '1' && r.RV_RATING1 < '2'}"><img src="resources/img/review/1.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 == '2' }"><img src="resources/img/review/2.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 > '2' && r.RV_RATING1 < '3'}"><img src="resources/img/review/2.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 == '3' }"><img src="resources/img/review/3.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 > '3' && r.RV_RATING1 < '4'}"><img src="resources/img/review/3.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 == '4' }"><img src="resources/img/review/4.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 > '4' && r.RV_RATING1 < '5'}"><img src="resources/img/review/4.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING1 == '5' }"><img src="resources/img/review/5.png"></c:when>
                                                </c:choose>
                                                &nbsp;${r.RV_RATING1}점
                                            </td>
                                        	<th>명확한 설명</th>
                                        	<td>
                                        		<c:choose>
                                            		<c:when test="${r.RV_RATING2 == '0' }"><img src="resources/img/review/0.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 > '0' && r.RV_RATING2 < '1'}"><img src="resources/img/review/0.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 == '1' }"><img src="resources/img/review/1.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 > '1' && r.RV_RATING2 < '2'}"><img src="resources/img/review/1.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 == '2' }"><img src="resources/img/review/2.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 > '2' && r.RV_RATING2 < '3'}"><img src="resources/img/review/2.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 == '3' }"><img src="resources/img/review/3.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 > '3' && r.RV_RATING2 < '4'}"><img src="resources/img/review/3.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 == '4' }"><img src="resources/img/review/4.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 > '4' && r.RV_RATING2 < '5'}"><img src="resources/img/review/4.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING2 == '5' }"><img src="resources/img/review/5.png"></c:when>
                                                </c:choose>
                                                &nbsp;${r.RV_RATING2}점
                                        	</td>
                                        </tr>
                                        <tr>
                                        	<th>청결도</th>
                                        	<td>
                                        		<c:choose>
                                            		<c:when test="${r.RV_RATING3 == '0' }"><img src="resources/img/review/0.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 > '0' && r.RV_RATING3 < '1'}"><img src="resources/img/review/0.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 == '1' }"><img src="resources/img/review/1.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 > '1' && r.RV_RATING3 < '2'}"><img src="resources/img/review/1.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 == '2' }"><img src="resources/img/review/2.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 > '2' && r.RV_RATING3 < '3'}"><img src="resources/img/review/2.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 == '3' }"><img src="resources/img/review/3.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 > '3' && r.RV_RATING3 < '4'}"><img src="resources/img/review/3.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 == '4' }"><img src="resources/img/review/4.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 > '4' && r.RV_RATING3 < '5'}"><img src="resources/img/review/4.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING3 == '5' }"><img src="resources/img/review/5.png"></c:when>
                                                </c:choose>
                                        	&nbsp;${r.RV_RATING3}점
                                        	</td>
                                        	<th>전문성</th>
                                        	<td>
                                        	    <c:choose>
                                            		<c:when test="${r.RV_RATING4 == '0' }"><img src="resources/img/review/0.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 > '0' && r.RV_RATING4 < '1'}"><img src="resources/img/review/0.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 == '1' }"><img src="resources/img/review/1.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 > '1' && r.RV_RATING4 < '2'}"><img src="resources/img/review/1.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 == '2' }"><img src="resources/img/review/2.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 > '2' && r.RV_RATING4 < '3'}"><img src="resources/img/review/2.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 == '3' }"><img src="resources/img/review/3.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 > '3' && r.RV_RATING4 < '4'}"><img src="resources/img/review/3.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 == '4' }"><img src="resources/img/review/4.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 > '4' && r.RV_RATING4 < '5'}"><img src="resources/img/review/4.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING4 == '5' }"><img src="resources/img/review/5.png"></c:when>
                                                </c:choose>
                                        	&nbsp;${r.RV_RATING4}점
                                        	</td>
                                        </tr>
                                        <tr>
                                        	<th>시간준수</th>
                                        	<td>
                                        		<c:choose>
                                            		<c:when test="${r.RV_RATING5 == '0' }"><img src="resources/img/review/0.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 > '0' && r.RV_RATING5 < '1'}"><img src="resources/img/review/0.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 == '1' }"><img src="resources/img/review/1.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 > '1' && r.RV_RATING5 < '2'}"><img src="resources/img/review/1.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 == '2' }"><img src="resources/img/review/2.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 > '2' && r.RV_RATING5 < '3'}"><img src="resources/img/review/2.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 == '3' }"><img src="resources/img/review/3.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 > '3' && r.RV_RATING5 < '4'}"><img src="resources/img/review/3.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 == '4' }"><img src="resources/img/review/4.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 > '4' && r.RV_RATING5 < '5'}"><img src="resources/img/review/4.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING5 == '5' }"><img src="resources/img/review/5.png"></c:when>
                                                </c:choose>
                                        	&nbsp;${r.RV_RATING5}점
                                        	</td>
                                        	<th>가격의 합리성</th>
                                        	<td>
                                        		<c:choose>
                                            		<c:when test="${r.RV_RATING6 == '0' }"><img src="resources/img/review/0.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 > '0' && r.RV_RATING6 < '1'}"><img src="resources/img/review/0.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 == '1' }"><img src="resources/img/review/1.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 > '1' && r.RV_RATING6 < '2'}"><img src="resources/img/review/1.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 == '2' }"><img src="resources/img/review/2.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 > '2' && r.RV_RATING6 < '3'}"><img src="resources/img/review/2.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 == '3' }"><img src="resources/img/review/3.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 > '3' && r.RV_RATING6 < '4'}"><img src="resources/img/review/3.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 == '4' }"><img src="resources/img/review/4.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 > '4' && r.RV_RATING6 < '5'}"><img src="resources/img/review/4.5.png"></c:when>
                                            		<c:when test="${r.RV_RATING6 == '5' }"><img src="resources/img/review/5.png"></c:when>
                                                </c:choose>
                                        	&nbsp;${r.RV_RATING6}점
                                        	</td>
                                        </tr>
                                        <tr>
                                        	<th>후기 내용</th>
                                        	<td colspan="3" style="width:200px; text-align:left">${r.RV_CONTENT}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
							<div class="button-box" style="margin:30px auto; text-align:center">
								<button class="btn-style" onClick="history.go(-1)">
									<span>이전 페이지로 이동</span>
								</button>
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
                                                <p>2020 Willshire Glen, Out of <br>Alpharetta, GA-30009</p>
                                            </div>
                                        </div>
                                        <div class="food-address">
                                            <div class="food-info-icon">
                                                <i class="ion-ios-telephone-outline"></i>
                                            </div>
                                            <div class="food-info-content">
                                                <p>(+00) 121 025 0214 </p>
                                            </div>
                                        </div>
                                        <div class="food-address">
                                            <div class="food-info-icon">
                                                <i class="ion-ios-email-outline"></i>
                                            </div>
                                            <div class="food-info-content">
                                                <p><a href="#">info@example.com</a></p>
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
                                                <p>A modern <a href="#">#Shopify theme </a> <a class="link1" href="#">@devitems</a> <br><a class="link2" href="#">https://twitter.com/devitemsllc</a></p>
                                            </div>
                                        </div>
                                        <div class="single-twitter">
                                            <div class="twitter-icon">
                                                <i class="ion-social-twitter-outline"></i>
                                            </div>
                                            <div class="twitter-content">
                                                <p>A modern <a href="#">#Shopify theme </a> <a class="link1" href="#">@devitems</a> <br> <a class="link2" href="#">https://twitter.com/devitemsllc</a></p>
                                            </div>
                                        </div>
                                        <div class="single-twitter">
                                            <div class="twitter-icon">
                                                <i class="ion-social-twitter-outline"></i>
                                            </div>
                                            <div class="twitter-content">
                                                <p>A modern <a href="#">#Shopify theme </a> <a class="link1" href="#">@devitems</a> <br> <a class="link2" href="#">https://twitter.com/devitemsllc</a></p>
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
                                        <p>Copyright ©  2018 <a href="https://freethemescloud.com/">Free themes Cloud</a> All RIght Reserved.</p>
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
				var send = window.open(url, "send", "width=100, heigth=100, location=no");
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