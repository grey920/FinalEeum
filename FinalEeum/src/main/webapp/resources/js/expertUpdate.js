$(document).ready(function() {


 

      

    //비밀번호 유효성 검사 
      $("#expert_pass").keyup(function(){		
    	  var pw = $("#expert_pass").val();
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
    	  if($("#expert_pass").val() != $("#password_check").val()) {
    		  $("#message_pass2").css("color", "red").html("비밀번호가 일치하지 않습니다.");
    	  } else {
    		  $("#message_pass2").css("color", "blue").html("비밀번호가 일치합니다.");
    	  }
      });
      
      //비밀번호 1체크시 
      $("#expert_pass").click(function(){
    	  $("#expert_pass").val("");
    	  $("#password_check").val("");
    	  $("#message_pass2").empty();
      })
     
      
      $("#expert_phone2").keyup(function(){
    	  if($("#expert_phone2").val().length == 4 || !$.isNumeric($("#expert_phone2").val())) {
    		  pattern = /^[0-9]{4}$/;
    		  
    		  if(!pattern.test($("#expert_phone2").val())){
    			  $("#message_phone").css('color', 'red').html("휴대폰 번호가 형식에 맞지 않습니다.");
    			  $("#expert_phone2").val("");
    			  $("#expert_phone2").focus();
    		  } else {
    			  $("#message_phone").empty();
    			  $("#expert_phone3").focus();
    		  }
    	  }
      });
      
      $("#expert_phone3").keyup(function(){
    	  if($("#expert_phone3").val().length == 4 || !$.isNumeric($("#expert_phone3").val())) {
    		  pattern = /^[0-9]{4}$/;
    		  
    		  if(!pattern.test($("#expert_phone3").val())) {
    			  $("#message_phone").css('color', 'red').html("휴대폰 번호가 형식에 맞지 않습니다.");
    			  $("#expert_phone3").val("");
    			  $("#expert_phone3").focus();
    		  } else {
    			  $("#message_phone").empty();
    		  }
    	  }
      });
      
      //회원가입 버튼 클릭할 때 이벤트 처리 부분 (공백제거) 
      $("form").submit(function() {
           
         if ($.trim($("#expert_pass").val()) == "") {
            alert("비밀번호를 입력하세요");
            $("#expert_pass").focus();
            return false;
         }
         
         if ($.trim($("#password_check").val()) == "") {
        	 alert("비밀번호를 한 번 더 입력하세요");
        	 $("#password_check").focus();
        	 return false;
         }
         
        if($.trim($("expert_phone1")) == "" || $.trim($("expert_phone2")) == "" || $.trim($("expert_phone3")) == "") {
        	alert("휴대폰 번호를 입력하세요");
        	
        	if($.trim($("expert_phone1")) == "") {
        		$("#expert_phone1").focus();
        		return false;
        		
        	}  else if($.trim($("expert_phone2")) == "") {
        		$("#expert_phone2").focus();
        		return false;
        		
        	} else {
        		$("#expert_phone3").focus();
        		return false;
        	}
        }
        
        if ($.trim($("#expert_email1").val()) == "") {
           alert("E-Mail을 입력하세요");
           $("#expert_email1").focus();
           return false;
        }

        
        if ($.trim($("#expert_email2").val()) == "") {
           alert("도메인 주소를 선택하세요");
           $("#expert_email2").focus();
           return false;
        }

      }); //submit() end
      
   }); //ready() end