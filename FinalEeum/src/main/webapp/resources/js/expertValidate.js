$(document).ready(function() {
	   
	   var checkid = false;
      
	   $("#checkJumin").click(function(){
		   var input_jumin1 = $.trim($("#expert_jumin1").val());
		   var input_jumin2 = $.trim($("#expert_jumin2").val());
		   
		   if(input_jumin1 == "" || input_jumin2 == "") {
			   alert("주민등록번호를 입력하세요");
			   return false;
			   
		   } else {
			   $.ajax({
				   url : "user_jumincheck.net",
				   data : {"expert_jumin1" : input_jumin1, "expert_jumin2" : input_jumin2},
				   success : function(resp){
					   if (resp == -1) {
						   alert("이음에 가입이 가능합니다.");
						   checkjumin = true;
						   
					   } else {
						   alert("이미 이음에 가입하셨습니다.");
						   checkjumin = false;
					   }
				   }
			   }) 
		   }
	   });

      //주민번호 앞자리 
      $("#expert_jumin1").keyup(function(){
            if($('#expert_jumin1').val().length == 6) {	//6자리가 맞으면 
               pattern = /^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])$/;
                  
                  if(pattern.test($("#expert_jumin1").val())){	//주민번호 앞자리가 형식에 맞을 경우 
                     $("#expert_jumin2").focus();   //주민번호 뒷자리로 포커스 이동 
                     $("#message_jumin").empty();
                     
                  } else {
                     $("#message_jumin").css('color','red').html("주민등록번호 형식이 맞지 않습니다.");
                     $('#expert_jumin1').val("");
                     $('#expert_jumin1').focus();
                  }
                
             } else if (!$.isNumeric($("#expert_jumin1").val())) {	//숫자로만 이뤄지지 않으면 
            	   $("#message_jumin").css('color', 'red').html("숫자로만 입력하세요");
            	   $("#expert_jumin1").val("");
            	   $("#expert_jumin1").focus();
               }
            });
      
       //주민번호 뒷자리 
      $("#expert_jumin2").keyup(function() {
         if($("#expert_jumin2").val().length == 7) {
        	 
        	 if( ($("#expert_jumin2").val()).substr(0,1) == 2 || ($("#expert_jumin2").val()).substr(0,1) == 4 || 
        		 ($("#expert_jumin2").val()).substr(0,1) == 6 || ($("#expert_jumin2").val()).substr(0,1) == 8 ) {		//여자인 경우 
        		 
        		 var jumin1 = (($("#expert_jumin1").val()).substr(0,1))  * 2;
        		 var jumin2 = (($("#expert_jumin1").val()).substr(1,1))  * 3;
        		 var jumin3 = (($("#expert_jumin1").val()).substr(2,1)) * 4;
        		 var jumin4 = (($("#expert_jumin1").val()).substr(3,1)) * 5;
        		 var jumin5 = (($("#expert_jumin1").val()).substr(4,1)) * 6;
        		 var jumin6 = (($("#expert_jumin1").val()).substr(5,1)) * 7;
        		 
        		 var jumin7 = (($("#expert_jumin2").val()).substr(0,1)) * 8;
        		 var jumin8 = (($("#expert_jumin2").val()).substr(1,1)) * 9;
        		 var jumin9 = (($("#expert_jumin2").val()).substr(2,1)) * 2;
        		 var jumin10 = (($("#expert_jumin2").val()).substr(3,1)) * 3;
        		 var jumin11 = (($("#expert_jumin2").val()).substr(4,1)) * 4;
        		 var jumin12 = (($("#expert_jumin2").val()).substr(5,1)) * 5;
        		 
        		 var juminRest = (jumin1 + jumin2 + jumin3 + jumin4 + jumin5 + jumin6
        				 					+ jumin7 + jumin8 + jumin9 + jumin10 + jumin11 + jumin12) % 11;
        		 
        		 var juminRight = 11 - juminRest;
        		 
	        		 if( (($("#expert_jumin2").val()).substr(6,1)) == juminRight ) {
	        			 $("#message_jumin").empty();
	        			 
	        		 } else {
	        			 $("#message_jumin").css('color','red').html("올바른 주민등록번호가 아닙니다.");
	        			 $("#expert_jumin2").val("");
	        			 $("#expert_jumin2").focus();
	        		 }
        		 
        	 } else {
        		 alert("이음은 여성만 이용할 수 있습니다. 감사합니다.");
        		 $("#expert_jumin1").val("");
        		 $("#expert_jumin2").val("");
        	 }
        	 
        	 
         } else if (!$.isNumeric($("#expert_jumin2").val())) {	//숫자로만 이뤄지지 않으면 
      	   $("#message_jumin").css('color', 'red').html("숫자로만 입력하세요");
      	   $("#expert_jumin2").val("");
      	   $("#expert_jumin2").focus();
         }
                   
      });
      
      
      //아이디 확인
      $("#expert_id").keyup(function() {
    	  var pattern = /^\w{8,16}$/;
    	  var expert_id = $("#expert_id").val();
    	  
    	  if(!pattern.test(expert_id)) {
    		  $("#message_id").css("color","red").html("영대소문자, 숫자를 모두 포함하여 8~16자로 입력하세요");
    		  checkid = false;
    		  return;
    	  } else {
    		  $("#message_id").empty();
    	  }  
    	  
    		  $.ajax({
    			  url : "expert_idcheck.net",
    			  data : {"expert_id" : expert_id},
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
    	  
         if ($.trim($("#expert_jumin1").val()) == "") {
             alert("주민번호 앞자리를 입력 하세요");
             $("#expert_jumin1").focus();
             return false;
         }

         if ($.trim($("#expert_jumin1").val()).length != 6) {
            alert("주민번호 앞자리 6자리를 입력 하세요");
            $("#expert_jumin1").val("");
            $("#expert_jumin1").focus();
            return false;
         }
    	  
         if ($.trim($("#expert_jumin2").val()) == "") {
             alert("주민번호 뒷자리를 입력 하세요");
             $("#expert_jumin2").focus();
             return false;
         }

         if ($.trim($("#expert_jumin2").val()).length != 7) {
            alert("주민번호 뒷자리 6자리를 입력 하세요");
            $("#expert_jumin2").val("");
            $("#expert_jumin2").focus();
            return false;
         }
         
         if($.trim($("#expert_name").val()) == "") {
        	 alert("이름을 입력하세요");
        	 $("#expert_name").focus();
        	 return false;
         }
           
         if ($.trim($("#expert_id").val()) == "") {
            alert("ID를 입력하세요");
            $("#expert_id").focus();
            return false;
         }
         
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