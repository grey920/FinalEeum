// 하트 누르면 문구 나옴
$(document).ready(
		function() {

			var current_fs, next_fs, previous_fs; // fieldsets
			var opacity;

			
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

			$('.ti-heart').mouseover(function() {
				var text1 = '<p>이미 찜한 전문가 입니다.</p>'
				$('.product-addtocart').append(text1);
				$(this).removeClass('ti-heart');
				$(this).addClass('ti-heart-broken');
			});

			$('.ti-heart').mouseleave(function() {
				$(this).removeClass('ti-heart-broken');
				$(this).addClass('ti-heart');
			});

			$('.modal-child').on('show.bs.modal', function() {
				var modalParent = $(this).attr('data-modal-parent');
				$(modalParent).css('opacity', 0);
				$('body').css('overflow', 'hidden');
			});

			$('.modal-child').on('hidden.bs.modal', function() {
				var modalParent = $(this).attr('data-modal-parent');

				$(modalParent).css('opacity', 1);
			});

			$('#close1').click(function() {
				$('#myModal').css('z-index', 99999);
				$('header').css('z-index', 0);
				$('#myModal').css('overflow', 'scroll');
				$('body').css('overflow', 'hidden');
				alert('눌렀니');
			});
			// 하트 누르면 찜 해제 문구 뜨기

			$("#realclose").click(function() {
				$('body').css('overflow', 'scroll');

			});
			// list 아이콘 누르면 간략히 보기 없앰..
			$('.ion-navicon').click(function() {
				$('.product-action-3').removeClass();
				$('.action-plus-2').empty();
				$('.ti-plus').removeClass();

			});
		

			// 페이징 처리
			$("#viewcount").change(function() {
				go(1);// 보여줄 페이지를 1페이지로 설정합니다.
			});// change end

		});
