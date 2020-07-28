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
        <%@ include file="header.jsp" %>
        <style>
        .slider-area{margin-top:150px; padding:0 200px}
        .btn-style-2{border:3px solid #72A0E0;
        					font-size:20px}
		.pb-90{margin-top:150px}
        .slider-2 {padding: 200px 0 70px;}
        .pt-130{padding-top:30px}
        .pb-125{padding-bottom:30px; margin-bottom:100px}
        .theme-bg {background: #E4E8F0}
        .single-testimonial>h4{font-size:20px !important}
        h4{margin-top:30px}
        .product-content h4{font-size:23px}
        .product-tab-list a h4 {font-size:18px}
        .col-lg-3{margin:0 auto; text-align:center}
        .banner-img .num{color:#36518F; font-size:50pt ;margin-top:30px}
        .banner-img p{color:#303030;}
        .footer-top{padding:125px 110px 25px 110px;}
        </style>
    </head>
    <body>
        <div class="wrapper">

            <!-- main-search start -->
            <div class="slider-area">
                <div class="slider-active owl-carousel">
                
                    <div class="single-slider slider-2 bg-img" style="background-image: url(resources/img/main/main4.jpeg); border-radius:20px">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="slider-content-2 slider-animated-1 mt-150">
                                        <a class="btn-style-2 animated" href="about_us.net"><span>이음에 대해 알아보기</span></a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="slider-single-img-2 slider-animated-1">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="single-slider slider-2 bg-img" style="background-image: url(resources/img/main/main1.jpeg); border-radius:20px">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="slider-content-2 slider-animated-1 mt-150">
                                        <a class="btn-style-2 animated" href="expert_repair.service"><span>수리 전문가 만나러 가기</span></a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="slider-single-img-2 slider-animated-1">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="single-slider slider-2 bg-img" style="background-image: url(resources/img/main/main2.jpeg); border-radius:20px">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="slider-content-2 slider-animated-1 mt-150">
                                        <a class="btn-style-2 animated" href="expert_cleaning.service"><span>청소 전문가 만나러 가기</span></a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="slider-single-img-2 slider-animated-1">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="single-slider slider-2 bg-img" style="background-image: url(resources/img/main/main3.jpeg); border-radius:20px">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="slider-content-2 slider-animated-1 mt-150">
                                        <a class="btn-style-2 animated" href="expert_insect.service"><span>방역 전문가 만나러 가기</span></a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="slider-single-img-2 slider-animated-1">
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
                        <h2 class="m-0">E:EUM EXPERT</h2>
                    </div>
                    <div class="product-tab-list text-center mb-60 nav product-menu-mrg" role="tablist">
                        <a class="active" href="#home4" data-toggle="tab">
                            <h4>디딤돌¹</h4>
                        </a>
                        <a href="#home5" data-toggle="tab">
                            <h4>마루²</h4>
                        </a>
                        <a href="#home6" data-toggle="tab">
                            <h4>우주³</h4>
                        </a>
                        <a href="#home7" data-toggle="tab">
                            <h4>용마루⁴</h4>
                        </a>
                    </div>
                    
                    <div class="tab-content">
                       <!-- (1) -->
                        <div class="tab-pane active" id="home4" role="tabpanel">
                            <div class="row">
                            
                              <c:forEach var="o" items="${list0}">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35" style="text-align:center; margin:0 auto; width:250px">
                                        <div class="product-img">
                                            <a href="expertDetail.service?expert=${o.PF_EXID}">
                                                <img src="resources/expert_profile${o.PF_SAVEPROFILE}" style="width:100%; height:auto">
                                            </a>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">${o.EXPERT_NAME}</a></h4>
                                        </div>
                                    </div>
                                </div>
                               </c:forEach>
                                
                               </div>
                             </div>
                                
                        <!-- (2) -->
                        <div class="tab-pane" id="home5" role="tabpanel">
                            <div class="row">
                            
<%--                               <c:forEach var="l" items="${list1}">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35" style="text-align:center; margin:0 auto; width:250px">
                                        <div class="product-img">
                                            <a href="expertDetail.service?expert=${o.PF_EXID}">
                                                <img src="resources/expert_profile${o.PF_SAVEPROFILE}" style="width:100%; height:auto">
                                            </a>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">${o.EXPERT_NAME}</a></h4>
                                        </div>
                                    </div>
                                </div>
                              </c:forEach> --%>
                              
                            </div>
                        </div>
                        
                        <!-- (3) -->
                        <div class="tab-pane" id="home6" role="tabpanel">
                            <div class="row">
                            
<%--                              <c:forEach var="r" items="${list2}">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35" style="text-align:center; margin:0 auto; width:250px">
                                        <div class="product-img">
                                            <a href="expertDetail.service?expert=${r.PF_EXID}">
                                                <img src="resources/expert_profile${r.PF_SAVEPROFILE}" style="width:100%; height:auto">
                                            </a>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">${r.EXPERT_NAME}</a></h4>
                                        </div>
                                    </div>
                                </div>
                              </c:forEach> --%>
                                
                            </div>
                        </div>
                        
                        <!-- (4) -->
                        <div class="tab-pane" id="home7" role="tabpanel">
                            <div class="row">
                            
<%--                              <c:forEach var="e" items="${list3}">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="product-wrapper mb-35" style="text-align:center; margin:0 auto; width:250px">
                                        <div class="product-img">
                                            <a href="expertDetail.service?expert=${e.PF_EXID}">
                                                <img src="resources/expert_profile${e.PF_SAVEPROFILE}" style="width:100%; height:auto">
                                            </a>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">${e.EXPERT_NAME}</a></h4>
                                        </div>
                                    </div>
                                </div>
                              </c:forEach> --%>
                                
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            
            
            <div class="banner-area pb-100">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
                                	<p>❛ 오늘의 이음 ❜</p>
                                	<p class="num">${newUsers}</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-3">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
                               		<p>❛ 오늘의 후기 ❜</p>
                               		<p class="num">${cPosts}</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-3">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
									<p>❛ 모두의 이음 ❜</p>
									<p class="num">${allUsers}</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-3">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
                                	<p>❛ 모두의 후기 ❜</p>
                                	<p class="num">${allReviews}</p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            
            <div class="product-area pb-125 product-padding">
                <div class="container-fluid">
                    <div class="section-title-2 text-center mb-55">
                        <h2 class="mb-12">NEW ONEDAY CLASS</h2>
                    </div>
                    
                    <div class="collection-product-active owl-carousel">
                    
                      <c:forEach var="o" items="${onelist}">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="OnedayDetailAction.one?num=${o.ONE_INDEX}">
                                    <img src="resources/OBoardupload${o.SAVEFILE}" alt="">
                                </a>
                            </div>
                            
                            <div class="product-content text-center">
                                <h4><a href="OnedayDetailAction.one?num=${o.ONE_INDEX}">${o.ONE_TITLE}</a></h4>
                            </div>
                        </div>
                       </c:forEach>
                       
                    </div>
                </div>
            </div>
            
            <div class="testimonials-area">
                <div class="container-fluid">
                    <div class="testimonial-active owl-carousel pt-130 pb-125 theme-bg" >
                    
                        <div class="single-testimonial text-center">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat</p>
                            <h4>가람휘 조장 정겨운 </h4>
                        </div>
                        
                        <div class="single-testimonial text-center">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat</p>
                            <h4>가람휘 박우진 </h4>
                        </div>
                        
                        <div class="single-testimonial text-center">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat</p>
                            <h4>가람휘 안연지 </h4>
                        </div>
                        
                        <div class="single-testimonial text-center">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat</p>
                            <h4>가람휘 안현빈 </h4>
                        </div>
                    
                        <div class="single-testimonial text-center">
                            <p>
                            이음이라는 말 그대로, 많은 사람들을 연결해주는 끈끈한 사이트가 될 수 있도록 노력했습니다.<br>
                            아직까지 부족한 점이 많더라도 넓은 아량으로 이해해주세요
                            </p>
                            <h4>가람휘 장한솔 </h4>
                        </div>
                        
                    </div>
                </div>
            </div>
            
            <!--  여기부터 푸터 -->
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
													서울특별시 중구 남대문로 120 <br> 대일빌딩 3층 D강의실 
												</p>
											</div>
										</div>
										<div class="food-address">
											<div class="food-info-icon">
												<i class="ion-ios-telephone-outline"></i>
											</div>
											<div class="food-info-content">
												<p>(02) 1544 9970</p>
											</div>
										</div>
										<div class="food-address">
											<div class="food-info-icon">
												<i class="ion-ios-email-outline"></i>
											</div>
											<div class="food-info-content">
												<p>
													<a href="http://www.khacademy.or.kr">www.khacademy.or.kr</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-4">
								<div class="footer-widget mb-30 pl-10">
									<div class="footer-widget-title">
										<h3>Information</h3>
									</div>
									<div class="food-widget-content">
										<ul class="quick-link">
											<li><a href="about_us.net">이음소개</a></li>
											<li><a href="expert.service">서비스</a></li>
											<li><a href="OnedayList.one">원데이 클래스</a></li>
											<li><a href="FAQ.net">FAQ</a></li>
											<li><a href="Report.net">문의</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- <div class="col-lg-2 col-md-3">
								<div class="footer-widget mb-30 pl-100">
									<div class="footer-widget-title">
										<h3>accounts</h3>
									</div>
									<div class="food-widget-content">
										<ul class="quick-link">
											<li><a href="about_us.net">회사소개</a></li>
											<li><a href="#">개인정보보호정책</a></li>
											<li><a href="#">이용약관</a></li>
											<li><a href="#">개인정보 처리방침</a></li>
										</ul>
									</div>
								</div>
							</div> -->
							<div class="col-lg-3 col-md-6">
								<div class="footer-widget mb-30 pl-125">
									<div class="footer-widget-title">
										<h3>DEV INFO</h3>
									</div>
									<div class="food-widget-content">
										<div class="single-twitter">
											<div class="twitter-icon">
												<span class="iconify" data-icon="ion:desktop-outline" data-inline="false"></span>
											</div>
											<div class="twitter-content">
												<p>
													정겨운 #워너비#유노윤호 
													<br>github <a class="link2" href="https://github.com/grey920">@grey920</a> 
												</p>
											</div>
										</div>
										<div class="single-twitter">
											<div class="twitter-icon">
												<span class="iconify" data-icon="ion:desktop-outline" data-inline="false"></span>
											</div>
											<div class="twitter-content">
												<p>
													장한솔 #워너비 #풀스텍 
													<br>github <a class="link2" href="https://github.com/only-pine">@only-pine</a> 
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="footer-widget mb-30 f-right">
									<div class="footer-widget-title">
										<h3>DEV INFO</h3>
									</div>
									<div class="twitter-info-wrapper">
										
										<div class="single-twitter">
											<div class="twitter-icon">
												<span class="iconify" data-icon="ion:desktop-outline" data-inline="false"></span>
											</div>
											<div class="twitter-content">
												<p>
													안연지 #워너비 #부자 
													<br>github <a class="link2" href="https://github.com/tlspak8899">@tlspak8899</a>
												</p>
											</div>
										</div>
										<div class="single-twitter">
											<div class="twitter-icon">
												<span class="iconify" data-icon="ion:desktop-outline" data-inline="false"></span>
											</div>
											<div class="twitter-content">
												<p>
													박우진 #워너비 #풀스텍 
													<br>github <a class="link2" href="https://github.com/only-pine">@only-pine</a> 
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
        
        
        
		
		
		
		
		
		
		
		
	<!-- 	<!— all js here —> -->
		<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
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