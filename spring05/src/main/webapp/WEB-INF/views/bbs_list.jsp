<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</style>
</head>
<body>
<h3>검색결과</h3>

<table>
	<tr>
		<th>no</th>
		<th>title</th>
		<th>content</th>
		<th>writer</th>
	</tr>
	<c:forEach items="${list}" var="bag">
	<tr class = "table_content">
		<td>${bag.no}</td>
		<td>
			<a href = "bbs_one?no= ${bag.no}">${bag.title}</a>
		</td>
		<td>${bag.content}</td>
		<td>${bag.writer}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>