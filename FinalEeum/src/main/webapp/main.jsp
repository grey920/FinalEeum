<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>이음 - 메인 페이지</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.png">
		
		<!-- all css here -->
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/animate.css">
        <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="resources/css/chosen.min.css">
        <link rel="stylesheet" href="resources/css/themify-icons.css">
        <link rel="stylesheet" href="resources/css/ionicons.min.css">
        <link rel="stylesheet" href="resources/css/meanmenu.min.css">
        <link rel="stylesheet" href="resources/css/bundle.css">
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/css/responsive.css">
        <script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
        <%@ include file="WEB-INF/views/header.jsp" %>
    </head>
    <body>
        <div class="wrapper">

            <!-- main-search start -->
            <div class="slider-area">
                <div class="slider-active owl-carousel">
                
                    <div class="single-slider slider-2 bg-img" style="background-image: url(resources/img/slider/1.jpg)">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="slider-content-2 slider-animated-1 mt-150">
                                        <a class="btn-style-2 animated" href="OnedayList.one"><span>자세히 보기</span></a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="slider-single-img-2 slider-animated-1">
                                        <img class="animated" src="assets/img/slider/2.png" alt="slider images">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="single-slider slider-2 bg-img" style="background-image: url(resources/img/slider/1.jpg)">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="slider-content-2 slider-animated-2 mt-150">
                                        <a class="btn-style-2 animated" href="shop.html"><span>신청하러 가기</span></a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="slider-single-img-2 slider-animated-1">
                                        <img class="animated" src="assets/img/slider/2.png" alt="slider images">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="banner-area-2 pt-130 pb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="banner-wrapper mb-30">
                                <div class="banner-img overflow">
                                    <a href="product-details.html"><img alt="" src="resources/img/banner/3.png"></a>
                                    <div class="banner-content-6 banner-position-6">
<!--                                         <h2>Pottery <br>Mug </h2>
                                        <a href="shop.html">View Products</a> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="banner-wrapper mb-30">
                                <div class="banner-img overflow">
                                    <a href="product-details.html"><img alt="" src="resources/img/banner/4.png"></a>
                                    <div class="banner-content-6 banner-position-7">
