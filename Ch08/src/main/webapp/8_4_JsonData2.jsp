<%@ page contentType="text/xml;charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="True"%>
<%@page import="org.jdom2.Element"%>
<%@page import="org.jdom2.Document"%>
<%@page import="org.jdom2.output.Format"%>
<%@page import="org.jdom2.output.XMLOutputter"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sub1.MemberBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

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
	List<MemberBean> mbList = new ArrayList<>();
	
	while(rs.next()){
		MemberBean mb = new MemberBean();
				
		mb.setUid(rs.getString(1));
		mb.setName(rs.getString(2));
		mb.setHp(rs.getString(3));
		mb.setPos(rs.getString(4));
		mb.setDep(rs.getInt(5));
		mb.setRdate(rs.getString(6));
		
		mbList.add(mb);
	}
	//데이터베이스 종료
	rs.close();
	conn.close();
	stmt.close();
	//XML 데이터 생성
	Document doc = new Document();
	Element members = new Element("members");
	
	for (MemberBean mb : mbList){
		
		Element member  = new Element("member");
		Element uid     = new Element("uid");
		Element name    = new Element("name");
		Element hp      = new Element("hp");
		Element pos     = new Element("pos");
		Element dep     = new Element("dep");
		Element rdate   = new Element("rdata");
		
		uid.setText(mb.getUid());		
		name.setText(mb.getName());		
		hp.setText(mb.getHp());		
		pos.setText(mb.getPos());		
		dep.setText(""+mb.getDep());		
		rdate.setText(mb.getRdate());		
		
		member.addContent(uid);
		member.addContent(name);
		member.addContent(hp);
		member.addContent(pos);
		member.addContent(dep);
		member.addContent(rdate);
		
		members.addContent(member);
	}
	
	doc.setRootElement(members);
	
	//XML 출력
	XMLOutputter outPutter = new XMLOutputter(Format.getPrettyFormat());
	String xml = outPutter.outputString(doc);
	
	out.print(xml);
%>