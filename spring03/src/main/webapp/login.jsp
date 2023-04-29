<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	button {
		border-color: transparent;
		width : 200px;
		height: 50px;
		display: block;
		margin: 5px;
		border-radius: 10px;
	}
	a {
		text-decoration: none;
		color : #000;
	}
</style>
</head>
<body>
	<% if(session.getAttribute("id") == null ) { %>
	<div>
		<h3>로그인 화면입니다.</h3>
		<hr>
		<form action="login" method="get">
			id : <input name="id" value="root"><br>
			pw : <input name="pw" value="1234"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
		<a href = "news.jsp">
			<button>뉴스게시판</button>
		</a>
		<a href = "cafe.jsp">
			<button>카페게시판</button>
		</a>
	<% } else { %>
		<h3>${id}님이 로그인 중입니다.</h3>
		<a href = "bbs.jsp">
			<button>게시판</button>
		</a>
		<a href = "news.jsp">
			<button>뉴스</button>
		</a>
		<a href = "cafe.jsp">
			<button>카페</button>
		</a>
	<% } %>
</body>
</html>