<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		text-align : center;
	}
	button {
		border-color: transparent;
		width : 200px;
		height: 50px;
		display: block;
		margin: 5px auto 0 auto;
		border-radius: 10px;
	}
	a {
		text-decoration: none;
		color : #000;
	}
</style>
</head>
<body>
	<p>공동구매 물품</p>
	<h1>2023 메르세데스-EQ EQS SUV</h1>
	<hr>
	<img src = "resources/img/car.jpg" width = "600">
	
	<%
		if (session.getAttribute("id") != null) {
	%>
	<a href = "bbb">
		<button>공동구매 참여</button>
	</a>
	<% } else { %>
	<a href = "login.jsp">
		<button>로그인하기</button>
	</a>
	<% } %>
	
</body>
</html>