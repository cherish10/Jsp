<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>7_1_JDBC_Insert</title>
	<!-- 
		날짜 : 2021/03/25
		이름 :
		내용 : JSP JDBC insert 실습	
	
	
	 -->
</head>
<body>
	<h3>1.JDBC Insert</h3>
	
	<form action="./Proc/insertProc.jsp" method="get">
		<table border ="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>hp</td>
				<td><input type="text" name="hp"></td>
			</tr>
			<tr>
				<td>age</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="등록하기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>