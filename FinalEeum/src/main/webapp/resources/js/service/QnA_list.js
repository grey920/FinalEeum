//크롬에서 확인하는 법 
//1. network탭에 들어간다  2게시판의 n줄보기 누름  
//3. 네트워크의 네임에 새로 추가됨  4. 헤더의 Form Data에서 내가 잘 보냈나확인 
//5. response탭에서 응답 확인 가능하다
//
//$('.btn-qna').click(function(qdata) {
//	$.ajax({
//		method : "POST",
//		url : "qnaAdd.Ajax",
//		data : qdata,
//		dataType:"json",
//		success : function(){
//			
//		},
//		error: function(){
//			console.log("에러")
//		}
//	})
//})

function setPaging(href, digit) {
	output += "<li class=page-item>";
	gray = "";
	if (href == "") {
		gray = " gray";
	}
	anchor = "<a class='page-link" + gray + "'" + href + ">" + digit
			+ "</a></li>";
	output += anchor;
}

$('.btn-qna-re').click(function(){
	var form_re = $(".form_re").serialize();
	$.ajax({
		type : "POST",
		data: form_re,
		url : "qnaReplyAction.Ajax",
		cache : false,
		success : function(data) {
			console.log("data"+data)
			if(data==1){
				go(1);
			}//data==1
		},//success
		error: function(){
			console.log("form_re에러")
		}
	})
})

 $('.btn-qna').click(function() {
	output = "";
	var form = $(".form_or").serialize();
	$.ajax({
				type : "POST",
				data : form,
				url : "qnaAdd.Ajax",
				cache : false,
				success : function(data) {
					console.log("data="+data);
					if(data==1){
						go(1);
					}//data==1
				}, // success end
				error : function() {
					console.log('에러')
				}
			})// ajax end
 })
			
			
 
 function go(input_page){
	 $.ajax({
			url:"QnA_list_view.sv",
			data:{
				page : input_page
			},
			dataType:"json",
			success:function(data){
				console.log("QnA_list_view.sv 성공");
				console.log("qnalist",data.qnalist);
				console.log("qnalist2",data.qnalist[2]);
               console.log("listcount:",data.listcount);
				if (data.listcount > 0) { // 총갯수가 0보다 큰 경우
					$("tbody").remove();
					var num = data.listcount - (data.page - 1) * data.limit;
					console.log("num: "+num);
//					
//					
				output = "<tbody>";
					$(data.qnalist).each(
									function(index, item) {
										output += '<tr class="item"><td>' + (num--)
												+ '</td>'
										blank_count = item.qna_RE_LEV * 2 + 1;
										blank = '&nbsp;'; 
										for (var i = 0; i < blank_count; i++) {
											blank += '&nbsp;&nbsp;';
										}
										img = "";
										if (item.qna_RE_LEV > 0) {
											img = "<img src='resources/img/answerLine.gif' style='width:15px;'>";
										}

										output += "<td><div class='title'>" + blank + img
										output +=  item.qna_TITLE
												+ '</div></td>'
										output += '<td><div>' + item.qna_ID
												+ '</div></td>'
										output += '<td><div>'
												+ item.qna_DATE
												+ '</div></td></tr>'
										output += '<tr class="hide"><td colspan="4"><div>'
												+ item.qna_CONTENT
												//+'<button class="btn btn-info qna_reply" data-toggle="modal" data-target="#qnaReplyModal" '
												//+ 'onClick="putTempNum('+item.qna_NUM+',"'+item.QNA_ID+'",'+item.QNA_RE_REF+','+item.QNA_RE_LEV+','+item.RE_SEQ+')">답변</button>'
												+ '</div></td></tr>'
									})
					output += "</tbody>"
						console.log("ouput:"+output);
					$('thead').after(output);
					//$('.dd').after(output)// table 완성

					$(".pagination").empty(); // 페이징 처리 영역 내용 제거
					output = "";

					digit = '이전&nbsp;'
					href = "";
					if (data.page > 1) {
						href = 'href=javascript:go(' + (data.page - 1)+ ')';
					}
					setPaging(href, digit);

					for (var i = data.startpage; i <= data.endpage; i++) {
						digit = i;
						href = "";
						if (i != data.page) {
							href = 'href=javascript:go(' + i + ')';
						}
						setPaging(href, digit);
					}

					digit = '다음&nbsp;';
					href = "";
					if (data.page < data.maxpage) {
						href = 'href=javascript:go(' + (data.page + 1)+ ')';
					}
					setPaging(href, digit);

					$('.pagination').append(output)
				
				}// if(data.listcount) end
				
				function putTempNum(inputNum, inputId, inputRef, inputLev, inputSeq){
					$('#qnaNum_re').val(inputNum);
					var inputIdString =inputId;
					$('#qnaid_re').val(inputIdString);
					$('#qnaRef_re').val(inputRef);
					$('#qnaLev_re').val(inputLev);
					$('#qnaSeq_re').val(inputSeq);
				}		
			}//qna_list_view.sv success
		})
		$(document).on('click', '.qboard .item .title', function(){
			var boardT = (".qboard .show");
			var boardC = $(this).parents().next("tr")
			if($(boardC).hasClass('hide')){
				$(boardT).removeClass('show').addClass('hide');
				$(boardC).removeClass('hide').addClass('show');
			}else{
				$(boardC).addClass('hide').removeClass('show');
			}
		})
		
		
 }
