$(document).ready(function() {
	/*신청 가능 시간 로직*/
	var Html = [];
	var value="";
	//시간 삽입하기
	for(var i=0; i<24; i++){
		if(i>9){
			value=i;
		}else{
			value="0"+i;
		}
		Html[i] = "<option value=" + value +">"+value+" 시</option>";
	}
	$('#starthour').append(Html.join("")); // 셀렉트 박스 안에 다 넣어버리기
	$('#endhour').append(Html.join(""));

});




