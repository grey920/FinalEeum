<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>전문가 - 포트폴리오 작성폼</title>
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
<link rel="stylesheet" href="resources/css/meanmenu.min.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/ionicons.min.css">
<link rel="stylesheet" href="resources/css/bundle.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
<style>
#noPFdata{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}
.checkout-area{padding-top:30px}
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
										<option value="">BANGLA</option>
										<option value="">HINDI</option>
									</select>
								</div>
								<div class="currency">
									<select class="select-header orderby">
										<option value="">USD</option>
										<option value="">US</option>
										<option value="">EURO</option>
									</select>
								</div>
							</div>
							<div class="sticky-logo">
								<a href="index.html"><img src="resources/img/logo/2.png"
									alt="" /></a>
							</div>
							<div class="logo-small-device">
								<a href="index.html"><img alt=""
									src="resources/img/logo/logo.png"></a>
							</div>
						</div>
						<div class="col-lg-8 col-md-8 d-none d-md-block">
							<div class="logo-menu-wrapper text-center">
								<div class="logo">
									<a href="index.html"><img src="resources/img/logo/logo.png"
										alt="" /></a>
								</div>
								<div class="main-menu">
									<nav>
										<ul>
											<li><a href="index.html">home</a></li>
											<li><a href="about-us.html">about us </a></li>
											<li><a href="shop.html">shop <i
													class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="product-details.html">Product details</a></li>
												</ul></li>
											<li><a href="#">pages <i class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="about-us.html">about us</a></li>
													<li><a href="cart.html">cart page</a></li>
													<li><a href="checkout.html">checkout</a></li>
													<li><a href="wishlist.html">wishlist</a></li>
													<li><a href="login-register.html">login</a></li>
													<li><a href="contact.html">contact</a></li>
												</ul></li>
											<li><a href="blog.html">blog <i
													class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="blog-details-standerd.html">about us</a></li>
												</ul></li>
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
									<a href="login-register.html"> <span class="ti-user"></span>
									</a>
								</div>
								<div class="header-cart same-style">
									<button class="sidebar-trigger">
										<i class="ti-shopping-cart"></i> <span class="count-style">03</span>
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
											</ul></li>
										<li><a href="#">pages</a>
											<ul>
												<li><a href="about-us.html">about us</a></li>
												<li><a href="cart.html">cart page</a></li>
												<li><a href="checkout.html">checkout</a></li>
												<li><a href="wishlist.html">wishlist</a></li>
												<li><a href="login-register.html">login</a></li>
												<li><a href="contact.html">contact</a></li>
											</ul></li>
										<li><a href="#">shop</a>
											<ul>
												<li><a href="#">shop grid</a>
													<ul>
														<li><a href="shop-grid-2-col.html"> grid 2 column</a></li>
														<li><a href="shop-grid-3-col.html"> grid 3 column</a></li>
														<li><a href="shop.html"> grid 4 column</a></li>
														<li><a href="shop-grid-6-col.html"> grid 6 column</a></li>
														<li><a href="shop-grid-box.html"> grid box style</a></li>
													</ul></li>
												<li><a href="#">shop list</a>
													<ul>
														<li><a href="shop-list.html"> list 1 column</a></li>
														<li><a href="shop-list-2-col.html"> list 2 column</a></li>
														<li><a href="shop-list-3-col.html"> list 3 column</a></li>
														<li><a href="shop-list-box.html"> list box style</a></li>
													</ul></li>
												<li><a href="shop-grid-view-5-col.html">product
														details</a>
													<ul>
														<li><a href="product-details.html">tab style</a></li>
														<li><a href="product-details-sticky.html">sticky
																style</a></li>
														<li><a href="product-details-gallery.html">gallery
																style</a></li>
														<li><a href="product-details-fixed-img.html">fixed
																image style</a></li>
													</ul></li>
											</ul></li>
										<li><a href="#">BLOG</a>
											<ul>
												<li><a href="blog-masonry.html">Blog Masonry</a></li>
												<li><a href="#">Blog Standard</a>
													<ul>
														<li><a href="blog-left-sidebar.html">left sidebar</a></li>
														<li><a href="blog-right-sidebar.html">right
																sidebar</a></li>
														<li><a href="blog-no-sidebar.html">no sidebar</a></li>
													</ul></li>
												<li><a href="#">Post Types</a>
													<ul>
														<li><a href="blog-details-standerd.html">Standard
																post</a></li>
														<li><a href="blog-details-audio.html">audio post</a></li>
														<li><a href="blog-details-video.html">video post</a></li>
														<li><a href="blog-details-gallery.html">gallery
																post</a></li>
														<li><a href="blog-details-link.html">link post</a></li>
														<li><a href="blog-details-quote.html">quote post</a></li>
													</ul></li>
											</ul></li>
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
					<h2>전문가 포트폴리오</h2>
						<h3>프사 공간</h3>
						<hr>
				</div>
			</div>
		</div>

		<!-- portfolio start -->
		<div class="checkout-area pt-130 hm-3-padding pb-100">
			<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6 col-md-12 col-12">
							<form action="writeActionPofo">
								<div class="checkbox-form">
									<h3>Billing Details</h3>
									<div class="row">
										<div class="col-md-12">
											<div class="category-select">
												<label>분야 <span class="required">*</span></label> <select>
													<option value="cleaning">청소</option>
													<option value="disinfection">방역</option>
													<option value="repair">수리</option>
												</select>
											</div>
											
												<fieldset class="location-select">
												<label>주소 그룹1 <span class="required">*</span></label> 
												<select name="sido1" id="sido1"></select>
												<select name="gugun1" id="gugun1"></select>
												</fieldset>
												
												<fieldset class="location-select">
												<label>주소 그룹2 <span class="required">*</span></label> 
												<select name="sido2" id="sido2"></select>
												<select name="gugun2" id="gugun2"></select>
												</fieldset>
											
										</div>
										<div class="col-md-6">
											<div class="checkout-form-list">
												<label>First Name <span class="required">*</span></label> <input
													type="text" placeholder="" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="checkout-form-list">
												<label>Last Name <span class="required">*</span></label> <input
													type="text" placeholder="" />
											</div>
										</div>
										<div class="col-md-12">
											<div class="checkout-form-list">
												<label>Company Name</label> <input type="text"
													placeholder="" />
											</div>
										</div>
										<div class="col-md-12">
											<div class="checkout-form-list">
												<label>Address <span class="required">*</span></label> <input
													type="text" placeholder="Street address" />
											</div>
										</div>
										<div class="col-md-12">
											<div class="checkout-form-list">
												<input type="text"
													placeholder="Apartment, suite, unit etc. (optional)" />
											</div>
										</div>
										<div class="col-md-12">
											<div class="checkout-form-list">
												<label>Town / City <span class="required">*</span></label> <input
													type="text" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="checkout-form-list">
												<label>State / County <span class="required">*</span></label>
												<input type="text" placeholder="" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="checkout-form-list">
												<label>Postcode / Zip <span class="required">*</span></label>
												<input type="text" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="checkout-form-list">
												<label>Email Address <span class="required">*</span></label>
												<input type="email" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="checkout-form-list">
												<label>Phone <span class="required">*</span></label> <input
													type="text" />
											</div>
										</div>
										<div class="col-md-12">
											<div class="checkout-form-list create-acc">
												<input id="cbox" type="checkbox" /> <label>Create
													an account?</label>
											</div>
											<div id="cbox_info" class="checkout-form-list create-account">
												<p>Create an account by entering the information below.
													If you are a returning customer please login at the top of
													the page.</p>
												<label>Account password <span class="required">*</span></label>
												<input type="password" placeholder="password" />
											</div>
										</div>
									</div>
									<div class="different-address">
										<div class="ship-different-title">
											<h3>
												<label>Ship to a different address?</label> <input
													id="ship-box" type="checkbox" />
											</h3>
										</div>
										<div id="ship-box-info" class="row">
											<div class="col-md-12">
												<div class="country-select">
													<label>Country <span class="required">*</span></label> <select>
														<option value="volvo">bangladesh</option>
														<option value="saab">Algeria</option>
														<option value="mercedes">Afghanistan</option>
														<option value="audi">Ghana</option>
														<option value="audi2">Albania</option>
														<option value="audi3">Bahrain</option>
														<option value="audi4">Colombia</option>
														<option value="audi5">Dominican Republic</option>
													</select>
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<label>First Name <span class="required">*</span></label> <input
														type="text" placeholder="" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<label>Last Name <span class="required">*</span></label> <input
														type="text" placeholder="" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<label>Company Name</label> <input type="text"
														placeholder="" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<label>Address <span class="required">*</span></label> <input
														type="text" placeholder="Street address" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<input type="text"
														placeholder="Apartment, suite, unit etc. (optional)" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<label>Town / City <span class="required">*</span></label>
													<input type="text" placeholder="Town / City" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<label>State / County <span class="required">*</span></label>
													<input type="text" placeholder="" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<label>Postcode / Zip <span class="required">*</span></label>
													<input type="text" placeholder="Postcode / Zip" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<label>Email Address <span class="required">*</span></label>
													<input type="email" placeholder="" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="checkout-form-list">
													<label>Phone <span class="required">*</span></label> <input
														type="text" placeholder="Postcode / Zip" />
												</div>
											</div>
										</div>
										<div class="order-notes">
											<div class="checkout-form-list mrg-nn">
												<label>Order Notes</label>
												<textarea id="checkout-mess" cols="30" rows="10"
													placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
						<div class="col-lg-6 col-md-12 col-12">
							<div class="your-order">
								<h3>Your order</h3>
								<div class="your-order-table table-responsive">
									<table>
										<thead>
											<tr>
												<th class="product-name">Product</th>
												<th class="product-total">Total</th>
											</tr>
										</thead>
										<tbody>
											<tr class="cart_item">
												<td class="product-name">Vestibulum suscipit <strong
													class="product-quantity"> × 1</strong>
												</td>
												<td class="product-total"><span class="amount">£165.00</span>
												</td>
											</tr>
											<tr class="cart_item">
												<td class="product-name">Vestibulum dictum magna <strong
													class="product-quantity"> × 1</strong>
												</td>
												<td class="product-total"><span class="amount">£50.00</span>
												</td>
											</tr>
										</tbody>
										<tfoot>
											<tr class="cart-subtotal">
												<th>Cart Subtotal</th>
												<td><span class="amount">£215.00</span></td>
											</tr>
											<tr class="order-total">
												<th>Order Total</th>
												<td><strong><span class="amount">£215.00</span></strong>
												</td>
											</tr>
										</tfoot>
									</table>
								</div>
								<div class="payment-method mt-40">
									<div class="payment-accordion">
										<div class="panel-group" id="faq">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h5 class="panel-title">
														<a data-toggle="collapse" aria-expanded="true"
															data-parent="#faq" href="#payment-1">Direct Bank
															Transfer.</a>
													</h5>
												</div>
												<div id="payment-1" class="panel-collapse collapse show">
													<div class="panel-body">
														<p>Make your payment directly into our bank account.
															Please use your Order ID as the payment reference. Your
															order won’t be shipped until the funds have cleared in
															our account.</p>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h5 class="panel-title">
														<a class="collapsed" data-toggle="collapse"
															aria-expanded="false" data-parent="#faq"
															href="#payment-2">Cheque Payment</a>
													</h5>
												</div>
												<div id="payment-2" class="panel-collapse collapse">
													<div class="panel-body">
														<p>Make your payment directly into our bank account.
															Please use your Order ID as the payment reference. Your
															order won’t be shipped until the funds have cleared in
															our account.</p>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h5 class="panel-title">
														<a class="collapsed" data-toggle="collapse"
															aria-expanded="false" data-parent="#faq"
															href="#payment-3">PayPal</a>
													</h5>
												</div>
												<div id="payment-3" class="panel-collapse collapse">
													<div class="panel-body">
														<p>Make your payment directly into our bank account.
															Please use your Order ID as the payment reference. Your
															order won’t be shipped until the funds have cleared in
															our account.</p>
													</div>
												</div>
											</div>
										</div>
										<div class="order-button-payment">
											<input type="submit" value="Place order" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


			</div>
		</div>
		<!-- checkout-area end -->
		
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
	</div>





	<!-- all js here -->
	
	
	<script src="resources/js/jquery-3.5.0.js"></script>
	<script src="resources/js/sojaeji1.js"></script>
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