<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
#request_file { display: none;}
.my_button {
            display: inline-block;
            width: 200px;
            text-align: center;
            padding: 10px;
            background-color: #006BCC;
            color: #fff !important;
            text-decoration: none;
            border-radius: 5px;
        }
        

.my_button:hover{color: #fff;}
.imgs_wrap {
       border: none;
       margin-top: 30px;
       margin-bottom: 30px;
       padding-top: 10px;
       padding-bottom: 10px;

   }
  .imgs_wrap img {
      max-width: auto;
      margin-left: 10px;
      margin-right: 10px;    
      max-height: 120px;
    padding: 5px;  
  }

.col-xs-5ths,
.col-sm-5ths,
.col-md-5ths,
.col-lg-5ths {
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}

.col-xs-5ths {
    width: 20%;
    float: left;
}

@media (min-width: 768px) {
    .col-sm-5ths {
        width: 20%;
        float: left;
    }
}

@media (min-width: 992px) {
    .col-md-5ths {
        width: 20%;
        float: left;
    }
}

@media (min-width: 1200px) {
    .col-lg-5ths {
        width: 20%;
        float: left;
    }
}
    </style> 
    
	<div id="myModal1" class="modal modal-child" data-backdrop-limit="1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
			aria-hidden="true" data-modal-parent="#myModal">
			<div class="modal-dialog modal-lg">
				<div class="modal-content" style="height: 800px;">
					<!-- body -->
					<div class="modal-body" style="padding: 50px; padding-top: 40px; width: 440px; height: 400px;">

						<!-- 부모 모달 -->
						<button type="button" class="close" data-dismiss="modal"
							id="close1" aria-label="Close"
							style="position: relative; bottom: 320px; left: 770px;">
							<span class="ion-android-close" aria-hidden="true" style="color: #000; cursor: pointer;"></span>
						</button>
						<div class="row justify-content-center mt-0">
							<div
								class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2"
								style="width: 500px; padding-left: 10px;">
								<div class="card px-0 pt-4 pb-0 mt-3 mb-3" style="width: 700px; position: relative; right: 140px; border: none;">
									<h3 id="top"></h3>
									<div class="row" style="height: 500px">
										<div class="col-md-12 mx-0">
										
											<form id="msform"  method="post" enctype="multipart/form-data">
												
												<!-- progressbar -->
												<ul id="progressbar">
													<li class="active" id="account"><strong>건물 유형</strong></li>
													<li id="personal"><strong>수리 유형</strong></li>
													<li id="payment"><strong>첨부 사진</strong></li>
													<li id="confirm"><strong>간단 요청</strong></li>
												</ul>
												
												<!-- fieldsets -->
												<fieldset>
													<div class="form-card " style="height: 450px;">
														<!-- 여기 라디오 버튼 : form -->
														<b>* 선택해주세요.</b><br> <br> 
														
														<div class="row">
															<div class="col-8 col-sm-8">
																<input type="radio" name="building_type" value="아파트" id="structure1" checked="checked">
																<span>아파트</span>
															</div>
															
															<div class="col-4 col-sm-4">
																<input type="radio" name="building_type"  value="단독주택"  id="structure1"> 
																<span>단독주택</span>
															</div>
															
															<div class="col-8 col-sm-8">
																<input type="radio" name="building_type"   value="빌라/연립주택" id="structure1">
																<span>빌라/연립주택</span> 																
															</div>
															
															<div class="col-4 col-sm-4">
																<input type="radio" name="building_type"   value="빌딩/상가" id="structure1">
																<span>빌딩/상가</span> 																
															</div>
															
															<div class="col-8 col-sm-8">
																<input type="radio" name="building_type"   value="기타" id="structure1" class="etc1">
																<span>기타</span> 																
															</div>													
															
														</div>
													
														<div class="row">
															<div class="col-12 col-sm-12">
															<textarea rows="4" cols="20" maxlength="50" style="border: 1px solid lightgray;" id="building_text" name="building_text" class="etc1_text" readonly="readonly"></textarea>
															</div>
														</div>
														
														<b class="page_number">1/4</b>
													</div>
													<!-- 버튼 -->
													<input type="button" name="next" class="next action-button" value="다음" id="next" />
												</fieldset>
												
												<fieldset style="display: none;">
													<div class="form-card " style="height: 450px;">
														<!-- 여기 라디오 버튼 : form -->
														<b>* 선택해주세요.</b><br> <br> 
														
														<div class="row">
															<div class="col-8 col-sm-8">
																<input type="radio" name="repair_type"  value="전자제품 수리"  id="structure1" checked="checked">
																<span>전자제품 수리</span> 
															</div>
		

															<div class="col-4 col-sm-4">
																<input type="radio" name="repair_type"  value="가구수리"  id="structure1" >
																<span>가구수리</span> 
															</div>

															<div class="col-8 col-sm-8">
																<input type="radio" name="repair_type"  value="열쇠/도어락 수리"  id="structure1" >
																<span>열쇠/도어락 수리</span> 
															</div>														
							
															<div class="col-4 col-sm-4">
																<input type="radio" name="repair_type"  value="전기 배선 수리"  id="structure1" >
																<span>전기 배선 수리</span> 
															</div>																

															<div class="col-8 col-sm-8">
																<input type="radio" name="repair_type" value="방충망 및 방범창 수리"  id="structure1">
																<span>방충망 및 방범창 수리</span> 
															</div>											
												
															<div class="col-4 col-sm-4">
																<input type="radio" name="repair_type" value="문 수리"  id="structure1">
																<span>문 수리</span> 
															</div>															

															<div class="col-8 col-sm-8">
																<input type="radio" name="repair_type" value="수도 관련 수리"  id="structure1">
																<span>수도 관련 수리</span> 
															</div>
															
															<div class="col-4 col-sm-4">
																<input type="radio" name="repair_type" value="기타"  id="structure1" class="etc2" >
																<span>기타</span> 
															</div>																																																	
														</div>
														
														
													<div class="row">
														<div class="col-12 col-sm-12">	
															<textarea rows="4" cols="20" maxlength="50"  style="border: 1px solid lightgray;" id=repair_text name="repair_text" class="etc2_text" readonly="readonly"></textarea>
														 </div>	
													</div>
														
														<b class="page_number">2/4</b>												
													</div>
													
													<!-- 버튼 -->
													<input type="button" name="previous" class="previous action-button-previous" value="이전" /> 
													<input type="button" name="next" class="next action-button" value="다음" />
												</fieldset>
												
												<fieldset style="display: none;">
													<div class="form-card" style="height: 400px;">
														<!-- 사진을 첨부해주세요.: form -->
														<span style="font-size: 15px; color: lightgray;">*최대 10장</span>
	
														<div>
													        <div class="imgs_wrap row" style="height: 210px;width: 600px;border: none;top: -20px;position: relative;">
													            <img id="img" style="display: none;"/>
													        </div>
													    </div>
													    
														<div class="row">       
													        <div class="input_wrap col-12 col-sm-12 text-center">
													            <a href="javascript:" onclick="fileUploadAction();" class="my_button">파일 업로드</a>
													            <input type="file" id="request_file" name="request_file" multiple="true" />
													        </div>
													    </div>
														<b class="page_number">3/4</b>
							
																
													</div>
													<!-- 버튼 -->
													<input type="button" name="previous" class="previous action-button-previous" value="이전" /> 
													<input type="button" name="next" class="next action-button" value="다음" />
												</fieldset>
												
												<fieldset style="display: none;">
													<div class="form-card">
														<b>* 공식적인 요청 외 전문가에게 무리한 요구시 요청이 거절될 수 있습니다.</b>
														<textarea rows="10" cols="20" maxlength="70" style="border: 1px solid lightgray;" id="simple_req_text" name="simple_req_text" placeholder="내용을 입력하세요."></textarea>
														<b class="page_number">4/4</b>
													</div>
													<input type="button" class="previous action-button-previous" value="이전" /> 
													<input type="button" name="finish" id="finish" class="action-button" value="요청"  />
													<input type="hidden" name="expert_id" value="${param.expert}"  >
												</fieldset>
												
												
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- modal-body -->
				</div>
				<!-- .modal -->
			</div>
			<!-- .modal-dialog -->
		</div>

		





<script type="text/javascript">



$('.etc1').click(function(){
	$(".etc1_text").attr("readonly", false);
})

$('.etc2').click(function(){
	$(".etc2_text").attr("readonly", false);
})

// 이미지 정보들을 담을 배열
var sel_files = [];

$(document).ready(function() {
     $("#request_file").on("change", handleImgFileSelect);     
     $("#finish").on("click", function(event){
     	submitAction();	
     });
     
 }); 

function fileUploadAction() {
	$("#request_file").trigger('click');
}

function handleImgFileSelect(e) {

		// 이미지 정보들을 초기화
		sel_files = [];
		$(".imgs_wrap").empty();

		var files = e.target.files;

		if (files.length >= 10) {
			alert("최대 10장만 업로드 가능합니다.");
			return;
		}

		var filesArr = Array.prototype.slice.call(files);

		var index = 0;
		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

			sel_files.push(f);

			var reader = new FileReader();
			reader.onload = function(e) {
				var html = "<div class='col-md-5ths col-xs-6 upload_image'  data-file='"+f.name+"' ><a href=\"javascript:void(0);\" onclick=\"deleteImageAction("
						+ index
						+ ")\" id=\"img_id_"
						+ index
						+ "\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"'  class='request_img_file' title='Click to remove'></a></div>";

				$(".imgs_wrap").append(html);
				index++;

				
				 $(".removeButton").on("click", function(){
                     $(this).closest('div').remove();
                     document.getElementById("file").value = "";
                  });

			}
			reader.readAsDataURL(f);

		});

}

