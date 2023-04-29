<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		margin-bottom: 30px;
	}
</style>
</head>
<body>
<% if(session.getAttribute("id") != null){%>
	<div>
		<h3>게시글 작성</h3>
		<hr>
		<form action="insert2.multi" method="get">
			title : <input name="title"><br>
			content : <input name="content"><br>
			writer : <input name="writer" value ="${id}"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
	<div>
		<h3>게시글 수정</h3>
		<hr>
		<form action="update2.multi" method="get">
			title : <input name="title"><br>
			writer : <input name="writer"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
	<div>
		<h3>게시글 삭제</h3>
		<hr>
		<form action="delete2.multi" method="get">
			writer : <input name="writer"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
<% } else {%>
	<a href ="login.jsp">
		<button>로그인 하러 가기</button>
	</a>
<% } %>
	<div>
		<h3>게시글 검색</h3>
		<hr>
		<form action="bbs_one" method="get">
			no : <input name="no"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
	<a href = "bbs_list">게시글 전체 목록</a>
	<hr>
</body>
</html>