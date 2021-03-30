/**
 * 
 */
var isUidEngOk = false;


$(function(){
	//정규표현식
	var regUid = /^[a-z0-9]{4,10}$/
	
	$('input[name=uid]').focusout(function(){
		
		var uid = $(this).val();
		
		if(regUid.test(uid) == true){
			isUidEngOk = true;
		}else{
			isUidEngOk = false;
		}
		
		
	});
	
	
});