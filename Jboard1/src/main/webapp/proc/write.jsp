<%@page import="kr.co.jboard1.bean.ArticleBean"%>
<%@page import="kr.co.jboard1.dao.ArticleDao"%>
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
	
	
	ArticleBean article = new ArticleBean();
	article.setTitle(title);
	article.setContent(content);
	article.setUid(user.getUid());
	article.setRegip(regip);
		
	ArticleDao.getInstance().insertArticle(article);
	
	response.sendRedirect("/Jboard1/list.jsp");

%>