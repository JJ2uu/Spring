<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 일기장</title>

<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<style>
	body {
		position: relative;
		font-family: 'Gowun Dodum', sans-serif;
		background: #f2f2f2;
	}
	.main {
		width: 100%;
		height: 100%;
		position: absolute;
		margin-top: 12%;
	}
	.header {
		text-align: center;
	}
	.content {
		text-align: center;
	}
	table {
		margin-left: auto;
		margin-right: auto;
	}
	input {
		width: 250px;
		height: 50px;
		margin: 5px;
		padding: 0;
		border-color: transparent;
		border-radius: 6px;
	}
	input:focus {
		outline: 2px solid #24abff;
		border-radius: 6px;
		outline-offset: 0;
		border-color: transparent;
	}
	button {
		width: 250px;
		height: 40px;
		margin: 5px;
		margin-bottom: 20px;
		color: #fff;
		background: #24abff;
		border-color: transparent;
		border-radius: 6px;
	}
	button:hover {
		color: #fff;
		background: #000;
		border-color: transparent;
		transition: 0.5s;
		border-radius: 6px;
	}
	a {
		text-decoration-line: none;
		margin: 10px;
		color: black;
	}
	a:hover {
		color: #24abff;
		transition: 0.5s;
	}
</style>

<script type="text/javascript" src ="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$("#loginButton").click(function() {
			$.ajax({
				url: "diary_login",
				data: {
					id: $('#id').val(),
					pw: $('#pw').val()
				},
				success: function(data) {
					$("#loginResult").html(data)
				},
				error: function(x) {
					$("#loginResult").html(x)
				}
			})
		})
	})
</script>

</head>
<body>
<div class = "main">
	<div class = "header">
		<p class = "imoji">&#128512;</p>
		<h2>나만의 일기장</h2>
		<hr width="50%">
	</div>
	<div class ="content">
	<form>
	<table>
		<tr>
		 	<td>
		 		<input type = "text" id = "id" class = "login" placeholder=" 아이디" onfocus="this.placeholder=''" onblur="this.placeholder='아이디'">
			</td>
		</tr>
		<tr>
			<td>
				<input type = "password" id = "pw" class = "login" placeholder=" 비밀번호" onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호'">
			</td>
		</tr>
		<tr>
			<td>
				<button id ="loginButton">Login</button>
			</td>
		</tr>
	</table>
	<div id = "loginResult"></div>
	</form>
		<div class = "login">
			<a href = "join.jsp">회원가입</a>
			|
			<a href = "pwSearch.jsp">비밀번호 찾기</a>
		</div>
	</div>
</div>
</body>
</html>