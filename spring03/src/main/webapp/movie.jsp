<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src = "resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">

	$(function() {
		$("#b2").click(function() {
			$.ajax({
				url: "movie",
				data: {
					title: $('#title').val(),
					price: $('#price').val(),
					count: $('#count').val()
				},
				success: function(x) {
					$("#result").append(x + "<br>")
				},
				error: function() {
					alert("연결 실패")
				}
			})
		})
		
		$('#b3').click(function() {
			$.ajax({
				url : "fruit",
				success : function(x) {
					/* alert('fruit요청 성공!' )
					alert(x) */
					$('#result').append(x + "<br>")
				},
				error : function() {
					alert('computer요청 실패!')
				} //error
			}) //ajax
		})//b3
		
		$("#b4").click(function() {
			$.ajax({
				url : "tour",
				success : function(x) {
					$('#result').append(x + "<br>")
				}
			})
		})
	})

</script>
</head>
<body>
<table>
	<tr>
		<td>영화 제목:</td>
		<td><input id = "title"></td>
	</tr>
	<tr>
		<td>영화 관람료:</td>
		<td><input id = "price"></td>
	</tr>
	<tr>
		<td>인원수:</td>
		<td><input id = "count"></td>
	</tr>
	<tr>
		<td colspan="2">
			<button id = "b2">영화 관람 확인</button>
		</td>
	</tr>
</table>
<hr>
	<input id="b3" type="button" value="과일목록 가지고 오기">
	<br>
	<input id="b4" type="button" value="여행목록 가지고 오기">
	<br>
<div id = "result"></div>
</body>
</html>