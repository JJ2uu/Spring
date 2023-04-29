<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	Cookie c1 = new Cookie("category", "운동");
	Cookie c2 = new Cookie("type", "축구");
	
	response.addCookie(c1);
	response.addCookie(c2);
%>
</head>
<body>
쿠키 심었음!
<a href = "page2.jsp" >쿠키 보러가기</a>
</body>
</html>