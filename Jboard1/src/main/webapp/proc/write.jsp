<%@page import="kr.co.jboard1.bean.UserBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.jboard1.config.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String regip = request.getRemoteAddr();
	
	UserBean user = (UserBean)session.getAttribute("suser");
	
	Connection conn = DBConfig.getInstance().getConnection();
	
	String sql = "INSERT INTO `JBOARD_ARTICLE` SET ";
		   sql += "`title`=?,";
		   sql += "`content`=?,";
		   sql += "`uid`=?,";
		   sql += "`regip`=?,";
		   sql += "`rdate`=NOW();";
		   
   PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, title);
	psmt.setString(2, content);
	psmt.setString(3, user.getUid());
	psmt.setString(4, regip);
	
	psmt.executeUpdate();

	psmt.close();
	conn.close();
	
	response.sendRedirect("/Jboard1/list.jsp");

%>