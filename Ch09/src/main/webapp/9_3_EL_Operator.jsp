<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>9_3_El_Operator</title>
</head>
<body>
	<h4>3표현언어 연산자</h4>
	
	<%
		String str1 = null;
		String str2 = "";
		String str3 = "Hello";
		
		int num1 = 1;
		int num2 = 2;
		
		//
		request.setAttribute("str1", str1);
		request.setAttribute("str2", str2);
		request.setAttribute("str3", str3);
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
	%>
	<p>
		num1 + num2 = ${num1 + num2}</br>
		num1 - num2 = ${num1 - num2}</br>
		num1 * num2 = ${num1 * num2}</br>
		num1 / num2 = ${num1 / num2}</br></br>
		
		num1 > num2 = ${num1 > num2}</br>
		num1 < num2 = ${num1 < num2}</br>
		num1 >= num2 = ${num1 >= num2}</br>
		num1 <= num2 = ${num1 <= num2}</br>
		num1 == num2 = ${num1 == num2}</br>
		num1 != num2 = ${num1 != num2}</br></br>
		
		num1 gt num2 = ${num1 gt num2}</br>
		num1 lt num2 = ${num1 lt num2}</br>
		num1 ge num2 = ${num1 ge num2}</br>
		num1 le num2 = ${num1 le num2}</br>
		num1 eq num2 = ${num1 eq num2}</br>
		num1 ne num2 = ${num1 ne num2}</br>
		
		empty str1 = ${empty str1}</br>
		empty str2 = ${empty str2}</br>
		str3 eq "Hello" = ${str3 eq "Hello"}</br>
		str3 eq "Hi" = ${str3 eq "Hi"}</br></br>
	</p>
</body>
</html>