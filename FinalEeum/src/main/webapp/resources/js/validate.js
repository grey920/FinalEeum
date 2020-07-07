$(document).ready(function() {
	   
	   var checkid = false;
	   var checknick = false;
	   
	   //프로필사진 미리보기 
	   $("input[type=file]").on('change',preview);
	   
	   function preview(e) {
		   var file = e.target.files[0];
		   
		   if(!file.type.match('image.*')) {
			   alert("프로필 사진은 이미지 파일만 가능합니다.");
			   return;
		   }
		   
		   var reader = new FileReader();
		   reader.readAsDataURL(file);
		   reader.onload = function(e) {
			   $(".profile_image img").attr("src", e.target.result);
		   }
	   }
      
      //우편검색 버튼 클릭
      $("#postcode").click(function(){
            Postcode();
      });
      

      //주민번호 앞자리 
      $("#user_jumin1").keyup(function(){
            if($('#user_jumin1').val().length == 6) {	//6자리가 맞으면 
               pattern = /^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])$/;
                  
                  if(pattern.test($("#user_jumin1").val())){	//주민번호 앞자리가 형식에 맞을 경우 
                     $("#user_jumin2").focus();   //주민번호 뒷자리로 포커스 이동 
                     $("#message_jumin").empty();
                     
                  } else {
                     $("#message_jumin").css('color','red').html("주민등록번호 형식이 맞지 않습니다.");
                     $('#user_jumin1').val("");
                     $('#user_jumin1').focus();
                  }
                
             } else if (!$.isNumeric($("#user_jumin1").val())) {	//숫자로만 이뤄지지 않으면 
            	   $("#message_jumin").css('color', 'red').html("숫자로만 입력하세요");
            	   $("#user_jumin1").val("");
            	   $("#user_jumin1").focus();
               }
            });
      
       //주민번호 뒷자리 
      $("#user_jumin2").keyup(function(){
         if($("#user_jumin2").val().length == 7) {
        	 
        	 if( ($("#user_jumin2").val()).substr(0,1) == 2 || ($("#user_jumin2").val()).substr(0,1) == 4 || 
        		 ($("#user_jumin2").val()).substr(0,1) == 6 || ($("#user_jumin2").val()).substr(0,1) == 8 ) {		//여자인 경우 
        		 
        		 var jumin1 = (($("#user_jumin1").val()).substr(0,1))  * 2;
        		 var jumin2 = (($("#user_jumin1").val()).substr(1,1))  * 3;
        		 var jumin3 = (($("#user_jumin1").val()).substr(2,1)) * 4;
        		 var jumin4 = (($("#user_jumin1").val()).substr(3,1)) * 5;
        		 var jumin5 = (($("#user_jumin1").val()).substr(4,1)) * 6;
        		 var jumin6 = (($("#user_jumin1").val()).substr(5,1)) * 7;
        		 
        		 var jumin7 = (($("#user_jumin2").val()).substr(0,1)) * 8;
        		 var jumin8 = (($("#user_jumin2").val()).substr(1,1)) * 9;
        		 var jumin9 = (($("#user_jumin2").val()).substr(2,1)) * 2;
        		 var jumin10 = (($("#user_jumin2").val()).substr(3,1)) * 3;
        		 var jumin11 = (($("#user_jumin2").val()).substr(4,1)) * 4;
        		 var jumin12 = (($("#user_jumin2").val()).substr(5,1)) * 5;
        		 
        		 var juminRest = (jumin1 + jumin2 + jumin3 + jumin4 + jumin5 + jumin6
        				 + jumin7 + jumin8 + jumin9 + jumin10 + jumin11 + jumin12) % 11;
        		 
        		 var juminRight = 11 - juminRest;
        		 
	        		 if( (($("#user_jumin2").val()).substr(6,1)) == juminRight ) {
	        			 $("#message_jumin").empty();
	        			 
	        		 } else {
	        			 $("#message_jumin").css('color','red').html("올바른 주민등록번호가 아닙니다.");
	        			 $("#user_jumin2").val("");
	        			 $("#user_jumin2").focus();
	        		 }
        		 
        	 } else {
        		 alert("이음은 여성만 이용할 수 있습니다. 감사합니다.");
        		 $("#user_jumin1").val("");
        		 $("#user_jumin2").val("");
        	 }
        	 
         } else if (!$.isNumeric($("#user_jumin2").val())) {	//숫자로만 이뤄지지 않으면 
      	   $("#message_jumin").css('color', 'red').html("숫자로만 입력하세요");
      	   $("#user_jumin2").val("");
      	   $("#user_jumin2").focus();
         }
      });
      
      //닉네임 확인
      $("#user_nick").keyup(function(){
    	  var pattern = /^[가-힣a-zA-Z0-9]{2,8}$/;
    	  var user_nick = $("#user_nick").val();
    	  if(!pattern.test(user_nick)) {
    		  $("#message_nick").css("color", "red").html("한글, 영문, 숫자를 포함하여 2~8글자로 입력하세요");
    		  checknick = false;
    		  return;
    	  } else {
    		  $("#message_nick").empty();
    	  }
    	  
    	  $.ajax({
    		  url : "nickcheck.net",
    		  data : {"user_nick" : user_nick},
    		  success : function(resp){
    			  if (resp == -1) {
    				  $("#message_nick").css("color", "blue").html("사용가능한 닉네임입니다.");
    				  checknick = true;
    				  
    			  } else {
    				  $("#message_nick").css("color", "red").html("사용중인 닉네임입니다.");
    				  checknick = false;
    			  }
    		  }
    	  })
      });
      
      
      //아이디 확인
      $("#user_id").keyup(function() {
    	  var pattern = /^\w{8,16}$/;
    	  var user_id = $("#user_id").val();
    	  
    	  if(!pattern.test(user_id)) {
    		  $("#message_id").css("color","red").html("영대소문자, 숫자를 모두 포함하여 8~16자로 입력하세요");
    		  checkid = false;
    		  return;
    	  } else {
    		  $("#message_id").empty();
    	  }  
    	  
    		  $.ajax({
    			  url : "idcheck.net",
    			  data : {"user_id" : user_id},
    			  success : function(resp) {
    				  if (resp == -1) {
    					  console.log("&");
    					  $("#message_id").css("color", "blue").html("사용가능한 아이디입니다.");
    					  checkid = true;
    					  
    				  } else {
    					  $("#message_id").css("color", "red").html("사용중인 아이디입니다.");
    					  checkid = false;
    				  }
    			  }
    		  });
      });
      
      
    //비밀번호 유효성 검사 
      $("#user_pass").keyup(function(){		
    	  var pw = $("#user_pass").val();
    	  var number = pw.search(/[0-9]/g);
    	  var english = pw.search(/[a-z]/ig);
    	  var special = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    	  
    	  if(pw.length < 8) {
    		  $("#message_pass1").css("color", "red").html("영문 대문자 또는 소문자, 숫자, 특수문자를 모두 포함하여 8~14자로 입력하세요");
    		  return false;
    		  
    	  } else if (pw.length > 14) {
    		  $("#message_pass1").css("color", "red").html("8~14자 내로 입력하세요");
    		  return false;

    	  } else if (pw.search(/\s/) != -1) {
    		  $("#message_pass1").css("color", "red").html("공백없이 입력하세요");
    		  return false;
    		  
    	  } else if (number < 0 || english < 0 || special < 0) {
    		  $("#message_pass1").css("color","red").html("영문 대문자 또는 소문자, 숫자, 특수문자를 모두 포함하세요");
    		  return false;
    		  
    	  } else {
    		  $("#message_pass1").empty();
    	  }
      });
      
      //비밀번호 확인 
      $("#password_check").keyup(function() {
    	  if($("#user_pass").val() != $("#password_check").val()) {
    		  $("#message_pass2").css("color", "red").html("비밀번호가 일치하지 않습니다.");
    	  } else {
    		  $("#message_pass2").css("color", "blue").html("비밀번호가 일치합니다.");
    	  }
      });
      
      //비밀번호 1체크시 
      $("#user_pass").click(function(){
    	  $("#user_pass").val("");
    	  $("#password_check").val("");
    	  $("#message_pass2").empty();
      })
      
      $("#user_phone1").keyup(function() {
    	  if($("#user_phone1").val().length == 3 || !$.isNumeric($("#user_phone1").val())) {
    		  pattern = /^[0][1][0]$/;
    		  
    		  if(!pattern.test($("#user_phone1").val())) {
    			  $("#message_phone").css('color', 'red').html("휴대폰 번호가 형식에 맞지 않습니다.");
    			  $("#user_phone1").val("");
    			  $("#user_phone1").focus();
    		  } else {
    			  $("#message_phone").empty();
    		  }
    	  }
      });
      
      $("#user_phone2").keyup(function(){
    	  if($("#user_phone2").val().length == 4 || !$.isNumeric($("#user_phone2").val())) {
    		  pattern = /^[0-9]{4}$/;
    		  
    		  if(!pattern.test($("#user_phone2").val())){
    			  $("#message_phone").css('color', 'red').html("휴대폰 번호가 형식에 맞지 않습니다.");
    			  $("#user_phone2").val("");
    			  $("#user_phone2").focus();
    		  } else {
    			  $("#message_phone").empty();
    			  $("#user_phone3").focus();
    		  }
    	  }
      });
      
      $("#user_phone3").keyup(function(){
    	  if($("#user_phone3").val().length == 4 || !$.isNumeric($("#user_phone3").val())) {
    		  pattern = /^[0-9]{4}$/;
    		  
    		  if(!pattern.test($("#user_phone3").val())) {
    			  $("#message_phone").css('color', 'red').html("휴대폰 번호가 형식에 맞지 않습니다.");
    			  $("#user_phone3").val("");
    			  $("#user_phone3").focus();
    		  } else {
    			  $("#message_phone").empty();
    		  }
    	  }
      });
      
      //회원가입 버튼 클릭할 때 이벤트 처리 부분 (공백제거) 
      $("form").submit(function() {
    	  
         if ($.trim($("#user_jumin1").val()) == "") {
             alert("주민번호 앞자리를 입력 하세요");
             $("#user_jumin1").focus();
             return false;
         }

         if ($.trim($("#user_jumin1").val()).length != 6) {
            alert("주민번호 앞자리 6자리를 입력 하세요");
            $("#user_jumin1").val("");
            $("#user_jumin1").focus();
            return false;
         }
    	  
         if ($.trim($("#user_jumin2").val()) == "") {
             alert("주민번호 뒷자리를 입력 하세요");
             $("#user_jumin2").focus();
             return false;
         }

         if ($.trim($("#user_jumin2").val()).length != 7) {
            alert("주민번호 뒷자리 6자리를 입력 하세요");
            $("#user_jumin2").val("");
            $("#user_jumin2").focus();
            return false;
         }
         
         if($.trim($("#user_name").val()) == "") {
        	 alert("이름을 입력하세요");
        	 $("#user_name").focus();
        	 return false;
         }
         
         if($.trim($("#user_nick").val()) == "") {
        	 alert("닉네임(별명)을 입력하세요");
        	 $("#user_nick").focus();
        	 return false;
         }
           
         if ($.trim($("#user_id").val()) == "") {
            alert("ID를 입력하세요");
            $("#user_id").focus();
            return false;
         }
         
         if ($.trim($("#user_pass").val()) == "") {
            alert("비밀번호를 입력하세요");
            $("#user_pass").focus();
            return false;
         }
         
         if ($.trim($("#password_check").val()) == "") {
        	 alert("비밀번호를 한 번 더 입력하세요");
        	 $("#password_check").focus();
        	 return false;
         }

         if ($.trim($("#user_addr1").val()) == "") {
            alert("우편번호를 입력하세요");
            $('#user_addr1').focus();
            return false;
         }

         if (!$.isNumeric($("#user_addr1").val())) {
            alert("숫자만 입력 가능합니다");
            $("#user_addr1").val("");
            $("#user_addr1").focus();
            return false;
         }

         if ($.trim($("#user_addr2").val()) == "") {
            alert("주소를 입력하세요");
            $("#user_addr2").focus();
            return false;
         }
         
        if($.trim($("#user_addr3")) == ""){
        	alert("상세 주소를 입력하세요");
        	$("#user_addr3").focus();
        	return false;
        }
         
        if($.trim($("user_phone1")) == "" || $.trim($("user_phone2")) == "" || $.trim($("user_phone3")) == "") {
        	alert("휴대폰 번호를 입력하세요");
        	
        	if($.trim($("user_phone1")) == "") {
        		$("#user_phone1").focus();
        		return false;
        		
        	}  else if($.trim($("user_phone2")) == "") {
        		$("#user_phone2").focus();
        		return false;
        		
        	} else {
        		$("#user_phone3").focus();
        		return false;
        	}
        }
        
        if ($.trim($("#user_email1").val()) == "") {
           alert("E-Mail을 입력하세요");
           $("#user_email1").focus();
           return false;
        }

        
        if ($.trim($("#user_email2").val()) == "") {
           alert("도메인 주소를 선택하세요");
           $("#user_email2").focus();
           return false;
        }

      }); //submit() end
      
       function Postcode() {
           new daum.Postcode({
               oncomplete: function(data) {
                   // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                   // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                   // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                   var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                   var extraRoadAddr = ''; // 도로명 조합형 주소 변수
    
                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                       extraRoadAddr += data.bname;
                   }
                   // 건물명이 있고, 공동주택일 경우 추가한다.
                   if(data.buildingName !== '' && data.apartment === 'Y'){
                      extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                   }
                   // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                   if(extraRoadAddr !== ''){
                       extraRoadAddr = ' (' + extraRoadAddr + ')';
                   }
                   // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                   if(fullRoadAddr !== ''){
                       fullRoadAddr += extraRoadAddr;
                   }
                   
                   
                   // 우편번호와 주소 정보를 해당 필드에 넣는다.
                   $('#post').val(data.zonecode); //5자리 새우편번호 사용
                   $('#user_addr1').val(fullRoadAddr); //주소
               }
           }).open();
       }
      
   }); //ready() end