/**
 * 아이디, 별명, 휴대폰, 이메일 중복체크 
 */
 
var isUidOk = false;
var isUidEngOl = false;
var isPasswordOk = false;
var isNameOke = false;
		 
 $(function(){
 	// 아이디 중복체크 아이디&&영문 소문자 여부 확인
	var regUid = /^[a-z]+[a-z0-9]{3,10}$/;
 	
 	$('input[name=uid]').focusout(function(){
 		var uid = $(this).val();
 		var jsonData = {'uid': uid};
 		
 		$.ajax({
 			url: '/Jboard1/user/proc/checkUid.jsp',
 			type: 'get',
 			data: jsonData,
 			dataType: 'json',
 			success: function(data){
 				
 				if(data.result == 0){
 					isUidOk = true;
 					$('.resultId').css('color', 'green').text('사용 가능한 아이디 입니다.');
 					
 					if(regUid.test(uid) == true){
 						isUidEngOk = true;
 						
 					}else{
 						isUidEngOk = false;
 						$('.resultId').css('color', 'red').text('아이디 영문 소문자 숫자 조합 3-10자가 아닙니다.');
 					}
 					
 				}else{
 					isUidOk = false;
 					$('.resultId').css('color', 'red').text('이미 사용중인 아이디 입니다.');
 				}
 			}
 		});
 		
 	});
 	
 	
 	
 	
 	// 비밀번호 일치여부
 	$('input[name=pass2]').focusout(function(){
 		var pass1 = $('input[name=pass1]').val();
		var pass2 = $('input[name=pass2]').val();
	 	
		if(pass1 == pass2){
			isPasswordOk = true;
			$('.resultPass').css('color', 'green').text('비밀번호가 일치합니다.');
		}else{
			isPasswordOk = false;
			$('.resultPass').css('color', 'red').text('비밀번호가 일치하지 않습니다.');
		}
 		
 	});
 	
 	// 이름 한글여부 확인
 	var regName =/^[ㄱ-힣]{2,10}$/; //뒤에 길이 입력할때 뛰어쓰기 하면 안됨.
 	
 	$('input[name=name]').focusout(function(){
 		
 		
 		var name = $(this).val();
 		
 		if(regName.test(name) == true){
 			isNameOk = true;
 			$('.resultName').text('');
 			
 		}else{
 			isNameOk = false;
 			$('.resultName').css('color', 'red').text('이름은 한글 2-10자까지 입력하십시오.');
 		}
 	});
 	
 	// 별명 중복체크
 	
 	// 이메일 중복체크
 	
 	// 휴대폰 중복체크
 	
 	
 });