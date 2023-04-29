<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		text-align: center;
	}
	table {
		margin-top: 3%;
		margin-left: auto;
		margin-right: auto;
		width: 60%;
		border-collapse: collapse;
		border-bottom: 1px solid #000;
	}
	th {
		padding: 10px;
		background: #24abff;
		color: #fff;
	}
	td {
		padding: 10px;
	}
	.table_content {
		border-bottom: 1px solid #d1d1d1;
	}
	img {
		width : 100px;
	}
	a {
		text-decoration: none;
		color: #000;
	}
	
	a:hover {
		color: #24abff;
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
</style>
</head>
<body>

<h3>검색결과</h3>

<table>
	<tr>
		<th>img</th>
		<th>title</th>
		<th>genre</th>
		<th>location</th>
		<th>director</th>
	</tr>
	<c:forEach items="${list2}" var="bag">
	<tr class = "table_content">
		<td><img src = "resources/img/${bag.img}"></td>
		<td><a href="movie_one?title=${bag.title}">${bag.title}</a></td>
		<td>${bag.genre}</td>
		<td>${bag.location}</td>
		<td>${bag.director}</td>
	</tr>
	</c:forEach>
</table>
<a href = "movie.jsp">
	<button>메인으로</button>
	</a>
</body>
</html>