<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>3_2_Response</title>
</head>
<body>
	<!-- 
		날짜 : 2021/03/23
		이름 :
		내용 : 
		
		response 내장객체
		-Client에서 Server로 요청한 처리 결과를 응답해주는 응답객체
		-Server에서 Client로 전달되는 객체
		
		redirect(response 객처의 기능)
		-Server에서 Client로 다시 요청(request)를 명렬하는 response의 기능
		-최종 요청에 대한 주소가 반영
		
		forward(pageContext 객체의 기능)
		-서버 시스체 내에서 페이지 요청을 처리하는 pageContext의 기능
		-최조 요청에 대한 주소가 반영
		
		
	 -->
	<h3>2.JSP Response 내장객체</h3>
	
	<a href="./proc/redirectProc.jsp">리디이렉트 페이지 요청</a>
	<a href="./proc/forwardProc.jsp">포워드 페이지 요청</a>
	
</body>
</html>