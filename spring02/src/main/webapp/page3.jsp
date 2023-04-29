<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	session.setAttribute("view", 100);
	// 세션 값은 아무 타입이나 가능
	// object로 자동형변환(업캐스팅)이 이루어짐
%>
</head>
<body>
세션심었따
<a href = "page4.jsp">세션 보러가자</a>
</body>
</html>