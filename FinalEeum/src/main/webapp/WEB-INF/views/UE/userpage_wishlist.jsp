<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>사용자 - 찜한 전문가 리스트</title>
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
        .product-content{padding:0;margin-bottom:2em}
        .product-title-3{margin:0 auto}
        .product-title-3 > h4{font-size:20pt;margin-top:20px;}
        .breadcrumb-content ul > li{font-size:13pt}
        .pt-120{padding-top:50px !important}
		.breadcrumb-content{padding-top:0;margin-top:1em}
        .price-decrease > span {font-size : 25px;
        										padding:5px 10px;
        										border-radius:10px;}
        button.product-filter-toggle {font-size:18pt;margin:10px}
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
            <div class="header-height"></div>
            
            <!-- main-search start -->
            <div class="main-search-active">
                <div class="sidebar-search-icon">
                    <button class="search-close"><span class="ti-close"></span></button>
                </div>
                <div class="sidebar-search-input">
                    <form>
                        <div class="form-search">
                            <input id="search" class="input-text" value="" placeholder="Search Entire Store" type="search">
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
                        <h2>WISHLIST</h2>
                        <ul>
                            <li>찜한 전문가 목록</li>
                        </ul>
                    </div>
                </div>
            </div>
            
           <c:if test="${wishlistCount > 0 }">
            <div class="shop-wrapper hm-3-padding pt-120 pb-100">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="shop-topbar-wrapper">
                                <div class="shop-filter" style="margin:0 auto">
                                    <button class="product-filter-toggle" onclick="location.href='userWishlist.net';">전체</button>
                                    <button class="product-filter-toggle" onclick="location.href='userWishCheck.net?value=0';">청소</button>
                                    <button class="product-filter-toggle" onclick="location.href='userWishCheck.net?value=1';">방역</button>
                                    <button class="product-filter-toggle" onclick="location.href='userWishCheck.net?value=2';">수리</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="grid-list-product-wrapper">
                        <div class="product-grid product-view">
                            <div class="row">
                            
                              <c:forEach var="w" items="${wishlist}">
                                <div class="product-width col-md-6 col-xl-3 col-lg-4">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img" style="text-align:center;width:250px">
                                            <a href="expertDetail.service?expert=${w.EXPERT_ID}">
                                                <img src="resources/expert_profile${w.PF_SAVEPROFILE}" style="height:auto">
                                            </a>
	                                        <div class="price-decrease">
	                                         <c:choose>
	                                            <c:when test="${w.PF_CATE == '0' }">
	                                                <span>청소</span>
	                                            </c:when>
	                                            
	                                            <c:when test="${w.PF_CATE == '1' }">
	                                                <span>방역</span>
	                                            </c:when>
	                                            
	                                            <c:when test="${w.PF_CATE == '2' }">
	                                                <span>수리</span>
	                                            </c:when>
	                                         </c:choose>
	                                        </div>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-title-wishlist">
                                                <div class="product-title-3">
                                                    <h4><a href="product-details.html">
                                                    <c:choose>
	                                                    <c:when test="${w.PF_GRADE == '0'}">디딤돌</c:when>
	                                                    <c:when test="${w.PF_GRADE == '1'}">마루</c:when>
	                                                    <c:when test="${w.PF_GRADE == '2'}">우주</c:when>
	                                                    <c:when test="${w.PF_GRADE == '3'}">용마루</c:when>
                                                    </c:choose>
                                                    &nbsp;${w.EXPERT_NAME}</a></h4>
                                                </div>
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
                    </div>
                </div>
            </div>
           </c:if>
            
            <c:if test="${wishlistCount == 0 }">
            	<div class="col-lg-12 col-md-12 col-12 nodata">	
	            	<p> 아직 찜한 전문가가 없어요😥</p>
	            	<p>서비스를 받고 싶은 전문가를 찜해주세요</p>
	            	<button class="btn-style" onclick="location.href='expert.service';">전문가 보러 가기</button>
	            </div>
            </c:if>
            
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