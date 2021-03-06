$(function() {
// 친절함
	$(".svg-star-rating1").starRating(
			{
				totalStars : 5,

				
				
				
				emptyColor : 'lightgray',
				hoverColor : 'salmon',
				initialRating: 0.5,
				strokeWidth: 0,
				useGradient: false,
				activeColor : 'salmon',
				starShape: 'rounded',
				onHover : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating1').text(currentIndex);
					
				},
				onLeave : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating1').text(currentRating);
					
				}
			});
// 명확한 설명
	$(".svg-star-rating2").starRating(
			{
				totalStars : 5,

				emptyColor : 'lightgray',
				hoverColor : 'salmon',
				initialRating: 0.5,
				activeColor : 'salmon',
				processData : false,
				contentType : false,
				starShape: 'rounded',
				onHover : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating2').text(currentIndex);
				},
				onLeave : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating2').text(currentRating);
					
				}
			});
	
// 청결도
	$(".svg-star-rating3").starRating(
			{
				totalStars : 5,

				emptyColor : 'lightgray',
				hoverColor : 'salmon',
				initialRating: 0.5,
				activeColor : 'salmon',
				processData : false,
				contentType : false,
				starShape: 'rounded',
				onHover : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating3').text(currentIndex);
				},
				onLeave : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating3').text(currentRating);
					
				}
			});
// 전문성
	$(".svg-star-rating4").starRating(
			{
				totalStars : 5,

				emptyColor : 'lightgray',
				hoverColor : 'salmon',
				initialRating: 0.5,
				activeColor : 'salmon',
				processData : false,
				contentType : false,
				starShape: 'rounded',
				onHover : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating4').text(currentIndex);
				},
				onLeave : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating4').text(currentRating);
					
				}
			});
// 시간준수
	$(".svg-star-rating5").starRating(
			{
				totalStars : 5,

				emptyColor : 'lightgray',
				hoverColor : 'salmon',
				initialRating: 0.5,
				activeColor : 'salmon',
				processData : false,
				contentType : false,
				starShape: 'rounded',
				onHover : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating5').text(currentIndex);
				},
				onLeave : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating5').text(currentRating);
					
				}
			});
