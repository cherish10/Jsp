<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sub1.MemberBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//데이터베이스 처리 1~6단계
	String host = "jdbc:mysql://192.168.10.114:3306/lhj";
	String user = "lhj";
	String pass = "1234";
	
	//1단계 JDBC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	//데이터베이스 접속
	Connection conn = DriverManager.getConnection(host, user, pass);
	//SQL 실행객체 생성
	Statement stmt = conn.createStatement();
	//SQL 샐행
	String sql = "SELECT * FROM `MEMBER`;";
	ResultSet rs = stmt.executeQuery(sql);
	//결과셋 처리 (Select 일 경우)
	List<MemberBean> members = new ArrayList<>();
	
	while(rs.next()){
		MemberBean mb = new MemberBean();
				
		mb.setUid(rs.getString(1));
		mb.setName(rs.getString(2));
		mb.setHp(rs.getString(3));
		mb.setPos(rs.getString(4));
		mb.setDep(rs.getInt(5));
		mb.setRdate(rs.getString(6));
		
		members.add(mb);
	}
	//데이터베이스 종료
	rs.close();
	conn.close();
	stmt.close();
	//JSON 데이터 생성
	Gson gson = new Gson();
	String json = gson.toJson(members);
	//JSon 출력
	out.print(json);

%>