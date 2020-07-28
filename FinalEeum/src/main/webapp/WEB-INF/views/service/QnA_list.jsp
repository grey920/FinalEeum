<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
</head>
<style type="text/css">
form{width:100%;}
.modal-body{margin:0}
.modal-title{margin-top:0}
.modal-header{display:flex;justify-content:center;}
.form-check{width:50%;display:inline-block;}
.form-check-input{height:20px;}
table{width:100%; text-align:center;}
.checkout-area{padding-top:0}
.pagination{display:flex; justify-content:center;}
.center-block{margin-top:15px}
.hide {display:none;}  
.item .title {cursor:pointer;}
 .qboard .show  { 
 display:table-row !important;
     }
.qboard a:hover {text-decoration: none; cursor:pointer; }
.qna_reply{float:right;}
.title{float:left}
.checkPass{width:10%}
</style>
<body>
	<div class="wrapper">
		<div class="breadcrumb-area mt-37 hm-4-padding">
			<div class="container-fluid">
				<div class="breadcrumb-content text-center">
					<h3>Q&A</h3>
				</div>
			</div>
		</div>


		<div class="checkout-area pt-130 hm-3-padding">
			<div class="container-fluid dd">
				<%-- 게시글이 있는 경우 --%>
				<c:if test="${listcount > 0}">
					<div class="row">
						<div class="col-md-12">
							<div class="coupon-accordion">
								<table cellspacing="0" border="1" class="table qboard">
									<thead>
										<tr>
											<th colspan="5">서비스 문의 게시판</th>
										</tr>
										<tr class="">
											<th scope="col" col width="5%"><div>번호</div></th>
											<th scope="col" col width="60%"><div>제목</div></th>
											<th scope="col"><div>작성자</div></th>
											<th scope="col"><div>작성일</div></th>
										</tr>
									</thead>
									<tbody>
										<c:set var="num" value="${listcount- (page-1)*limit}" />
										<c:forEach var="q" items="${qnalist}">
											<tr class="item">
												<td><c:out value="${num}" /> 
													 <c:set var="num" value="${num-1}" /> 
												</td>
												<td>
													<div class="title">
														<c:if test="${q.QNA_RE_LEV != 0}">
															<!-- 답글인 경우 -->
															<c:forEach var="a" begin="0" end="${q.QNA_RE_LEV*2}" step="1">
														&nbsp; 
														</c:forEach>
															<img src='resources/img/answerLine.gif'style='width:15px'>
														</c:if>

														<c:if test="${q.QNA_RE_LEV == 0}">
														&nbsp;
														</c:if>	
															🔒 ${q.QNA_TITLE} 
													</div>
												</td>
												<td>
												<div>${q.QNA_ID}</div>
												</td>
												<td><div>${q.QNA_DATE}</div></td>
											</tr>
											<tr class="hide">
												<td colspan="4">
												<c:if test="${user_id == q.QNA_ID || expert_id == q.QNA_EXID||expert_id == q.QNA_ID||user_id==q.QNA_EXID}">
													<div><p >${q.QNA_CONTENT} </p>
													<button class="btn btn-info qna_reply" data-toggle="modal" data-target="#qnaReplyModal" onClick="putTempNum(${q.QNA_NUM}, '${q.QNA_ID}', ${ q.QNA_RE_REF},${ q.QNA_RE_LEV},${ q.QNA_RE_SEQ})"> 답변</button>
													</div>
												</c:if>	
												<c:if test="${user_id != q.QNA_ID || expert_id != q.QNA_ID} ">
												<div> 비밀번호 
													<input type="password" class="checkPass">
												</div>
												</c:if>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="center-block">
								<div class="row">
									<div class="col">
										<ul class="pagination">
											<c:if test="${page <= 1 }">
												<li class="page-item"><a class="page-link gray">이전&nbsp;</a>
												</li>
											</c:if>
											<c:if test="${page > 1}">
												<li class="page-item"><a
													href="javascript:go(${page-1})" class="page-link">이전&nbsp;</a>
												</li>
											</c:if>

											<c:forEach var="a" begin="${startpage}" end="${endpage}">
												<c:if test="${a == page }">
													<li class="page-item"><a class="page-link gray">${a}</a>
													</li>
												</c:if>
												<c:if test="${a != page}">
													<li class="page-item"><a
														href="javascript:go(${a})" class="page-link">${a}</a>
													</li>
												</c:if>
											</c:forEach>

											<c:if test="${page >= maxpage}">
												<li class="page-item"><a class="page-link gray">&nbsp;다음</a>
												</li>
											</c:if>
											<c:if test="${page < maxpage}">
												<li class="page-item"><a
													href="javascript:go(${page+1})" class="page-link">&nbsp;다음</a>
												</li>
											</c:if>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${listcount == 0}">
					<font size=5>등록된 문의글이 없습니다.</font>
				</c:if>
				<button type="button" class="btn btn-info float-right" style="margin-bottom:100px;"
					data-toggle="modal" data-target="#qnaModal">글 쓰 기</button>

				<!-- Modal -->
				<div class="modal fade" id="qnaModal" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered custom-class"
						role="document">
						<div class="modal-content" style="width: 70%; margin: 0 auto;">
							<div class="modal-header">
								<h4 class="modal-title" id="exampleModalLongTitle"> 서비스 문의</h4>
							</div>
							<div class="modal-body modal-apply">
								<form class="form_or">
								 	
								<input type="hidden" id="qnaid" name="QNA_ID" value="${user_id}">
								<input type="hidden" id="qnaexid"class="qnaexid" name="QNA_EXID" value="">
									<div class="form-group">
										<label for="title">제목</label> 
										<input type="text" class="form-control" id="qnaTitle" name="QNA_TITLE" value="문의합니다:)" readOnly>
									</div>
									<div class="form-group">
										<label for="pass">비밀번호</label> 
										<input type="password" class="form-control" id="qnaPass" placeholder="Password" name="QNA_PASS">
									</div>
									<div class="form-group">
									    <label for="content">내용</label>
									    <textarea class="form-control" id="qnaContent" name="QNA_CONTENT" rows="5" placeholder="견적에 대한 내용은 전문가 프로필 옆 '견적 문의' 버튼을 이용해 주세요:)"></textarea>
									  </div>
									  <div class="form-group">
										<div class="form-check">
											 <input class="form-check-input" type="radio" name="QNA_SEQURE" id="qna_close" value="close" checked>
											  <label class="form-check-label" for="exampleRadios1">
											    비공개
											  </label>
										</div>
										<div class="form-check" style="float:right">
											  <input class="form-check-input" type="radio" name="QNA_SEQURE" id="qna_open" value="opne">
											  <label class="form-check-label" for="exampleRadios2">
											    공개
											  </label>
											</div>
									</div>
									<button type="button" class="btn btn-primary btn-qna" data-dismiss="modal">등록</button>
								</form>
									<%-- <a href="./OnedayApply.one?num=${onedaydata.ONE_INDEX}">
									<button type="button" class="btn btn-apply"
										style="background-color: #f3a395; color: #fff">신청</button>
								</a> --%>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 답글 Modal -->
				 <div class="modal fade" id="qnaReplyModal" tabindex="-1" role="dialog" aria-labelledby="examleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">문의글 답변</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					       <form class="form_re">
					       		<input type="hidden" id="qnaNum_re" name="QNA_NUM" > <!-- 원글번호 -->
								<input type="hidden" id="qnaid_re" name="QNA_EXID" >  <!-- 원글작성자:고객 -->
								<input type="hidden" id="qnaexid_re" class="qnaexid" name="QNA_ID" value="">  <!-- 답변작성자:전문가 -->
								 <input type="hidden" id="qnaRef_re" name="QNA_RE_REF" value="">
								  <input type="hidden" id="qnaLev_re" name="QNA_RE_LEV" value="">
								  <input type="hidden" id="qnaSeq_re" name="QNA_RE_SEQ" value="">		
									
									<div class="form-group">
										<label for="title">제목</label> 
										<input type="text" class="form-control" id="qnaTitle_re" name="QNA_TITLE" value=" RE: 문의합니다:)" readOnly>
									</div>
									<div class="form-group">
										<label for="pass">비밀번호</label> 
										<input type="password" class="form-control" id="qnaPass_re" placeholder="Password" name="QNA_PASS">
									</div>
									<div class="form-group">
									    <label for="content">내용</label>
									    <textarea class="form-control" id="qnaContent_re" name="QNA_CONTENT" rows="5" placeholder="${q.QNA_CONTENT}"></textarea>
									  </div>
									  <div class="form-group">
										<div class="form-check">
											 <input class="form-check-input" type="radio" name="QNA_SEQURE" id="qna_close_re" value="close" checked>
											  <label class="form-check-label" for="exampleRadios1">
											    비공개
											  </label>
										</div>
										<div class="form-check" style="float:right">
											  <input class="form-check-input" type="radio" name="QNA_SEQURE" id="qna_open_re" value="open">
											  <label class="form-check-label" for="exampleRadios2">
											    공개
											  </label>
											</div>
									</div>
									<button type="button" class="btn btn-primary btn-qna-re" data-dismiss="modal">등록</button>
								</form>
					      </div>
					    </div>
					  </div>
				</div> 
			</div>
		</div>
			<script src="resources/js/vendor/jquery-1.12.0.min.js"></script>
		<script>
		$(function(){
			var boardT = (".qboard .show");
			$(".qboard .item .title").click(function(){
				var boardC = $(this).parents().next("tr")
				if($(boardC).hasClass('hide')){
					$(boardT).removeClass('show').addClass('hide');
					$(boardC).removeClass('hide').addClass('show');
				}else{
					$(boardC).addClass('hide').removeClass('show');
				}
			}) // toggle
			
		})//	$(function() end
				
		function putTempNum(inputNum, inputId, inputRef, inputLev, inputSeq){
			$('#qnaNum_re').val(inputNum);
			var inputIdString =inputId;
			$('#qnaid_re').val(inputIdString);
			$('#qnaRef_re').val(inputRef);
			$('#qnaLev_re').val(inputLev);
			$('#qnaSeq_re').val(inputSeq);
		}		
		
	 		
		/* function qnaReply(num){
			console.log("num:"+num)
			$.ajax({
			type : "POST",
			data : num,
			url : "qnaReplyView.Ajax",
			cache : false,
			success : function(data){
				console.log("qnaReply()")
				
				}
			})
			}  */
			
		</script>
	
		<script src="resources/js/service/QnA_list.js"></script>
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