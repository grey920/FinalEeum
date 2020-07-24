$(document).ready(
		function() {

			
	        
	        
			var current_fs, next_fs, previous_fs; // fieldsets
			var opacity;
			var expert_id = $('#EXPERT_ID').val();
			// 전문가 찜 불가
			var expert_id_login = $('#expert_id_login').val();
			if (expert_id_login == 1) {
				$('.heart_click').attr('disabled', true);
				$('.heart_click').css('cursor', 'auto');
				$('.heart_click').css('background-color', '#CADEE3');
				$('.heart_click2').attr('disabled', true);
				$('.heart_click2').css('cursor', 'auto');
				$('.heart_click2').css('background-color', '#CADEE3');

			}

			$('#top').addClass('step-1');

			$(".next").click(
					function() {

						current_fs = $(this).parent(); // .next 이 자손 div가 본인
						// fieldset이 부모 즉,
						// fieldset 을 가져옴
						current_fs_index = $(this).parent().index();
						next_fs = $(this).parent().next(); // 첫번째 filedset의 다음을
						// 가져옴.

						$("#progressbar li").eq($("fieldset").index(next_fs))
								.addClass("active"); // "active" 클래스 추가 :
						// prograssbar 의

						// 탑
						console.log("다음:" + current_fs_index);
						for (var i = 1; i < current_fs_index + 1; i++) {
							if (current_fs_index == i) {
								i++;
								$("#top").removeClass('step-' + (i - 1));
								$('#top').addClass('step-' + i);
							} else {
								$("#top").removeClass('step-' + i);
							}
						}

						var pf_cate = $("#PF_CATE").val();
						if (pf_cate == 1) {

							if (current_fs_index == 1) {
								$('step-2.step-2_1').removeClass();
								$('#top').addClass('step-2_1');

							}

						}

						// 전문가 별로 모달 내용이 달라짐

						// show the next fieldset
						next_fs.show();
						// hide the current fieldset with style
						current_fs.animate({
							opacity : 0
						}, {
							step : function(now) {
								// for making fielset appear animation
								opacity = 1 - now;

								current_fs.css({
									'display' : 'none',
									'position' : 'relative'
								});
								next_fs.css({
									'opacity' : opacity
								});

								// 여기
							},
							duration : 600
						});

					});

			$(".previous").click(
					function() {

						current_fs = $(this).parent();
						current_fs_index = $(this).parent().index();
						previous_fs = $(this).parent().prev();

						console.log("이전:" + current_fs_index);
						// Remove class active
						$("#progressbar li")
								.eq($("fieldset").index(current_fs))
								.removeClass("active");

						// 이전 누르면 top 문구 바껴야됨.
						if (current_fs_index == 2) {
							$("#top").removeClass('step-2');
							$('#top').addClass('step-1'); // 1이 나와야함.
						
						}

						if (current_fs_index == 3) {
							$("#top").removeClass('step-3');
							$('#top').addClass('step-2'); // 1이 나와야함.
						}

						if (current_fs_index == 4) {
							$("#top").removeClass('step-4');
							$('#top').addClass('step-3'); // 1이 나와야함.
						}

						for (i = 2; i <= 4; i++) {
							if (current_fs_index == i) {
								var j = 1;
								$("#top").removeClass('step-' + i);
								$('#top').addClass('step-' + j); // 1이 나와야함.
							}
						}

						// show the previous fieldset
						previous_fs.show();

						// hide the current fieldset with style
						current_fs.animate({
							opacity : 0
						}, {
							step : function(now) {
								// for making fielset appear animation
								opacity = 1 - now;

								current_fs.css({
									'display' : 'none',
									'position' : 'relative'
								});
								previous_fs.css({
									'opacity' : opacity
								});
							},
							duration : 600
						});
					});

			$('.radio-group .radio').click(function() {
				$(this).parent().find('.radio').removeClass('selected');
				$(this).addClass('selected');
			});

			$(".submit").click(function() {
				return false;
			});

			// 탭 메뉴 클릭시 이벤트 발생.
			$('.tabmenu').click(function() {
				// tabmenu 클래스의 data-tab 속성 값을 active 에다 담음
				var active = $(this).attr('data-tab');
				var tab = "";
				console.log(active.toString());

				if (active.toString() == 'tab1') {
					$('#tabText1').css('text-decoration', 'underline');
					$('#tabText1').css('color', 'black');
					tab = "portfolio_list";
					for (var i = 2; i <= 4; i++) {
						$('#tabText' + i).css('text-decoration', 'none');
						$('#tabText' + i).css('color', 'white');

					}
				} else if (active.toString() == 'tab2') {
					tab = "review_list";
					for (var i = 1; i <= 4; i++) {
						$('#tabText' + i).css('text-decoration', 'none');
						$('#tabText' + i).css('color', 'white');
						$('#tabText2').css('text-decoration', 'underline');
						$('#tabText2').css('color', 'black');
					}

				} else if (active.toString() == 'tab3') {
					tab = "price_list";
					for (var i = 1; i <= 4; i++) {
						$('#tabText' + i).css('text-decoration', 'none');
						$('#tabText' + i).css('color', 'white');
						$('#tabText3').css('text-decoration', 'underline');
						$('#tabText3').css('color', 'black');
					}
				} else {
					for (var i = 1; i <= 4; i++) {
						tab = "QnA_list";
						$('#tabText' + i).css('text-decoration', 'none');
						$('#tabText' + i).css('color', 'white');
						$('#tabText4').css('text-decoration', 'underline');
						$('#tabText4').css('color', 'black');
					}
				}

				$.ajax({
					type : 'GET',
					url : tab, // ~~.jsp 파일이 들어옴
					error : function() { // 통신 실패시
						alert('통신실패!');
					},
					success : function(data) { // 통신 성공하면 가져옴.
						$("#tabcontent").html(data);
						console.log("1."+$("#EXPERT_ID").val());
					}

				});

			});// tabmenu end
			// 경력이 처음 나오게 load 함수
			$('#tabText1').css('text-decoration', 'underline');
			$('#tabText1').css('color', 'black');
			$('#tabcontent').load("portfolio_list");
			var expert_id = $('#EXPERT_ID').val();
			// 찜등록
			$(".heart_click").click(
					function() {

						var expert_id = $('#EXPERT_ID').val();
						var user_id = $('#USER_ID').val();
						console.log("전문가 아이디:" + expert_id + "지금 로그인한 회원 아이디:"
								+ user_id);

						var senddata = {
							'EXPERT_ID' : expert_id,
							'USER_ID' : user_id
						}; // 현재 로그인한 사용자 아이디, 찜등록하려는 전문가 아이디

						$
								.ajax({
									type : 'POST',
									url : "LikeExpert.Ajax", // 찜등록 db로 들어가는
									// 주소 ,
									cache : false,
									dataType : "json",
									data : senddata,
									success : function(sdata) {

										if (sdata == 0) {
											alert("찜 등록했습니다."); // db에는 잘 들어가고
											// 디테일은 나중에 여기
											// 수정 ㅎ완료
											$("#fa-heart-o").removeClass();
											$("#fa-heart-o").addClass(
													'fa fa-heart');
										} else if (sdata == 1) {
											alert("찜 등록해제 했습니다.");

											$("#fa-heart-o").removeClass(
													'fa fa-heart');
											$("#fa-heart-o").addClass(
													'fa fa-heart-o');
										}

									},
									error : function() {
										alert("찜 등록이 완료되지 않았습니다.");
									}

								});

					}); // 찜

			// 견적
			//별점
			

		});