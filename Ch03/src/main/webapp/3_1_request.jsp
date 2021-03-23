<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>3_1_Request</title>
	<!-- 
		
		날짜 :2021/03/23
		이름 :
		내용 :JSP request 내장객체 실습하기
		
		request 내장객체
		-Client의 요청 정보를 갖는 객체
		-Client의 전송 데이처(Parameter)를 수신하는 기능을 갖음
		

		Get 전송방식
		-기본데이처 전송 방식
		-서버 페이지나 데이처를 요청하는 전송방식
		-데이터(파라미처)주소에 노출
		
		Post 전송방식
		-서버 데이터를 전달하면서 처리를 요청하는 전송방식
		-데이터(파라미터) 요청하는 삽입되어 전송 (주소노출 X)
	
	 -->
	
	
</head>
<body>
	<h4>로그인</h4>
	<form action ="./proc/loginProc.jsp" method="post">
		<table border = "1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass" /></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="로그인" />
				</td>
			</tr>	
		</table>
	</form>
</body>
</html>