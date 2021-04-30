<%@ page contentType="text/xml;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/*
		XML(Extensible Markuo Language)
		- JSON과 더불어 ㅇ기종관의 데이터 전송을 위한 문서 포맷
		- 상용자가 직접 태그를 정의
		- JSON 보다 피싱 속도가 느리다는 단점
	*/

	//XML 생성
	String xml = "<members>";
	       xml += "<members>";
	       xml += "<uid>a101</uid>";
	       xml += "<name>김유신</name>";
	       xml += "<hp>010-1234-1111</hp>";
	       xml += "<pos>사원</pos";
	       xml += "</members>";
	       xml += "<members>";
	       xml += "<uid>a102</uid>";
	       xml += "<name>김춘추</name>";
	       xml += "<hp>010-1234-2222</hp>";
	       xml += "<pos>과장</pos";
	       xml += "</members>";
	       xml += "</members>";
	       
	// XML 출력
	out.print(xml);
%>
