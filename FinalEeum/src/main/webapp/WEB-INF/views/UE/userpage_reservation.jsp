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
        <title>사용자 - 예약내역</title>
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
        .product-subtotal{font-size:18px !important}
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
         .table-content table td {border-bottom:2px solid #e8e6e6; padding:30px 10px 30px}
         .pt-120{padding-top:50px !important}
         .breadcrumb-content{padding-top:0;margin-top:1em}
         .breadcrumb-content ul > li{font-size:13pt}
         tr td.class-state{padding-top:10px; padding-bottom:20px}
         td.product-subtotal button.btn-style {padding-left:20px;padding-right:20px}
         tr td.class-state{padding-top:10px; padding-bottom:20px}
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
                        <h2>RESERVATION LIST</h2>
                        <ul>
                            <li>예약한 서비스 목록</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="product-cart-area hm-3-padding pt-120 pb-130">
                <div class="container-fluid">
                    <div class="row">
                       
                       <c:if test="${reserveCount > 0 }">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="table-content table-responsive">
                                <table style="text-align:center">
                                    <thead>
                                        <tr>
                                            <th class="product-name">전문가 프로필</th>
                                            <th class="product-price">전문가 성함</th>
                                            <th class="product-name">예약 날짜</th>
                                            <th class="product-quantity">가격</th>
                                            <th class="product-quantity">예약 상태</th>
                                            <th class="product-quantity"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                      <c:forEach var="r" items="${rlist}">
                                        <tr>
                                            <td class="product-thumbnail">
                                                <a href="expertDetail.service?expert=${r.RS_EXID}"><img src="resources/expert_profile${r.PF_SAVEPROFILE}" style="width:130px;height:160px"></a>
                                                <input type="hidden" name="rs_exid" value="${r.RS_EXID}"/>
                                                <input type="hidden" name="rs_no" value="${r.RS_NO}"/>
                                            </td>
                                            <td class="product-price">
                                                <span>[
	                                                <c:if test="${r.PF_CATE == '0'}">
	                                                청소
	                                                </c:if>
	                                                <c:if test="${r.PF_CATE == '1'}">
	                                                방역
	                                                </c:if>
	                                                <c:if test="${r.PF_CATE == '2'}">
	                                                수리
	                                                </c:if>
                                                ]</span><br>
                                                
                                                	<c:if test="${r.PF_GRADE == '0'}">
                                                	디딤돌
                                                	</c:if>
                                                	<c:if test="${r.PF_GRADE == '1'}">
                                                	마루
                                                	</c:if>
                                                	<c:if test="${r.PF_GRADE == '2'}">
                                                	우주
                                                	</c:if>
                                                	<c:if test="${r.PF_GRADE == '3'}">
                                                	용마루
                                                	</c:if>
                                                
                                                ${r.EXPERT_NAME}</a>
                                            </td>
                                            
                                            <c:if test="${empty r.RS_DATE}">
                                            <td class="product-name"><span class="amount"> - </span></td>
                                            <td class="product-subtotal"> - </td>
                                            </c:if>
                                   
                                            <c:if test="${!empty r.RS_DATE}">
                                            <td class="product-name">
                                            <span class="amount">
	                                            ${r.RS_DATE}
	                                            <br>
	                                            <c:choose>
                                                	<c:when test="${fn:length(r.RS_TIME) > 2}">
                                                		<c:out value="${fn:substring(r.RS_TIME,0,2)}"/>시
                                                		<c:out value="${fn:substring(r.RS_TIME,2,4)}" />분
                                                	</c:when>
                                                	<c:otherwise>
                                                		${r.RS_TIME}시
                                                	</c:otherwise>
                                                </c:choose>
                                            </span>
                                            </td>
                                            <td class="product-subtotal">
												${r.RS_MONEY}원
                                            </td>
                                            </c:if>
                                            
                                            <td class="product-subtotal">
	                                            <c:if test="${r.RS_STATE == '0'}">
	                                            예약 대기
	                                            </c:if>
	                                            <c:if test="${r.RS_STATE == '1' || r.RS_STATE == '2'}">
	                                            예약 확정
	                                            </c:if>
	                                            <c:if test="${r.RS_STATE == '3' || r.RS_STATE == '5'}">
	                                            서비스 완료
	                                            </c:if>
	                                            <c:if test="${r.RS_STATE == '4'}">
	                                            예약 취소
	                                            </c:if>
                                            </td>
                                            
                                            <td class="product-subtotal class-state">
                                            	<div class="button-box" style="text-align:center;">
                                            	
                                            	  <c:if test="${r.RS_STATE == '0' || r.RS_STATE == '1' || r.RS_STATE == '2' || r.RS_STATE == '3'}">
													<button class="btn-style" onclick="location.href='estimateList.net?request_no=${r.RS_NO}';">
														<span>견적확인</span>	
													</button>
													
													<c:if test="${r.RS_STATE == '1'}">
														<button class="btn-style" onclick="window.open('Pay.net?num=${r.RS_NO}','width=500, height=700');">
															<span>결제하기</span>
														</button>
													</c:if>
													
													<c:if test="${r.RS_STATE == '0' || r.RS_STATE ==  '1' || r.RS_STATE == '2'}">
													<button class="btn-style" data-toggle="modal" data-target="#modalConfirmDelete">
														<span>예약취소</span>
													</button>
													</c:if>
													
													<!-- 예약 취소 Modal-->
													<div class="modal fade" id="modalConfirmDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
														<div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
															
															<!--Content-->
															<div class="modal-content text-center" style="width: 50%; margin: 0 auto;">
																
																<!--Header-->
																<div class="modal-header d-flex justify-content-center" style="margin-top:15px">
																	<p class="heading" style="margin-bottom:10px;color:#303030">서비스 예약을 취소하시겠습니까?</p>
																</div>
									
																<!--Body-->
																<div class="modal-body">
																	<i class="fa fa-times fa-4x animated rotateIn" style="width: auto; margin: 0 auto; color: #dc3545;"></i>
																</div>
									
																<!-- Footer -->
																<div class="modal-footer flex-center" >
												      				<a href="ureserveCancel.net?rs_no=${r.RS_NO}" class="btn  btn-outline-danger">예</a>
												        			<a type="button" class="btn  btn-danger waves-effect" data-dismiss="modal" style="color:white">아니요</a>
												      			</div>
												    		</div>
														</div>
													</div>
													<!--/.Content-->
                                            	  </c:if>
                                            	  
                                            	  <c:if test="${r.RS_STATE == '3'}">
													<button class="btn-style" onclick="location.href='expertDetail.service?expert=${r.RS_EXID}';">
														<span>후기쓰기</span>
													</button>
                                            	  </c:if>
                                            	  
                                            	  <c:if test="${r.RS_STATE == '4' || r.RS_STATE == '5'}"></c:if>
                                            	  
												</div>
                                            </td>
                                        </tr>
                                      </c:forEach>
                                      
                                    </tbody>
                                </table>
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
                       
                       <c:if test="${reserveCount == 0 }">
			               <div class="col-lg-12 col-md-12 col-12 nodata">	
				            	<p>아직 예약하신 내역이 없습니다😥</p>
				            	<p>이음을 통해 더 멋진 집으로 바꿔보세요</p>
				            	<button class="btn-style" onclick="location.href='expert.service';">서비스 예약하기</button>
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