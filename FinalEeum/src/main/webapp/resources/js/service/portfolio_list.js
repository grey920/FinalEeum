$(function() {
console.log(expert_id);
$.ajax({
	type : 'POST',
	url : "Portfolio.Ajax",
	data : {"expert_id" : expert},
	dataType : "json",
	success : function(rdata) {
		
		
	}
	
	
	
});

})