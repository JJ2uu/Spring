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
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies) {
			out.print(c.getName() + " " + c.getValue() + "<br>");
		}
	%>
<hr>
쿠키의 개수 : <%= cookies.length %>
<hr>
<%
		for(Cookie c : cookies) {
			if(!c.getName().equals("JSESSIONID")){ // jsessionid만 빼고(?)
				out.print(c.getName() + ": " + c.getValue() + "<br>");
			}
		}
	%>
</body>
</html>