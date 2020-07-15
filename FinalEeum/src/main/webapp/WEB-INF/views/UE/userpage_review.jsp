<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>사용자 - 별점 / 후기 내역</title>
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
		.mb-35 { margin-bottom: 35px }
		.border-top-2 {border-top:0}
		.product-img img{transition:none}
		.product-img{width:250px !important}
		.product-list-details h2{font-size:33px}
		.shop-list-cart > a {font-size: 18px;
										border:2px solid #72A0E0;
										border-radius:20px}
		hr{margin:15px 0}
		.shop-topbar-wrapper {border-bottom: 1px solid #868e96;}
		.product-list-details > p {margin: 18px 0 15px;}
		h2{margin-top:30px}
		.product-list-details > h2 {margin-bottom: 10px;}
         .pt-120{padding-top:50px !important}
         .breadcrumb-content{padding-top:0;margin-top:1em}
         .breadcrumb-content ul > li{font-size:13pt}
        </style>
    </head>
    <body>
        <div class="wrapper">
            <!-- header start -->
		 	<%@ include file="../header.jsp" %>
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
                    <div class="breadcrumb-content text-center border-top-2">
                        <h2>REVIEW LIST</h2>
                        <ul>
                            <li>작성한 서비스 후기 목록</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="shop-wrapper hm-3-padding pt-120 pb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="shop-topbar-wrapper">
                                <div class="shop-filter">
                                    <button class="product-filter-toggle">filter</button>
                                </div>
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
                                            <a href="#">New ,</a>
                                            <a href="#">brand ,</a>
                                            <a href="#">black ,</a>
                                            <a href="#">white ,</a>
                                            <a href="#">chire ,</a>
                                            <a href="#">table ,</a>
                                            <a href="#">Lorem ,</a>
                                            <a href="#">ipsum ,</a>
                                            <a href="#">dolor ,</a>
                                            <a href="#">sit ,</a>
                                            <a href="#">amet ,</a>
                                        </div>
                                    </div>
                                    <div class="product-filter col-md-3 col-sm-6 col-xs-12 mb-30">
                                        <h5>Filter by price</h5>
                                        <div id="price-range"></div>
                                        <div class="price-values">
                                            <span>Price:</span>
                                            <input type="text" class="price-amount">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="grid-list-product-wrapper">
                        <div class="product-list product-view">
                            <div class="row">
                            
                                <div class="product-width col-md-6 col-xl-3 col-lg-4">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="resources/img/profile/profile_ex1.png" style="">
                                            </a>
                                        </div>
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html">[청소] 디딤돌 최유정님</a></h2>
                                            <div class="product-price">
                                                <span>2020년 6월 20일 | 오후 4시</span>
                                            </div>
                                            <hr>
                                            <div class="product-rating">
                                                <i class="ion-ios-star"></i>
                                                <i class="ion-ios-star"></i>
                                                <i class="ion-ios-star"></i>
                                                <i class="ion-ios-star"></i>
                                                <i class="ion-ios-star"></i>
                                            </div>
                                            <p style="font-size:15pt;">정말 최고였습니다</p>
                                            <p>하루에 세 번 Um 아니 열 번쯤 (We got that We got that) 문득 니 생각이 나 멈칫 난 내게 놀라 No no no 감정의 롤러코스터 그 안에 갇혀 어지러 아찔해 (Hmm Now) 그동안 셀 수 없이 모른 척했던 서툰 니 표현이 신경 쓰여 ...</p>
                                            <div class="shop-list-cart">
                                                <a href="cart.html"><i class="ti-shopping-cart"></i>상세 보기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="product-width col-md-6 col-xl-3 col-lg-4">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="resources/img/profile/profile_ex2.png" alt="">
                                            </a>
                                        </div>
                                         <div class="product-list-details">
                                            <h2><a href="product-details.html">[수리] 용마루 김도연님</a></h2>
                                            <div class="product-price">
                                                <span>2020년 7월 1일 | 오전 11시</span>
                                            </div>
                                            <hr>
                                            <div class="product-rating">
                                                <i class="ion-ios-star"></i>
                                                <i class="ion-ios-star"></i>
                                                <i class="ion-ios-star"></i>
                                                <i class="ion-ios-star"></i>
                                                <i class="ion-ios-star"></i>
                                            </div>
                                            <div class="shop-list-cart" style="margin-top:15px"> <!-- 후기없을 때만 적용되게 해야함 -->
                                                <a href="cart.html"><i class="ti-shopping-cart"></i>상세 보기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="pagination-style text-center mt-30">
                                <ul>
                                    <li>
                                        <a class="active" href="#">1</a>
                                    </li>
                                    <li>
                                        <a href="#">2</a>
                                    </li>
                                    <li>
                                        <a href="#">3</a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="ion-chevron-right"></i>
                                        </a>
                                    </li>
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