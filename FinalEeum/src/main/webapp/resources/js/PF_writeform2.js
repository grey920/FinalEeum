$(document).ready(function() {
	
	/* 파일 수정 처리 */
	var check = 0;
	var check1 = 0;
	var check2 = 0;

	$('form').submit(function() {
		// 한 번도 변경하지 않으면 $("#filevalue").text()의 파일명을 전송 (BOARD_ORIGINAL)
		if (check == 0) {
			value = $('#filevalue').text();
			html = "<input type='text' value='" + value + "' name='check'>";
			$(this).append(html);
		}
		
		if (check1 == 0) {
			value = $('#filevalue1').text();
			html = "<input type='text' value='" + value + "' name='check1'>";
			$(this).append(html);
		}
		
		if (check2 == 0) {
			value = $('#filevalue2').text();
			html = "<input type='text' value='" + value + "' name='check2'>";
			$(this).append(html);
		}
	});//form end


	/*file은 값을 정해주지 않으면 value 가 없어서 input type="text" 라는 친구를 만들어서 span에 있는 값을 value에 넣어줍니다.*/
	 $("#expert_profile").change(function(){
	      check ++;
	      var inputfile = $(this).val().split("\\");
	      $("#filevalue").text(inputfile[inputfile.length - 1]);
	   });//change end   
	
	$("#upfile1").change(function(){
	      check1 ++;
	      var inputfile1 = $(this).val().split("\\");
	      $("#filevalue1").text(inputfile1[inputfile1.length - 1]);
	   });//change end
	   
	   $("#upfile2").change(function(){
		      check2 ++;
		      var inputfile2 = $(this).val().split("\\");
		      $("#filevalue2").text(inputfile2[inputfile2.length - 1]);
		   });//change end
	   
//	   //remove 이미지를 클릭하면 파일명을 ''로 변경하고 remove 이미지를 보이지 않게 함
//	   $(".remove").click(function(){
//	      $(this).prev().text('');
//	      $(this).css('display', 'none');
//	   })
//	   
	   
	   
	   
	
		/*프로필 사진 업로드 처리*/
		$('#expert_profile').on('change', preview);

		function preview(e) {
			//선택한 그림의 File 객체를 취득
			//File객체 리스트에서 첫번째 File객체를 가져옵니다.
			var file = e.target.files[0];

			//file.type : 파일의 형식(MIME타입 - 예) text/html
			if (!file.type.match("image.*")) { //파일 타입이 image인지 확인합니다.
				alert('확장자는 이미지만 가능합니다.');
				return;
			}

			//파일을 읽기 위한 객체 생성
			var reader = new FileReader();

			//DataURL 형식으로 파일을 읽어옵니다.
			//읽어온 결과는 reader객체의 result 속성에 저장됩니다.
			reader.readAsDataURL(file);

			//읽기에 성공했을 때 실행되는 이벤트 핸들러
			reader.onload = function(e) {
				//result:읽기 결과가 저장됩니다.
				//reader.result 또는 e.target.result
				$('#profile').attr("src", e.target.result);
			}
		}
		
		
		/* 사업자등록증 처리*/
		$('#upfile1').on('change', previewOP);

		function previewOP(e) {
			//선택한 그림의 File 객체를 취득
			//File객체 리스트에서 첫번째 File객체를 가져옵니다.
			var file = e.target.files[0];

			//file.type : 파일의 형식(MIME타입 - 예) text/html
			if (!file.type.match("image.*")) { //파일 타입이 image인지 확인합니다.
				alert('확장자는 이미지만 가능합니다.');
				return;
			}

			//파일을 읽기 위한 객체 생성
			var reader = new FileReader();

			//DataURL 형식으로 파일을 읽어옵니다.
			//읽어온 결과는 reader객체의 result 속성에 저장됩니다.
			reader.readAsDataURL(file);

			//읽기에 성공했을 때 실행되는 이벤트 핸들러
			reader.onload = function(e) {
				//result:읽기 결과가 저장됩니다.
				//reader.result 또는 e.target.result
				$('#imgOP').attr("src", e.target.result);
			}
		}
		
		
		/* 자격증 처리*/
		$('#upfile2').on('change', previewLI);

		function previewLI(e) {
			//선택한 그림의 File 객체를 취득
			//File객체 리스트에서 첫번째 File객체를 가져옵니다.
			var file = e.target.files[0];

			//file.type : 파일의 형식(MIME타입 - 예) text/html
			if (!file.type.match("image.*")) { //파일 타입이 image인지 확인합니다.
				alert('확장자는 이미지만 가능합니다.');
				return;
			}

			//파일을 읽기 위한 객체 생성
			var reader = new FileReader();

			//DataURL 형식으로 파일을 읽어옵니다.
			//읽어온 결과는 reader객체의 result 속성에 저장됩니다.
			reader.readAsDataURL(file);

			//읽기에 성공했을 때 실행되는 이벤트 핸들러
			reader.onload = function(e) {
				//result:읽기 결과가 저장됩니다.
				//reader.result 또는 e.target.result
				$('#imgLI').attr("src", e.target.result);
			}
		}

});
