<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 한 사람의 아이디는 <%= session.getAttribute("user") %><br>
현재 카운트는 <%= session.getAttribute("count") %>
</body>
</html>