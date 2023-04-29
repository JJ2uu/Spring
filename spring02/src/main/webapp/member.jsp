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
	<div>
		<h3>로그인 화면입니다.</h3>
		<hr>
		<form action="login" method="get">
			id : <input name="id" value="root"><br>
			pw : <input name="pw" value="1234"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
	<div>
		<h3>회원가입 화면입니다.</h3>
		<hr>
		<form action="insert" method="get">
			id : <input name="id" value="apple"><br>
			pw : <input name="pw" value="1234"><br>
			name : <input name="name" value="park"><br>
			tel : <input name="tel" value="011"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
	<div>
		<h3>회원수정 화면입니다.</h3>
		<hr>
		<form action="update" method="get">
			id : <input name="id" value="apple"><br>
			tel : <input name="tel" value="011"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
	<div>
		<h3>회원탈퇴 화면입니다.</h3>
		<hr>
		<form action="delete" method="get">
			id : <input name="id" value="apple"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
	<div>
		<h3>회원검색 화면입니다.</h3>
		<hr>
		<form action="one" method="get">
			id : <input name="id" value="apple"><br>
			<button type="submit">서버로 전송</button>
		</form>
	</div>
	<a href = "member_list">모든 회원정보 가지고 오기</a>
</body>
</html>