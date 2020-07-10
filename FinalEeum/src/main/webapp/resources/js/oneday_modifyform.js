$(document).ready(function(){

	
   var check = 0;
   
   //등록 버튼 클릭할 때 이벤트 부분
   $("form").submit(function(){
	   
		if($.trim($("#oneday_title").val())==""){
	         alert("제목을 입력하세요");
	         return false;
	      }//if end
		
	      if($('#oneday_type').val() == ""){
	    	  alert("분류를 선택하세요");
		         $("#oneday_type").focus();
		         return false;
	      }
	      
	      if($.trim($('#one_line').val()) == ""){
	    	  alert("한 줄 소개를 입력하세요");
		         $("#one_line").focus();
		         return false;
	      }
	      
	      if($.trim($("#summernote").val())==""){
	         alert("내용을 입력하세요");
	         
	         return false;
	      }//if end
	      
	       if($("#rdate").val() == ""){
	            alert("일시를 입력하세요");
	            $("#rdate").focus();
	            return false;
	         } 
	      
	       if($('#one_seat').val() == ""){
	    	   alert("정원을 입력하세요");
	            $("#one_seat").focus();
	            return false;
	       }
	       
	       if($("#one_price").val() == ""){
	            alert("가격을 입력하세요");
	            $("#one_price").focus();
	            return false;
	         } 

      
      //한 번도 변경하지 않으면 $("#filevalue").text()의 파일명을 전송 (BOARD_ORIGINAL)
      if(check==0){
         value=$('#filevalue').text();
         alert('filevalue = '+value);
         html="<input type='text' value='"+value+"' name='check'>";
         $(this).append(html);
      }
      
   })//submit end
   
   show();
   function show(){
      //파일 이름이 있는 경우 remove 이미지를 보이게 하고 없는 경우 보이지 않게 함
      if($("#filevalue").text()==''){
         $(".remove").css('display', 'none');
      }else{
         $(".remove").css({'display':'inline-block',
                       'position':'relative'});   
      }//if-else end
   }//show end
   
   
   /*file은 값을 정해주지 않으면 value 가 없어서 input type="text" 라는 친구를 만들어서 span에 있는 값을 value에 넣어줍니다.*/
   $("#upfile").change(function(){
	   console.log("나와라,,제발");
      check ++;
      var inputfile = $(this).val().split("\\");
      $("#filevalue").text(inputfile[inputfile.length - 1]);
      show();
   });//change end
   
   //remove 이미지를 클릭하면 파일명을 ''로 변경하고 remove 이미지를 보이지 않게 함
   $(".remove").click(function(){
      $("#filevalue").text('');
      $(this).css('display', 'none');
   })
   
})//ready end