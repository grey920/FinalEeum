<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>사용자 - 마이페이지</title>
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
        
        <style>
        .product-title-3{margin:0 auto;}
        .product-content{padding-bottom:100px}
        .text-center h2{font-weight:900}
        h3{font-weight:700;margin-top:0}
        </style>
    </head>
    <body>
        <div class="wrapper">
            <!-- header start -->
            <header>
                <div class="header-area transparent-bar">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-sm-5 col-5">
                                <div class="language-currency">
                                    <div class="language">
                                        <select class="select-header orderby">
                                            <option value="">ENGLISH</option>
                                            <option value="">BANGLA </option>
                                            <option value="">HINDI</option>
                                        </select>
                                    </div>
                                    <div class="currency">
                                        <select class="select-header orderby">
                                            <option value="">USD</option>
                                            <option value="">US </option>
                                            <option value="">EURO</option>
                                        </select>
                                    </div>
                                </div>
 							<div class="sticky-logo"> <!-- 스크롤내렸을 때,메뉴바 로고  -->
								<a href="index.html"><img src="resources/img/logo/eeum_logo_36518f.png"
									alt="" /></a>
							</div>
							<div class="logo-small-device">	<!-- 반응형 웹 작게했을 때 로고 -->
								<a href="index.html"><img alt=""
									src="resources/img/logo/eeum_logo_small4.png"></a>
							</div>
						</div>
						<div class="col-lg-8 col-md-8 d-none d-md-block">
							<div class="logo-menu-wrapper text-center">
								<div class="logo">	<!-- 반응형 웹 크게했을 때 로고 -->
									<a href="index.html"><img src="resources/img/logo/eeum_logo_small4.png"
										alt=""  /></a>
								</div>
                                    <div class="main-menu">
                                        <nav>
                                            <ul>
                                                <li><a href="index.html">home</a>
                                                </li>
                                                <li><a href="about-us.html">about us </a></li>
                                                <li><a href="shop.html">shop <i class="ion-ios-arrow-down"></i></a>
                                                    <ul>
                                                        <li><a href="product-details.html">Product details</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">pages <i class="ion-ios-arrow-down"></i></a>
                                                    <ul>
                                                        <li><a href="about-us.html">about us</a></li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="contact.html">contact</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="blog.html">blog <i class="ion-ios-arrow-down"></i></a>
                                                    <ul>
                                                        <li><a href="blog-details-standerd.html">about us</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="contact.html">contact us</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-7 col-7">
                                <div class="header-site-icon">
                                    <div class="header-search same-style">
                                        <button class="sidebar-trigger-search">
                                            <span class="ti-search"></span>
                                        </button>
                                    </div>
                                    <div class="header-login same-style">
                                        <a href="login-register.html">
                                            <span class="ti-user"></span>
                                        </a>
                                    </div>
                                    <div class="header-cart same-style">
                                        <button class="sidebar-trigger">
                                            <i class="ti-shopping-cart"></i>
                                            <span class="count-style">03</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="mobile-menu-area col-12">
                                <div class="mobile-menu">
                                    <nav id="mobile-menu-active">
                                        <ul class="menu-overflow">
                                            <li><a href="#">HOME</a>
                                                <ul>
                                                    <li><a href="index.html">home version 1</a></li>
                                                    <li><a href="index-2.html">home version 2</a></li>
                                                    <li><a href="index-3.html">home version 3</a></li>
                                                    <li><a href="index-4.html">home version 4</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">pages</a>
                                                <ul>
                                                    <li><a href="about-us.html">about us</a></li>
                                                    <li><a href="cart.html">cart page</a></li>
                                                    <li><a href="checkout.html">checkout</a></li>
                                                    <li><a href="wishlist.html">wishlist</a></li>
                                                    <li><a href="login-register.html">login</a></li>
                                                    <li><a href="contact.html">contact</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">shop</a>
                                                <ul>
                                                    <li><a href="#">shop grid</a>
                                                        <ul>
                                                            <li><a href="shop-grid-2-col.html"> grid 2 column</a></li>
                                                            <li><a href="shop-grid-3-col.html"> grid 3 column</a></li>
                                                            <li><a href="shop.html"> grid 4 column</a></li>
                                                            <li><a href="shop-grid-6-col.html"> grid 6 column</a></li>
                                                            <li><a href="shop-grid-box.html"> grid box style</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">shop list</a>
                                                        <ul>
                                                            <li><a href="shop-list.html"> list 1 column</a></li>
                                                            <li><a href="shop-list-2-col.html"> list 2 column</a></li>
                                                            <li><a href="shop-list-3-col.html"> list 3 column</a></li>
                                                            <li><a href="shop-list-box.html"> list box style</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="shop-grid-view-5-col.html">product details</a>
                                                        <ul>
                                                            <li><a href="product-details.html">tab style</a></li>
                                                            <li><a href="product-details-sticky.html">sticky style</a></li>
                                                            <li><a href="product-details-gallery.html">gallery style</a></li>
                                                            <li><a href="product-details-fixed-img.html">fixed image style</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="#">BLOG</a>
                                                <ul>
                                                    <li><a href="blog-masonry.html">Blog Masonry</a></li>
                                                    <li><a href="#">Blog Standard</a>
                                                        <ul>
                                                            <li><a href="blog-left-sidebar.html">left sidebar</a></li>
                                                            <li><a href="blog-right-sidebar.html">right sidebar</a></li>
                                                            <li><a href="blog-no-sidebar.html">no sidebar</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Post Types</a>
                                                        <ul>
                                                            <li><a href="blog-details-standerd.html">Standard post</a></li>
                                                            <li><a href="blog-details-audio.html">audio post</a></li>
                                                            <li><a href="blog-details-video.html">video post</a></li>
                                                            <li><a href="blog-details-gallery.html">gallery post</a></li>
                                                            <li><a href="blog-details-link.html">link post</a></li>
                                                            <li><a href="blog-details-quote.html">quote post</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html"> Contact us</a></li>
                                        </ul>
                                    </nav>                          
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
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
                        <h2>MY PAGE</h2>
                    </div>
                </div>
            </div>

            <div class="shop-wrapper hm-3-padding pt-120 pb-100" style="padding-top:0">
                <div class="container-fluid">
                    <div class="grid-list-product-wrapper">
                        <div class="product-grid product-view">
                            <div class="row">
                                <div class="product-width col-md-6 col-lg-4">
                                    <div class="product-wrapper mb-35" style="width:200px">
                                        <div class="product-img">
                                            <a href="userUpdate.net">
                                                <img src="resources/img/mypage/write.png" alt="">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-title-wishlist">
                                                <div class="product-title-3">
                                                    <h3><a href="userUpdate.net">사용자 정보 수정</a></h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="product-width col-md-6 col-lg-4">
                                    <div class="product-wrapper mb-35" style="width:200px">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="resources/img/mypage/reserve.png" alt="">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-title-wishlist">
                                                <div class="product-title-3">
                                                    <h3><a href="product-details.html">예약 내역</a></h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="product-width col-md-6 col-lg-4">
                                    <div class="product-wrapper mb-35" style="width:200px">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="resources/img/mypage/review.png" alt="">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-title-wishlist">
                                                <div class="product-title-3">
                                                    <h3><a href="product-details.html">후기 내역</a></h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="product-width col-md-6 col-lg-4">
                                    <div class="product-wrapper mb-35" style="width:200px">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="resources/img/mypage/conversation.png" alt="">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-title-wishlist">
                                                <div class="product-title-3">
                                                    <h3><a href="product-details.html">상담 내역</a></h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="product-width col-md-6 col-lg-4">
                                    <div class="product-wrapper mb-35" style="width:200px">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="resources/img/mypage/class4.png" alt="">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-title-wishlist">
                                                <div class="product-title-3">
                                                    <h3><a href="product-details.html">&nbsp;&nbsp;&nbsp;&nbsp;원데이 클래스 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;신청 목록</a></h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="product-width col-md-6 col-lg-4">
                                    <div class="product-wrapper mb-35" style="width:200px">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="resources/img/mypage/wishlist.png" alt="">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-title-wishlist">
                                                <div class="product-title-3">
                                                    <h3><a href="product-details.html">찜한 전문가 목록</a></h3>
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


<!-- 푸터 -->
            <footer class="hm-4-padding">
                <div class="container-fluid">
                    <div class="footer-top pt-125 pb-25">
                        <div class="row">
                            <div class="col-lg-3 col-md-5">
                                <div class="footer-widget mb-30">
                                    <div class="footer-widget-title">
                                        <h4>Get in Touch</h4>
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
                                        <h4>Information</h4>
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
                                        <h4>accounts</h4>
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
                                        <h4>support</h4>
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
                                        <h4>twitter feed</h4>
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