function deleteImageAction(index) {
	sel_files.splice(index, 1);
	delete sel_files[index];
	
	var img_id = "#img_id_" + index;
	
	$(img_id).val("");
	$(img_id).parent("div").remove();	
	console.log("삭제 후 배열 값: ");	
	console.dir(sel_files);
}



function cleanInputs(fileEle, oriName){
	var fileData=$("#request_file").val();
	console.log(" fileData : 파일 ");
	console.dir(fileData);
	
}

function fileUploadAction() {
	$("#request_file").trigger('click');
}

function submitAction() {
	console.log("업로드 파일 갯수 : " + sel_files.length);

	if (sel_files.length < 3) {
		alert("최소 3개의 파일을 선택해주세요."); // 파일 
		return;
	}

	var formData = new FormData($('#msform')[0]);

	//삭제 처리시  실질 적으로 업로드할 이미지명 과 비교할 데이터
	 $(".upload_image").each(function(){
		   console.log($(this).attr("data-file"));
		   formData.append('realFiles',$(this).attr("data-file")); 
	});	   
	 
   formData.append("image_count", sel_files.length);    
    
	$.ajax({
		type : "POST",
		enctype : 'multipart/form-data',
		url : '${pageContext.request.contextPath}/Request.Ajax',
		data : formData,
		processData : false,
		contentType : false,
		cache : false,
		success : function(result) {

			var re=$.trim(result);
			if(re=="success"){
				alert("등록 처리 되었습니다.");	
				location.reload();				
				
				// 썸네일 출력 ex 
				/*http://localhost:8080/resources/resources/Requestupload/2020-7-19/thumb_rq202071981184285.jpg*/
			}else if(re=="error"){
				alert("등록에 실패 하였습니다.");
			}						
		},
		error : function(e) {

		}
	});

}
</script>