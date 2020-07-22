$(document).ready(function() {
	$("#viewcount").change(function() {
		go(1);//보여줄 페이지를 1페이지로 설정합니다.
	});// change end

   	  $(".write_oneday").click(function(){
   		  console.log(location.href);
   		  location.href="OnedayWrite.one";
     })
     
});

//크롬에서 확인하는 법 
//1. network탭에 들어간다  2게시판의 n줄보기 누름  
//3. 네트워크의 네임에 새로 추가됨  4. 헤더의 Form Data에서 내가 잘 보냈나확인 
//5. response탭에서 응답 확인 가능하다

function go(page) {
	var limit = $('#viewcount').val();
	var data = "limit=" + limit + "&state=ajax&page=" + page;
	ajax(data);
}

//총 2페이지 페이징 처리된 경우
//이전 1 2 다음
//현재 페이지가 1페이지인 경우 아래와 같은 페이징 코드가 필요
//<li class="page-item"><a class="page-link gray">이전&nbsp;</a></li>
//<li class="page-item"><a class="page-link gray">1</a></li>
//<li class="page-item"><a class="page-link" href="javascript:go(2)">2</a></li>
//<li class="page-item"><a class="page-link" href="javascript:go(2)">다음&nbsp;</a></li>

//현재 페이지가 2페이지인 경우 아래와 같은 페이징 코드가 필요
//<li class="page-item"><a class="page-link" href="javascript:go(1)">이전&nbsp;</a></li>
//<li class="page-item"><a class="page-link" href="javascript:go(1)">1</a></li>
//<li class="page-item"><a class="page-link gray">2</a></li>
//<li class="page-item"><a class="page-link gray">다음&nbsp;</a></li>
function setPaging(href, digit){
	output += "<li class=page-item>";
	gray="";
	if(href=="") {
		gray=" gray";
	}
	anchor = "<a class='page-link" + gray + "'"  + href + ">"+ digit + "</a></li>";
	output += anchor;
}

//1. 기본으로 view페이지 만들기 2.만든 페이지를 그대로 자바스크립트에 넣는다
function ajax(sdata) {//qna_board_list.jsp를 그대로 자바스크립트에 넣는다
//	// 1줄보기 선택시 리턴된 데이터
//	/*
//	 {"page":1,"maxpage":6,"startpage":1,"endpage":6,"listcount":6,"limit":1,
//	  "boardlist":[{"BOARD_NUM":6,"BOARD_NAME":"admin","BOARD_SUBJECT":"1","BOARD_CONTENT":"1","BOARD_RE_REF":6,"BOARD_RE_LEV":0,"BOARD_RE_SEQ":0,"BOARD_READCOUNT":0,"BOARD_DATE":"2019-05-26"}]}
//	 */
	console.log(sdata)
	output = "";
	$.ajax({
		type : "POST",
		data : sdata,
		//url : "BoardList.bo",
		url:"OnedayListAjax.one",
		dataType : "json",
		cache : false,
		success : function(data) {
			$("#viewcount").val(data.limit);

				$("#pagingOne").remove();
				var num = data.listcount - (data.page - 1) * data.limit;
				console.log(num)
				output = '<div class="row" id="pagingOne">';
				$(data.onedaylist).each(
					function(index, item) {
						output += '<div class="product-width col-md-6 col-xl-3 col-lg-4">';
						output += '<div class="product-wrapper mb-35">';
							output+= '<div class="product-img">';
								output += '<a href="./OnedayDetailAction.one?num='+ item.ONE_INDEX+'">'; 
								output += '<img alt="oneday_main_poster" id="poster" src="resources/OBoardupload'+item.SAVEFILE+'" width="310px"height="375px"></a>';
								output += '<div class="price-decrease"> <span>모집중</span></div>';
								output += '<div class="product-action-3">';
									output += '<a class="action-plus-2" title="Quick View"href="./OnedayDetailAction.one?num='+item.ONE_INDEX+'"> <span>상세정보 보러가기</span>';
									output += '</a></div></div>';
							output += '<div class="product-content">';
								output += '<div class="product-title-wishlist"><div class="product-title-3">';
										output += '<a href="./OnedayDetailAction.one?num='+item.ONE_INDEX+'"><h4>'+item.ONE_TITLE+'</h4></a></div>';
									output += '<div class="product-wishlist-3">';
										output += '<a href="#"><i class="ti-heart"></i></a></div></div>';
								output += '<div class="product-peice-addtocart"><div>';
										output += '<span>'+item.ONE_PRICE+'원</span></div>';
									output += '<div class="description-oneday">'+item.ONE_LINE+'</div></div></div>';
							output+= '<div class="product-list-details">';
								output += '<h2><a href="product-details.html">'+item.ONE_TITLE+'</a></h2>';
								output += '<div class="product-price"><span>'+item.ONE_PRICE+'원</span></div>';
								output += '<p>'+item.ONE_LINE+'</p></div></div></div>';
					})
				$('.product-view').append(output)//table 완성
				
				$("#pagination").empty(); //페이징 처리 영역 내용 제거
				output = "";
				
				digit = '이전&nbsp;'
				href="";	
				if (data.page > 1) {
					href = 'href=javascript:go(' + (data.page - 1) + ')';
				}
				setPaging(href, digit);
				
				for (var i = data.startpage; i <= data.endpage; i++) {
					digit = i;
					href="";
					if (i != data.page) {
						href = 'href=javascript:go(' + i + ')';
					} 
					setPaging( href, digit);
				}
				
				digit = '다음&nbsp;';
				href="";
				if (data.page < data.maxpage) {
					href = 'href=javascript:go(' + (data.page + 1) + ')';
				} 
				setPaging( href, digit);

				$('.pagination').append(output)
			
		}, //success)
		
	})// ajax end
 } // fucntion ajax end



