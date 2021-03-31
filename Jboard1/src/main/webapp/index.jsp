<%@page import="kr.co.jboard1.bean.UserBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserBean user = (UserBean)session.getAttribute("suser");

	if(user != null){
		//로그인 상태이면
		pageContext.forward("./list.jsp");
	}else{
		//로그인 상태아니면
		pageContext.forward("./user/login.jsp");
	}
	
	
	
%>