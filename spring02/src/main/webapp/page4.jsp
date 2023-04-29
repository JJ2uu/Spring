<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	if(session.getAttribute("view") == null) {
		out.print("아무도 방문하지 않았습니다.");
	} else {
		out.print(session.getAttribute("view"));
	}
	
%>
</head>
<body>
</body>
</html>