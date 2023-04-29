<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("count", 0);
		session.setAttribute("user", "root");
	%>
	<hr>
	<a href = "sessionList.jsp">session속성 가져오기</a>
</body>
</html>