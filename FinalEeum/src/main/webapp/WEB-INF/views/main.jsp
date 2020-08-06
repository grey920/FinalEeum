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
        .slider-area{margin-top:180px; padding:0 200px}
        .btn-style-2{border:3px solid #72A0E0;
        						font-size:20px;
        						color:white;
        						background-color:#72A0E0}
        	.btn-style-2:hover{background-color:white;
        									color: #72A0E0;}
		.pb-90{margin-top:150px}
        .slider-2 {padding: 200px 0 70px;}
        .pt-130{padding-top:30px}
        .pb-125{padding-bottom:30px; margin-bottom:100px; margin-top:150px}
        .pb-100 {padding:50px 200px 30px; background-color:lightsteelblue;}
        .theme-bg {background: #E4E8F0}
        .single-testimonial>h4{font-size:20px !important}
        h4{margin-top:30px}
        .product-content h4{font-size:23px}
        .product-tab-list a h4 {font-size:18px}
        .col-lg-3{margin:0 auto; text-align:center}
        .banner-img .num{color:#36518F; font-size:50pt ;margin-top:30px}
        .banner-img p{color:#303030;}
        </style>
    </head>
    <body>
        <div class="wrapper">

            <!-- main-search start -->
            <div class="slider-area">
                <div class="slider-active owl-carousel">
                
                    <div class="single-slider slider-2 bg-img" style="background-image: url(resources/img/main/main.jpg); border-radius:20px">
                        <div class="container" style="margin-left:100px; padding-left:0">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="slider-content-2 slider-animated-1 mt-150">
                                        <a class="btn-style-2 animated" href="about_us.net" style="font-size:23px"><span>이음에 대해 알아보기</span></a>
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
                        <div class="container"  style="margin-left:100px; padding-left:0">
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
                        <div class="container"  style="margin-left:100px; padding-left:0">
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
                        <div class="container"  style="margin-left:100px; padding-left:0">
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
                    <div class="section-title-2 text-center mb-25" style="margin-bottom:60px">
                        <h2 class="m-0">이음의 전문가를 소개합니다.</h2>
                    </div>
                    
                    <div class="tab-content">
                       <!-- (1) -->
                        <div class="tab-pane active" id="home4" role="tabpanel">
                            <div class="row">
                            
                                <div class="col-lg-3 col-md-6 col-12">
                                    <div class="product-wrapper mb-35" style="text-align:center; margin:0 auto; width:250px">
                                        <div class="product-img">
                                            <a href="expertDetail.service?expert=${list0.PF_EXID}">
                                                <img src="resources/expert_profile${list0.PF_SAVEPROFILE}" style="width:100%; height:auto">
                                            </a>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">
                                            	<c:choose>
                                            		<c:when test="${list0.PF_CATE == '0'}">[수리]</c:when>
                                            		<c:when test="${list0.PF_CATE == '1'}">[방역]</c:when>
                                            		<c:when test="${list0.PF_CATE == '2'}">[청소]</c:when>
                                            	</c:choose>
                                            디딤돌¹&nbsp;${list0.EXPERT_NAME}</a></h4>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-6 col-12">
                                    <div class="product-wrapper mb-35" style="text-align:center; margin:0 auto; width:250px">
                                        <div class="product-img">
                                            <a href="expertDetail.service?expert=${list1.PF_EXID}">
                                                <img src="resources/expert_profile${list1.PF_SAVEPROFILE}" style="width:100%; height:auto">
                                            </a>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">
                                            <c:choose>
                                            		<c:when test="${list1.PF_CATE == '0'}">[수리]</c:when>
                                            		<c:when test="${list1.PF_CATE == '1'}">[방역]</c:when>
                                            		<c:when test="${list1.PF_CATE == '2'}">[청소]</c:when>
                                            	</c:choose>
                                            마루²&nbsp;${list1.EXPERT_NAME}</a></h4>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-3 col-md-6 col-12">
                                    <div class="product-wrapper mb-35" style="text-align:center; margin:0 auto; width:250px">
                                        <div class="product-img">
                                            <a href="expertDetail.service?expert=${list2.PF_EXID}">
                                                <img src="resources/expert_profile${list2.PF_SAVEPROFILE}" style="width:100%; height:auto">
                                            </a>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">
                                            <c:choose>
                                            		<c:when test="${list2.PF_CATE == '0'}">[수리]</c:when>
                                            		<c:when test="${list2.PF_CATE == '1'}">[방역]</c:when>
                                            		<c:when test="${list2.PF_CATE == '2'}">[청소]</c:when>
                                            	</c:choose>
                                            우주³&nbsp;${list2.EXPERT_NAME}</a></h4>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-3 col-md-6 col-12">
                                    <div class="product-wrapper mb-35" style="text-align:center; margin:0 auto; width:250px">
                                        <div class="product-img">
                                            <a href="expertDetail.service?expert=${list3.PF_EXID}">
                                                <img src="resources/expert_profile${list3.PF_SAVEPROFILE}" style="width:100%; height:auto">
                                            </a>
                                        </div>
                                        <div class="product-content text-center">
                                            <h4><a href="product-details.html">
                                            <c:choose>
                                            		<c:when test="${list3.PF_CATE == '0'}">[수리]</c:when>
                                            		<c:when test="${list3.PF_CATE == '1'}">[방역]</c:when>
                                            		<c:when test="${list3.PF_CATE == '2'}">[청소]</c:when>
                                            	</c:choose>
                                            용마루⁴&nbsp;${list3.EXPERT_NAME}</a></h4>
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
                        <div class="col-lg-3">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
                                	<p style="font-size:23px; color:white; padding-bottom:5px">❛ 오늘의 이음 ❜</p>
                                	<p class="num">${newUsers}</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-3">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
                               		<p style="font-size:23px; color:white; padding-bottom:5px">❛ 오늘의 후기 ❜</p>
                               		<p class="num">${cPosts}</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-3">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
									<p style="font-size:23px; color:white; padding-bottom:5px">❛ 모두의 이음 ❜</p>
									<p class="num">${allUsers}</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-3">
                            <div class="banner-wrapper overflow mb-30">
                                <div class="banner-img">
                                	<p style="font-size:23px; color:white; padding-bottom:5px">❛ 모두의 후기 ❜</p>
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
                        <div class="product-wrapper" style="width:310px; height:375px">
                            <div class="product-img">
                                <a href="OnedayDetailAction.one?num=${o.ONE_INDEX}">
                                    <img src="resources/OBoardupload${o.SAVEFILE}" alt="" style="width:100%; height:auto">
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
                            <p>설계부터 구현까지 모든 부분에 제 손길이 닿았다는 것이 너무 뿌듯하고 기쁩니다.<br>
                            하지만 그만큼 욕심도 많았고, 자괴감도 많이 느껴졌습니다.<br>
                            좋은 친구들과 함께 할 수 있어서 마지막 즐겁게 학원생활 마무리 할 수 있어서 다행이고, <br>
                            앞으로도 포기하지 않으며 조금씩, 그러나 매일 성장하는 개발자가 되겠습니다 :)</p>
                            <h4>가람휘 조장 정겨운 </h4>
                        </div>
                        
                        <div class="single-testimonial text-center">
                            <p> 스프링 프레임워크를 활용해서 원하는 사이트를 구현할 수 있는 기회여서 너무 뜻 깊었습니다.<br>
                            조원들과 단합이 잘 되어서 마무리도 보람차게 할 수 있었던 것 같습니다. <br>
                            앞으로 계속 나아가는 개발자가 되고 싶습니다.</p>
                            <h4>가람휘 박우진 </h4>
                        </div>
                        
                        <div class="single-testimonial text-center">
                            <p>파이널 프로젝트라 밤 늦게 까지 오랜 시간 투자해서 코딩하느라 힘들었지만, 완성된 페이지를 보는 순간 정말 보람찼습니다.<br>
                            조원들과 함께 고생하며 만들어서 더욱 보람찼습니다.</p>
                            <h4>가람휘 안연지 </h4>
                        </div>
                    
                        <div class="single-testimonial text-center">
                            <p>
                            이번 파이널 프로젝트를 하면서 개발에 대한 재미를 느낄 수 있었던 소중한 경험이었습니다.<br>
							앞으로도 '이음' 이라는 사이트의 정체성처럼 많은 사람들에게 도움을 줄 수 있는 풀스택 개발자가 되겠습니다. <br>
							한달이 넘는 시간 동안 함께 파이널 프로젝트를 준비한 팀원들에게 너무 고맙고,<br>
							특히 6달 동안 무에서 유를 창조해주신 수연쌤께 가장 감사드립니다.
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
							<div class="col-lg-1 col-md-4">
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
							<div class="col-lg-2 col-md-3">
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
							</div>
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