// 가격의 합리성
	$(".svg-star-rating6").starRating(
			{
				totalStars : 5,

				emptyColor : 'lightgray',
				hoverColor : 'salmon',
				initialRating: 0.5,
				activeColor : 'salmon',
				processData : false,
				contentType : false,
				starShape: 'rounded',
				onHover : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating6').text(currentIndex);
				},
				onLeave : function(currentIndex, currentRating, $el) {
					console.log('index: ', currentIndex, 'currentRating: ',
							currentRating, ' DOM element ', $el);
					$('.live-rating6').text(currentRating);
					
				}
			});
	
	
	/** ********************** 후기 *************** */
	$("#comment table").hide(); // 1
	var page = 1; // 더 보기에서 보여줄 페이지를 기억할 변수
	var count = parseInt($("#count").val()); // 전체 댓글 갯수
	var maxPage = getMaxPage(); // 댓글의 총 페이수를 구합니다.
	if (count != 0) // 댓글 갯수가 0이 아니면
		getList(1); // 첫 페이지의 댓글을 구해옵니다. ( 한페이지에 3개씩 가져옵니다.)
	else {// 댓글이없는경우
		$("#message").text("등록된 후기가 없습니다.")
	}
	
	//더보기 클릭시
	   $("#message").click(function() {
		   alert(page);
		      getList(page);
		   }); // click end


	// 최대 몇 페이지를 가질 수 있는지 계산합니다.
	function getMaxPage() {
		// 글의 총 갯수 - 등록 또는 삭제시 댓글의 총ㄱ ㅐㅅ수 변화가 있기 때문에 갯수를 구합니다.
		count = parseInt($("#count").val());
		console.log("총 후기 수:"+count);

		// 예 ) 총 리스트가 5개이면 최대 2페이지 입니다.
		// int maxpage = (listcount + limit -1) / limit;
		return parseInt((count + 10 - 1) / 10);
	}

	// 조회
	function getList(currentPage) {

		var expert_id = $('#EXPERT_ID').val();
		var user_id = $('#USER_ID').val();
		$
				.ajax({
					type : "post",
					url : "ReviewList.Ajax",
					data : {
						"expert_id" : expert_id,
						"user_id" : user_id,
						"page" : currentPage
					},
					dataType : "json",
					success : function(rdata) {
						console.log("성공");
						if (rdata.length > 0) {
							$("#comment table").show(); // 문서가 로딩될 때 hide() 했던
							// 부분을 보이게
							// 합니다(1)
							
							$("#comment thead").show(); // 글이 없을때 hide() 부분을
							// 보이게합니다(2)
							// 후기 나올때 별점도 같이..
							output = '';
							$(rdata).each(function() {
												// 출력시 id='update_review'
												
												if (user_id == this.RV_USER_ID) {
													button = "<i class='fas fa-cut' id='delete_review' style='color=#4E8092;'></i>삭제"+
													         "<i class='fas fa-pen' id='update_review'></i>수정<br>";
													         
												}else{
													button = "<span>신고</span><br>";
												}
												output += "<tr id='rv_th'><td id='user_id'>"
														+ "<p>"
														+ this.RV_USER_ID
														+ "</p>" + "</td>";
												output += "<td>"
														+ "<pre  id='rv_content'>"
														+ "<input type='hidden' id='RV_NO' name='RV_NO' value='"+this.RV_NO+"'>"
														+ this.RV_CONTENT
														+ "</pre>"  
														+ "</td>";
												output += "<td>" + this.RV_DATE
														+"<br>" +button
														+ "<span style='font-size:90%;'>청결도 :" +this.RV_RATING1 +"</span><br>"
														+ "<span style='font-size:90%;'>명확한설명 :" +this.RV_RATING2 +"</span><br>"
														+ "<span style='font-size:90%;'>청결도 :" +this.RV_RATING3 +"</span><br>"
														+ "<span style='font-size:90%;'>전문성 :" +this.RV_RATING4 +"</span><br>"
														+ "<span style='font-size:90%;'>시간준수 :" +this.RV_RATING5 +"</span><br>"
														+ "<span style='font-size:90%;'>가격의합리성 :" +this.RV_RATING6 +"</span><br>"
														"</td></tr>";
											
											});
							console.log(output);
							$("#comment tbody").append(output);

							console.log("현재 : " + this.RV_DATE)
							console.log("max : " + maxPage)
							// 현재 페이지가 마지막 페이지면 "더보기"는 나타나지 않습니다.
							if (currentPage == maxPage) {
								$("#message").text("");
							} else {
								$("#message").text("더보기")
							}

							// 더보기를 클릭할 경우 현재 페이지에서 1증가된 페이지를 보여주기 위해 값을 설정합니다
							page = currentPage + 1;
						} else {
							$("#message").text("등록된 댓글이 없습니다.")
							$("#comment thead").hide(); // 2
							$("#comment tobdy").empty(); // 데이터가 한 개인 경우
							// 삭제하면서 tbody를
							// 지웁니다.
						}
					}
				}); // ajax end

		// 후기 입력할때 keyup
		$("#content").on('keyup', function() {
			length = $(this).val().length;
			console.log("text");

			if (length > 400) {
				length = 400;
				content = content.substring(0, length);
				alert('글자수를 초과했습니다.');

			}
		})
	}// function end

	// 등록 버튼
	$("#write").click(function() {
		buttonText = $("#write").text();
		content = $("#content").val();
		
		var expert_id = $('#EXPERT_ID').val();
		var user_id = $('#USER_ID').val();
		var num = $("#RV_NO").val();
		//배열로 값 넣기
		var rating = new Array($('.live-rating1').text(),
				$('.live-rating2').text(),
				$('.live-rating3').text(),
				$('.live-rating4').text(),
				$('.live-rating5').text(),
				$('.live-rating6').text()); //배열선언


		if (buttonText == "등록") {
			url = "ReviewAdd.Ajax";



			console.log(rating);
			console.log(user_id);
			data = {
				"rv_content" : content,
				"rv_user_id" : user_id,
				"rv_expert_id" : expert_id,
				"rv_rating1" : rating[0],
				"rv_rating2" : rating[1],
				"rv_rating3" : rating[2],
				"rv_rating4" : rating[3],
				"rv_rating5" : rating[4],
				"rv_rating6" : rating[5],
			};
			$("#write").text("등록");
		
			
		}else{
			url = "ReviewUpdate.Ajax";
		
			console.log("후기기기기긱"+content);
			
			data = {
					"rv_no"	  : num,
					"rv_content" : content,
					"rv_rating1" : rating[0],
					"rv_rating2" : rating[1],
					"rv_rating3" : rating[2],
					"rv_rating4" : rating[3],
					"rv_rating5" : rating[4],
					"rv_rating6" : rating[5],
				};
				$("#write").text("등록");
		
			
		}
		$.ajax({
			type : "post",
			url : url,
			data : data,
			success : function(result) {
				$("#comment tbody").empty();
				if (url == "ReviewAdd.Ajax") {
					$("#count").text(++count); // 등록을 클릭하면 전체 댓글 갯수 증가.
					maxPage = getMaxPage(); // maxPage를 다시구합니다.
				}
				getList(1); // 등록, 수정완료 후 첫 페이지 보여줍니다.
				alert('등록 되었습니다.');
				location.reload();
			},
			error : function(result) {
				if (rating[0] == '0') {
					alert("친절함을 평가해주세요.");
				}else if(data.rv_content == ''){
					alert("내용을 입력해주세요.");
				}else if(rating[1] == '0'){
					alert("명확한 설명을 평가해주세요.");
				}else if(rating[2] == '0'){
					alert("청결도를 평가해주세요.");
				}else if(rating[3] == '0'){
					alert("전문성을 평가해주세요.");
				}else if(rating[4] == '0'){
					alert("시간준수를 평가해주세요.");
				}else if(rating[5] == '0'){
					alert("가격의 합리성을 평가해주세요.");
				}
			}
		});

	});
	
	   $("#comment").on('click','.fas.fa-pen', function(){
		      before = $(this).parent().prev().text(); // 선택한 내용을 가져옵니다.
		      $("#content").focus().val(before); // textarea에 수정전 내용을 보여줍니다.
		      num = $('#num').val();
		      $("#write").text("수정완료"); // 등록버튼의 라벨을 '수정완료' 로 변경합니다.
		      $(this).parent().parent().css('background','lightgray'); // 수정할 행의배경색을 변경합니다.
		   });
	   
	   //평점
	   
	
		   
		

});