<!--                                         <h5>NEW COLLECTION </h5>
                                        <h3>The Best <br>Pottery Products</h3> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-area pb-90 product-padding">
                <div class="container-fluid">
                    <div class="section-title-2 text-center mb-25">
                        <h2 class="m-0">Our Collection</h2>
                    </div>
                    <div class="product-tab-list text-center mb-60 nav product-menu-mrg" role="tablist">
                        <a class="active" href="#home4" data-toggle="tab">
                            <h4>Featured </h4>
                        </a>
                        <a href="#home5" data-toggle="tab">
                            <h4> Latest </h4>
                        </a>
                        <a href="#home6" data-toggle="tab">
                            <h4>Best Seller</h4>
                        </a>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane active" id="home4" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/12.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Ptttery Tea Mug</a></h4>
                                            <div class="product-price-2">
                                                <span>$30.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/13.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Showpiece</a></h4>
                                            <div class="product-price-2">
                                                <span>$40.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/14.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Water Jug</a></h4>
                                            <div class="product-price-2">
                                                <span>$50.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/15.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Flower Vase</a></h4>
                                            <div class="product-price-2">
                                                <span>$60.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/16.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Flower Vase</a></h4>
                                            <div class="product-price-2">
                                                <span>$70.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/17.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Ptttery Tea Mug</a></h4>
                                            <div class="product-price-2">
                                                <span>$80.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="home5" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/17.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Water Mug</a></h4>
                                            <div class="product-price-2">
                                                <span>$30.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/16.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Flower Vase</a></h4>
                                            <div class="product-price-2">
                                                <span>$40.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/15.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Flower Vase</a></h4>
                                            <div class="product-price-2">
                                                <span>$50.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/14.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Water Jug</a></h4>
                                            <div class="product-price-2">
                                                <span>$60.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/13.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Showpiece</a></h4>
                                            <div class="product-price-2">
                                                <span>$70.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/12.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Ptttery Tea Mug</a></h4>
                                            <div class="product-price-2">
                                                <span>$80.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="home6" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/14.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Water Jug</a></h4>
                                            <div class="product-price-2">
                                                <span>$30.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/12.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Showpiece</a></h4>
                                            <div class="product-price-2">
                                                <span>$40.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/13.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Showpiece</a></h4>
                                            <div class="product-price-2">
                                                <span>$50.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/17.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Flower Vase</a></h4>
                                            <div class="product-price-2">
                                                <span>$60.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/15.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Pottery Flower Vase</a></h4>
                                            <div class="product-price-2">
                                                <span>$70.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="resources/img/product/16.jpg" alt="">
                                            </a>
                                            <div class="product-wishlist">
                                                <a href="#"><i class="ti-heart"></i></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class="ti-plus"></i>
                                                </a>
                                                <a class="action-cart-2" title="Add To Cart" href="#">
                                                    <i class="ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                                    <i class="ti-reload"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">Ptttery Tea Mug</a></h4>
                                            <div class="product-price-2">
                                                <span>$80.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-area pb-100">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
                                    <a href="product-details.html">
                                        <img alt="image" src="resources/img/banner/9.jpg">
                                    </a>
                                </div>
                                <div class="banner-content-7">
                                    <img alt="image" src="resources/img/icon-img/2.png">
                                    <h2>Lovely Gift</h2>
                                    <a href="product-details.html" class="banner-btn-2 cr-btn"><span>Shop Now</span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
                                    <a href="product-details.html">
                                        <img alt="image" src="resources/img/banner/10.jpg">
                                    </a>
                                </div>
                                <div class="banner-content-7">
                                    <img alt="image" src="resources/img/icon-img/2.png">
                                    <h2>Winter Gift </h2>
                                    <a href="product-details.html" class="banner-btn-2 cr-btn"><span>Shop Now</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-area pb-125 product-padding">
                <div class="container-fluid">
                    <div class="section-title-2 text-center mb-55">
                        <h2 class="mb-12">New Collection</h2>
                        <p>There are many variations of passages of Lorem Ipsum. </p>
                    </div>
                    <div class="collection-product-active owl-carousel">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="product-details.html">
                                    <img src="resources/img/product/18.jpg" alt="">
                                </a>
                                <div class="product-wishlist">
                                    <a href="#"><i class="ti-heart"></i></a>
                                </div>
                                <div class="product-action-2">
                                    <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                        <i class="ti-plus"></i>
                                    </a>
                                    <a class="action-cart-2" title="Add To Cart" href="#">
                                        <i class="ti-shopping-cart"></i>
                                    </a>
                                    <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                        <i class="ti-reload"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-content text-center">
                                <h4><a href="product-details.html">Ptttery Tea Mug</a></h4>
                                <div class="product-price-2">
                                    <span>$30.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="product-details.html">
                                    <img src="resources/img/product/19.jpg" alt="">
                                </a>
                                <div class="product-wishlist">
                                    <a href="#"><i class="ti-heart"></i></a>
                                </div>
                                <div class="product-action-2">
                                    <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                        <i class="ti-plus"></i>
                                    </a>
                                    <a class="action-cart-2" title="Add To Cart" href="#">
                                        <i class="ti-shopping-cart"></i>
                                    </a>
                                    <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                        <i class="ti-reload"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-content text-center">
                                <h4><a href="product-details.html">Pottery Water Jug</a></h4>
                                <div class="product-price-2">
                                    <span>$30.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="product-details.html">
                                    <img src="resources/img/product/20.jpg" alt="">
                                </a>
                                <div class="product-wishlist">
                                    <a href="#"><i class="ti-heart"></i></a>
                                </div>
                                <div class="product-action-2">
                                    <a class="action-plus-2" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                        <i class="ti-plus"></i>
                                    </a>
                                    <a class="action-cart-2" title="Add To Cart" href="#">
                                        <i class="ti-shopping-cart"></i>
                                    </a>
                                    <a class="action-reload" title="Compare" data-toggle="modal" data-target="#exampleCompare" href="#">
                                        <i class="ti-reload"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-content text-center">
                                <h4><a href="product-details.html"> Hand made Pot</a></h4>
                                <div class="product-price-2">
                                    <span>$30.00</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="testimonials-area">
                <div class="container-fluid">
                    <div class="testimonial-active owl-carousel pt-130 pb-125 theme-bg">
                        <div class="single-testimonial text-center">
                            <img alt="" src="resources/img/team/1.png">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat</p>
                            <div class="testimonial-icon">
                                <i class="ti-direction-alt"></i>
                            </div>
                            <h4>Shakara Tasnim </h4>
                            <span>Customer</span>
                        </div>
                        <div class="single-testimonial text-center">
                            <img alt="" src="resources/img/team/1.png">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat</p>
                            <div class="testimonial-icon">
                                <i class="ti-direction-alt"></i>
                            </div>
                            <h4>Farhana Shuvo </h4>
                            <span>Customer</span>
                        </div>
                        <div class="single-testimonial text-center">
                            <img alt="" src="resources/img/team/1.png">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat</p>
                            <div class="testimonial-icon">
                                <i class="ti-direction-alt"></i>
                            </div>
                            <h4>Samia Robiul </h4>
                            <span>Customer</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="services-area services-padding pb-100">
                <div class="container-fluid">
                    <div class="services-wrapper">
                        <div class="single-services mb-30">
                            <div class="services-icon">
                                <img alt="" src="resources/img/icon-img/3.png">
                            </div>
                            <div class="services-text">
                                <h5>FREE SHIPPING</h5>
                                <p>Free shipping on all order</p>
                            </div>
                        </div>
                        <div class="single-services mb-30">
                            <div class="services-icon">
                                <img alt="" src="resources/img/icon-img/4.png">
                            </div>
                            <div class="services-text">
                                <h5>ONLINE SUPPORT</h5>
                                <p>Online support 24 hours a day</p>
                            </div>
                        </div>
                        <div class="single-services mb-30">
                            <div class="services-icon">
                                <img alt="" src="resources/img/icon-img/5.png">
                            </div>
                            <div class="services-text">
                                <h5>MONEY RETURN</h5>
                                <p>Back guarantee under 5 days</p>
                            </div>
                        </div>
                        <div class="single-services mb-30">
                            <div class="services-icon">
                                <img alt="" src="resources/img/icon-img/6.png">
                            </div>
                            <div class="services-text">
                                <h5>MEMBER DISCOUNT</h5>
                                <p>Onevery order over $150</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="theme-bg footer-padding">
                <div class="container-fluid">
                    <div class="footer-top pt-85 pb-25">
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
                                <div class="footer-widget mb-30">
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
                                <div class="footer-widget mb-30">
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
                                <div class="footer-widget mb-30">
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
                                <div class="footer-widget mb-30">
                                    <div class="footer-widget-title">
                                        <h3>twitter feed</h3>
                                    </div>
                                    <div class="twitter-info-wrapper">
                                        <div class="single-twitter">
                                            <div class="twitter-icon">
                                                <i class="ion-social-twitter-outline"></i>
                                            </div>
                                            <div class="twitter-content">
                                                <p>A modern <a href="#">#Shopify theme </a> <a class="link1" href="#">@devitems</a> <a class="link2" href="#">https://twitter.com</a></p>
                                            </div>
                                        </div>
                                        <div class="single-twitter">
                                            <div class="twitter-icon">
                                                <i class="ion-social-twitter-outline"></i>
                                            </div>
                                            <div class="twitter-content">
                                                <p>A modern <a href="#">#Shopify theme </a> <a class="link1" href="#">@devitems</a> <a class="link2" href="#">https://twitter.com</a></p>
                                            </div>
                                        </div>
                                        <div class="single-twitter">
                                            <div class="twitter-icon">
                                                <i class="ion-social-twitter-outline"></i>
                                            </div>
                                            <div class="twitter-content">
                                                <p>A modern <a href="#">#Shopify theme </a> <a class="link1" href="#">@devitems</a> <a class="link2" href="#">https://twitter.com</a></p>
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
                                        <p>Copyright ©  2018 <a href="#"> HasTech</a> All RIght Reserved.</p>
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
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="ion-android-close" aria-hidden="true"></span>
                </button>
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="qwick-view-left">
                                <div class="quick-view-learg-img">
                                    <div class="quick-view-tab-content tab-content">
                                        <div class="tab-pane active show fade" id="modal1" role="tabpanel">
                                            <img src="resources/img/quick-view/l4.jpg" alt="">
                                        </div>
                                        <div class="tab-pane fade" id="modal2" role="tabpanel">
                                            <img src="resources/img/quick-view/l5.jpg" alt="">
                                        </div>
                                        <div class="tab-pane fade" id="modal3" role="tabpanel">
                                            <img src="resources/img/quick-view/l6.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="quick-view-list nav" role="tablist">
                                    <a class="active" href="#modal1" data-toggle="tab">
                                        <img src="resources/img/quick-view/s4.jpg" alt="">
                                    </a>
                                    <a href="#modal2" data-toggle="tab">
                                        <img src="resources/img/quick-view/s5.jpg" alt="">
                                    </a>
                                    <a href="#modal3" data-toggle="tab">
                                        <img src="resources/img/quick-view/s6.jpg" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="qwick-view-right">
                                <div class="qwick-view-content">
                                    <h3>Handcrafted Supper Mug</h3>
                                    <div class="price">
                                        <span class="new">$90.00</span>
                                        <span class="old">$120.00  </span>
                                    </div>
                                    <div class="rating-number">
                                        <div class="quick-view-rating">
                                            <i class="ion-ios-star red-star"></i>
                                            <i class="ion-ios-star red-star"></i>
                                            <i class="ion-ios-star red-star"></i>
                                            <i class="ion-ios-star red-star"></i>
                                            <i class="ion-ios-star red-star"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation .</p>
                                    <div class="quick-view-select">
                                        <div class="select-option-part">
                                            <label>Size*</label>
                                            <select class="select">
                                                <option value="">- Please Select -</option>
                                                <option value="">900</option>
                                                <option value="">700</option>
                                            </select>
                                        </div>
                                        <div class="select-option-part">
                                            <label>Color*</label>
                                            <select class="select">
                                                <option value="">- Please Select -</option>
                                                <option value="">orange</option>
                                                <option value="">pink</option>
                                                <option value="">yellow</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="quickview-plus-minus">
                                        <div class="cart-plus-minus">
											<input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
										</div>
                                        <div class="quickview-btn-cart">
                                            <a class="btn-style cr-btn" href="#"><span>add to cart</span></a>
                                        </div>
                                        <div class="quickview-btn-wishlist">
                                            <a class="btn-hover cr-btn" href="#"><span><i class="ion-ios-heart-outline"></i></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- modal -->
            <div class="modal fade" id="exampleCompare" tabindex="-1" role="dialog" aria-hidden="true">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="ion-android-close" aria-hidden="true"></span>
                </button>
                <div class="modal-dialog modal-compare-width" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <form action="#">
                                <div class="table-content compare-style table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>
                                                    <a href="#">Remove <span>x</span></a>
                                                    <img src="resources/img/cart/8.jpg" alt="">
                                                    <p>Blush Sequin Top </p>
                                                    <span>$75.99</span>
                                                    <a class="compare-btn" href="cart.html">Add to cart</a>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="compare-title"><h4>Description </h4></td>
                                                <td class="compare-dec compare-common">
                                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has beenin the stand ard dummy text ever since the 1500s, when an unknown printer took a galley</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="compare-title"><h4>Sku </h4></td>
                                                <td class="product-none compare-common">
                                                    <p>-</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="compare-title"><h4>Availability  </h4></td>
                                                <td class="compare-stock compare-common">
                                                    <p>In stock</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="compare-title"><h4>Weight   </h4></td>
                                                <td class="compare-none compare-common">
                                                    <p>-</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="compare-title"><h4>Dimensions   </h4></td>
                                                <td class="compare-stock compare-common">
                                                    <p>N/A</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="compare-title"><h4>brand   </h4></td>
                                                <td class="compare-brand compare-common">
                                                    <p>HasTech</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="compare-title"><h4>color   </h4></td>
                                                <td class="compare-color compare-common">
                                                    <p>Grey, Light Yellow, Green, Blue, Purple, Black </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="compare-title"><h4>size    </h4></td>
                                                <td class="compare-size compare-common">
                                                    <p>XS, S, M, L, XL, XXL </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="compare-title"></td>
                                                <td class="compare-price compare-common">
                                                    <p>$75.99 </p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
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