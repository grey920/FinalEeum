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
        <title>사용자 - 후기 내역</title>
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
		.mb-35 { margin-bottom: 35px }
		.border-top-2 {border-top:0}
		.product-img img{transition:none}
		.product-img{width:250px !important}
		.product-list-details {padding-right:100px}
		.product-list-details a{font-size:28px}
		.shop-list-cart > a {font-size: 18px;
										border:2px solid #72A0E0;
										border-radius:20px}
		hr{margin:15px 0;}
		.shop-topbar-wrapper {border-bottom: 1px solid #868e96; border-width:80%}
		h2{margin-top:5px}
		.product-list-details > h2 {margin-bottom: 10px;}
         .pt-120{padding-top:50px !important}
         .breadcrumb-content{padding-top:0;margin-top:1em}
         .breadcrumb-content ul > li{font-size:13pt}
         .product-rating{margin-bottom:15px}
         .shop-list-cart{margin-top:8px}
         .product-rating img {width:140px}
                 .nodata{padding:100px 0 100px 0;
        			  display: flex;
					  justify-content: center;
					  align-items: center;
					  flex-direction: column;}
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
        </style>
    </head>
    <body>
      <div class="wrapper">
            <!-- header start -->
		 	<%@ include file="../header.jsp" %>
            <div class="header-height"></div>
            
            <div class="breadcrumb-area mt-37 hm-4-padding">
                <div class="container-fluid">
                    <div class="breadcrumb-content text-center border-top-2">
                        <h2>REVIEW LIST</h2>
                        <ul>
                            <li>작성한 후기 목록</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="shop-wrapper hm-3-padding pt-120 pb-100">
                <div class="container">
                  <div class="row">
                
                  <c:if test="${reviewCount > 0 }">
                        <div class="col-md-12" style="padding:0 45px">
                            <div class="shop-topbar-wrapper">
                            </div>
                        </div>
                    
                    <div class="grid-list-product-wrapper">
                        <div class="product-list product-view">
                            
                              <c:forEach var="re" items="${relist}">
                                <div class="product-width col-md-6 col-xl-3 col-lg-4">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="expertDetail.service?expert=${re.EXPERT_ID}">
                                                <img src="resources/expert_profile${re.PF_SAVEPROFILE}" style="width:170px; float:right">
                                            </a>
                                        </div>
                                        <div class="product-list-details">
                                            <a href="expertDetail.service?expert=${re.EXPERT_ID}">
                                            [
                                            <c:choose>
                                            	<c:when test="${re.PF_CATE == '0'}">
                                            	청소
                                            	</c:when>
                                            	<c:when test="${re.PF_CATE == '1'}">
                                            	방역
                                            	</c:when>
                                            	<c:otherwise>
                                            	수리
                                            	</c:otherwise>
                                            </c:choose>
                                            ]
                                            <c:choose>
                                            	<c:when test="${re.PF_GRADE == '0'}">
                                            		디딤돌 
                                            	</c:when>
                                            	<c:when test="${re.PF_GRADE == '1'}">
                                            		마루 
                                            	</c:when>
                                            	<c:when test="${re.PF_GRADE == '2'}">
                                            		우주 
                                            	</c:when>
                                            	<c:when test="${re.PF_GRADE == '3'}">
                                            		용마루 
                                            	</c:when>
                                            </c:choose>
                                            ${re.EXPERT_NAME}
                                            </a>
                                            &nbsp;&nbsp;
                                            <c:set var="date" value="${re.RS_DATE}"/>
                                            	<fmt:formatDate value="${date}" type="date" dateStyle="long"/>
                                                 | 
                                            <c:set var="time" value="${re.RS_TIME}"/>
                                            	<fmt:formatDate value="${time}" type="time" timeStyle="short"/>
                                            <hr>

                                            <div class="product-rating">
                                            	<c:choose>
                                            		<c:when test="${re.RV_SUM == '0' }"><img src="resources/img/review/0.png"></c:when>
                                            		<c:when test="${re.RV_SUM > '0' && re.RV_SUM < '1'}"><img src="resources/img/review/0.5.png"></c:when>
                                            		<c:when test="${re.RV_SUM == '1' }"><img src="resources/img/review/1.png"></c:when>
                                            		<c:when test="${re.RV_SUM > '1' && re.RV_SUM < '2'}"><img src="resources/img/review/1.5.png"></c:when>
                                            		<c:when test="${re.RV_SUM == '2' }"><img src="resources/img/review/2.png"></c:when>
                                            		<c:when test="${re.RV_SUM > '2' && re.RV_SUM < '3'}"><img src="resources/img/review/2.5.png"></c:when>
                                            		<c:when test="${re.RV_SUM == '3' }"><img src="resources/img/review/3.png"></c:when>
                                            		<c:when test="${re.RV_SUM > '3' && re.RV_SUM < '4'}"><img src="resources/img/review/3.5.png"></c:when>
                                            		<c:when test="${re.RV_SUM == '4' }"><img src="resources/img/review/4.png"></c:when>
                                            		<c:when test="${re.RV_SUM > '4' && re.RV_SUM < '5'}"><img src="resources/img/review/4.5.png"></c:when>
                                            		<c:when test="${re.RV_SUM == '5' }"><img src="resources/img/review/5.png"></c:when>
                                                </c:choose>
                                                &nbsp;
                                                <fmt:formatNumber value="${re.RV_SUM}" pattern=".00"/>
                                            </div>
                                            
                                            <c:choose>
		                                       <c:when test="${fn:length(re.RV_CONTENT) > 110}">
		                                            <c:out value="${fn:substring(re.RV_CONTENT,0,109)}"/>...
		                                       </c:when>
		                                       <c:otherwise>
				                                    <c:out value="${re.RV_CONTENT}"/>
		                                       </c:otherwise>
		                                    </c:choose>
		                                    
                                            <div class="shop-list-cart">
                                                <a href="#"><i class="ti-shopping-cart"></i>상세 보기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             </c:forEach>
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
              		  </c:if>
              		  
              		  <c:if test="${reviewCount == 0 }">
	                  	<div class="col-lg-12 col-md-12 col-12 nodata">	
					        <p>아직 작성한 후기가 없습니다😥</p>
					        <p>받은 서비스에 대해 평가해주세요</p>
					    	<button class="btn-style" onclick="location.href='userReservation.net';">후기 작성하러 가기</button>
					    </div>
                  	</c:if>
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