<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		width: 300px;
	}

	.t_title {
		width: 30%;
		border-right: 1px solid #d1d1d1;
	}
	
	.t_content {
		text-align: left;
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

<script type="text/javascript">
	function back() {
		history.back();
	}
</script>
</head>
<body>
	<table>
		<tr>
			<th colspan="2">${bag.title}</th>
		</tr>
		<tr class = "table_content">
			<td colspan="2"><img src = "resources/img/${bag.img}"></td>
		</tr>
		<tr class = "table_content content">
			<td class ="t_title">장르</td>
			<td class ="t_content">${bag.genre}</td>
		</tr>
		<tr class = "table_content content">
			<td class ="t_title">영화관</td>	
			<td class ="t_content">${bag.location}</td>
		</tr>
		<tr class = "content">
			<td class ="t_title">감독</td>
			<td class ="t_content">${bag.director}</td>
		</tr>
	</table>
	<button onclick="back()">이전페이지로</button>

</body>
</html>