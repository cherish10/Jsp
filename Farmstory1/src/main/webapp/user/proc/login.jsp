<%@page import="kr.co.Farmstory1.config.Sql"%>
<%@page import="kr.co.Farmstory1.bean.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.Farmstory1.config.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");

	//1.2
	Connection conn = DBConfig.getInstance().getConnection();

	//3
	PreparedStatement psmt = conn.prepareStatement(Sql.SELECT_USER);
	psmt.setString(1, uid);
	psmt.setString(2, pass);
	
	//4
	ResultSet rs = psmt.executeQuery();
	
	//5
	UserBean ub = null;
	
	if(rs.next()){
		ub = new UserBean();
		
		ub.setUid(rs.getString(1));
		ub.setPass(rs.getString(2));
		ub.setName(rs.getString(3));
		ub.setNick(rs.getString(4));
		ub.setEmail(rs.getString(5));
		ub.setHp(rs.getString(6));
		ub.setGrade(rs.getInt(7));
		ub.setZip(rs.getString(8));
		ub.setAddr1(rs.getString(9));
		ub.setAddr2(rs.getString(10));
		ub.setRegip(rs.getString(11));
		ub.setRdate(rs.getString(12));
	}
	//6
	rs.close();
	psmt.close();
	conn.close();
	
	if(ub != null){
		// 회원이 맞을 경우
		session.setAttribute("suser", ub);
		response.sendRedirect("/Farmstory1");
	}else{
		// 회원이 아닐 경우
		response.sendRedirect("/Farmstory1/user/login.jsp?result=0");
	}
	
%>