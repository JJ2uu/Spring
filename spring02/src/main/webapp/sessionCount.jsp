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
		session.setAttribute("count", 100);
	%>
	
	현재 시작 카운트 : <%= session.getAttribute("count") %> = ${count}
	<hr>
	<a href = "sessionCountList.jsp">세션 속성 가져오기</a>

</body>
</html>