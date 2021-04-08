<%@page import="kr.co.farmstory1.bean.UserBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.farmstory1.config.Sql"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.farmstory1.config.DBConfig"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String group   = request.getParameter("group");
	String cate    = request.getParameter("cate");
	String title   = request.getParameter("title");
	String content = request.getParameter("content");
	String regip   = request.getRemoteAddr();
	
	
	UserBean ub = (UserBean) session.getAttribute("suser");
	String uid = ub.getUid();
	
	// 1,2
	Connection conn = DBConfig.getInstance().getConnection();
	
	// 3
	PreparedStatement psmt = conn.prepareStatement(Sql.INSERT_ARTICLE);
	psmt.setString(1, cate);
	psmt.setString(2, title);
	psmt.setString(3, content);
	psmt.setString(4, uid);
	psmt.setString(5, regip);
	
	// 4
	psmt.executeUpdate();
	
	// 5
	// 6
	psmt.close();
	conn.close();
	
	// 리다이렉트
	response.sendRedirect("/Farmstory1/board/list.jsp?group="+group+"&cate="+cate);
%>