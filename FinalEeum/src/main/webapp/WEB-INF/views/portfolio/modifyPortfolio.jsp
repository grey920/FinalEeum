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
<link rel="stylesheet" href="resources/css/service/portfolioForm.css">
<script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
<%@ include file="../header.jsp"%>
<style>
input[type='file']{
border : none;
background : none;
}

</style>
</head>
<body>
	<div class="wrapper">

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
					<hr>
				</div>
			</div>
		</div>

		<!-- portfolio start -->
		<form action="modifyActionPofo" enctype="multipart/form-data"
			method="POST">
		<input type="hidden" name="PF_SAVEPROFILE" value="${PFdata.PF_SAVEPROFILE}">
		<input type="hidden" name="PF_SV_OP" value="${PFdata.PF_SV_OP}">
		<input type="hidden" name="PF_SV_LI" value="${PFdata.PF_SV_LI}"> 	
			<div class="checkout-area pt-130 hm-3-padding pb-100" style="padding-top:0">
				<div class="container-fluid">
					<div class="row">

						<div class="col-lg-6 col-md-12 col-12">
							<div class="checkbox-form">
								<div class="row">

									<div class="col-md-12">
										<div class="profile_image">
											<label for="savefile_reg"><span>프로필 등록</span><span class="required">*</span></label> 
											<input type="file" id="expert_profile" name="uploadfilePRO"
													accept="image/gif, image/jpeg, image/png, image/jpg" style="visibility: hidden"><br> 
												<label for="expert_profile"> 
												<img src="resources/expert_profile${PFdata.PF_SAVEPROFILE}"
													alt="profile" id="profile"
													style="width: 170px; height: 170px; border-radius: 50%; cursor: pointer"><br>
												<span id="filevalue" style="visibility: hidden">${PFdata.PF_PROFILE}</span>
												</label>
										</div>
									</div>

									<div class="col-md-12">
										<div class="category-select">
											<label>분야 <span class="required">*</span></label> 
											<select name="PF_CATE">
												<option value="0" <c:if test="${PFdata.PF_CATE == '0'}"> selected</c:if>>청소</option>
												<option value="1" <c:if test="${PFdata.PF_CATE == '1'}"> selected</c:if>>방역</option>
												<option value="2" <c:if test="${PFdata.PF_CATE == '2'}"> selected</c:if>>수리</option>
											</select>
										</div>

										<fieldset class="location-select">
											<label>활동 지역 <span class="required">*</span></label>
											<div class="loc-align">
												<select name="sido1" id="sido1"></select> 
												<select name="gugun1" id="gugun1"></select>
											</div>
										</fieldset>

									</div>


									<div class="col-md-6">
										<label>예약 가능 시간 <span class="required">*</span></label>
										
										<label>시작 시간 </label> <select name="starthour" id="starthour"></select>
									</div>
									<div class="col-md-6">
										<label>종료 시간 </label> <select name="endhour" id="endhour"></select>
									</div>


									<div class="col-md-12">
										<div class="checkout-form-list">
											<label>경력 상세설명 <span class="required">*</span></label>
											<textarea name="PF_DESC" cols="30" rows="5">${PFdata.PF_DESC}</textarea>
										</div>
									</div>

								</div>
							</div>

						</div>

						<div class="col-lg-6 col-md-12 col-12">
							<!-- 오른쪽 내용 -->
							<div class="col-md-12">
								<div class="file_form-group">
									<label for="savefile_reg"><span>사업자등록증 등록</span></label><br> 
									<img src="resources/pf_OP_upload${PFdata.PF_SV_OP}" style="width:auto;height:200px;" id="imgOP"></label>
									<input type="file" id="upfile1"name="uploadfile1">
									<span id="filevalue1" style="visibility: hidden">${PFdata.PF_OR_OP}</span>
								</div>
							</div>

							<div class="col-md-12">
								<div class="file_form-group">
									<label for="savefile_lic"><span>자격증 등록</span></label><br>
									<label for="upfile2" style="cursor:pointer">
										<img src="resources/pf_LI_upload${PFdata.PF_SV_LI}" style="width:auto;height:200px;" id="imgLI"></label> 
										<input type="file" id="upfile2" name="uploadfile2">
										<span id="filevalue2" >${PFdata.PF_OR_LI}</span>
								</div>
							</div>

							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>전문가 소개 한마디 <span class="required">*</span></label>
									<textarea name="PF_One" cols="30" rows="2">${PFdata.PF_One}</textarea>
								</div>
							</div>
							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>전문가 소개말 <span class="required">*</span></label>
									<textarea name="PF_INTRO" cols="30" rows="5"> ${PFdata.PF_INTRO}</textarea>
								</div>
							</div>
						</div>
						<div class="row btnRow">
							<div class="col-lg-12 col-md-12 col-12">
								<div class="buttons">
									<button type="submit" class="btn-style">수정 완료</button>
									<button type="reset" class="btn-style reset">취소</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- checkout-area end -->





		<!-- footer -->
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
	<script type="text/javascript">
	//신청 가능 시간 로직 
	var Html1 = [];
	var Html2 = [];
	var value = "";
	// 시간 삽입하기
	for (var i = 0; i < 24; i++) {
		if (i > 9) {
			value = i;
		} else {
			value = "0" + i;
		}
		Html1[i] = "<option value=" + value + ">" + value + " 시</option>";
		Html2[i] = "<option value=" + value + ">" + value + " 시</option>";
		if(value == "${starthour}"){
			Html1[i] = "<option value=" + value + " selected>" + value + " 시</option>";
		}
		if(value == "${endhour}"){
			Html2[i] = "<option value=" + value + " selected>" + value + " 시</option>";
		}
	}
	$('#starthour').append(Html1.join("")); // 셀렉트 박스 안에 다 넣어버리기
	$('#endhour').append(Html2.join(""));
	
	
	
	$("select[name^=sido]").each(function() {
		var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
		  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
		   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
		   var area3 = ["대덕구","동구","서구","유성구","중구"];
		   var area4 = ["광산구","남구","동구",     "북구","서구"];
		   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
		   var area6 = ["남구","동구","북구","중구","울주군"];
		   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
		   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
		   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
		   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
		   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
		   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
		   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
		   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
		   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
		   var area16 = ["서귀포시","제주시","남제주군","북제주군"];
		  $selsido = $(this);
		  $.each(eval(area0), function() {
		   $selsido.append("<option value='"+this+" '>"+this+"</option>");
		  });
		  $(`#sido1 > option[value='${sido}']`).prop('selected',true);
		  $selsido.next().append("<option value=''>구/군 선택</option>");

	//$("select[name^=sido]").change(function() {
		  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의
																						// 구군
																						// Array
		  var $gugun = $(this).next(); // 선택영역 군구 객체
		  $("option",$gugun).remove(); // 구군 초기화

		  if(area == "area0")
		   $gugun.append("<option value=''>구/군 선택</option>");
		  else {
		   $.each(eval(area), function() {
		    $gugun.append("<option value='"+this+"'>"+this+"</option>");
		    $(`#gugun1 > option[value='${gugun}']`).prop('selected',true);
		   });
		  }
		 });
		// });

 
	
	</script>
	<!--  <script src="resources/js/sojaeji2.js"></script>  -->
	<script src="resources/js/PF_writeform2.js"></script>
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
