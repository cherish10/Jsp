<%@page import="java.util.ArrayList"%>
<%@page import="sub1.MemberBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
//데이터베이스 처리 1~6 단계
	String host="jdbc:mysql://192.168.10.114:3306/lhj";
	String user="lhj";
	String pass="1234";
	
	//1단계 - JDBC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	
	//2단계 - 데이터베이스 접속
	Connection conn = DriverManager.getConnection(host,user,pass);
	
	//3단계 - SQL 실행 객체 생성
	Statement stmt = conn.createStatement();
	
	//4단계 - SQL 실행
	String sql = "SELECT * FROM `USER1`;";
	ResultSet rs = stmt.executeQuery(sql);
	
	//5단계 - 실행결과 처리(SELECT일 경우)
	
	List<MemberBean> ublist = new ArrayList<>();
	
	while(rs.next()){
		MemberBean ub = new MemberBean();
		
		//String uid = rs.getString(1);
		//String name = rs.getString(2);
		//String hp = rs.getString(3);
		//int age = rs.getInt(4);
	
		//ub.setUid(uid);
		//ub.setName(name);
		//ub.setHp(hp);
		//ub.setAge(age);
	
		// 이 작업으로 자주 사용됨.
		ub.setUid(rs.getString(1));
		ub.setName(rs.getString(2));
		ub.setHp(rs.getString(3));
		ub.setAge(rs.getInt(4));
		
		ublist.add(ub);
		
	}	
	// 6단계 - 데이터 베이스 종료
	rs.close();
	stmt.close();
	conn.close();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>7_2_JDBC_Select</title>
	<!-- 
		날짜 : 2021/03/25
		이름 :
		내용 : JSP JDBC select 실습	
	
	
	 -->
</head>
<body>
	<h3>2.JDBC Select 실습</h3>
	<a href=".7_1_JDBC_Insert.jsp">등록하기</a>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>휴대폰</th>
			<th>나이</th>
			<th>수정/삭제</th>				
		</tr>
		<%
		for(MemberBean ub : ublist) {
		%>
			<tr>
				<td><% ub.getUid();%></td>
				<td><%ub.getName();%></td>
				<td><%ub.getHp();%></td>
				<td><%ub.getAge();%></td>
				<td>
					<a href="#">수정</a>
					<a href="#">삭제</a>
				</td>
			</tr>
		<% } %>
	</table>

</body>
</html>