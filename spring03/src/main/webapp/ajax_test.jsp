<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('document').ready(function() {
			$("#result").empty()
			$.ajax({
				url: "list5",
				success: function(x) {
					$("#result").append(x)
				}
			})
		})
		
		$("#b2").click(function() {
			$("#result").empty()
			$.ajax({
				url: "list6",
				data: {
					bbsno : 1
				},
				success: function(x) {
					$("#result").append(x)
				}
			})
		})
		
		$("#b3").click(function() {
			$("#result").empty()
			$.ajax({
				url: "list6",
				data: {
					bbsno : 22
				},
				success: function(x) {
					$("#result").append(x)
				}
			})
		})
		
		$("#b4").click(function() {
			$("#result").empty()
			$.ajax({
				url: "one",
				data: {
					id: 'apple'
				},
				success: function(x) {
					$("#result").append(x)
				}
			})
		})
		
		$("#b5").click(function() {
			$("#result").empty()
			$.ajax({
				url: "bbs_one",
				data: {
					no : 1
				},
				success: function(x) {
					$("#result").append(x)
				}
			})
		})
		
		$("#b6").click(function() {
			$("#result").empty()
			$.ajax({
				url: "member_list",
				success: function(x) {
					$("#result").append(x)
				}
			})
		})
		
		$("#b7").click(function() {
			$("#result").empty()
			$.ajax({
				crossOrigin: true,
				url:'http://api.openweathermap.org/data/2.5/weather?q=seoul&lang=kr&appid=16e975aa5fddae0150af8bdd26c5aeb6',
				dataType : 'json',
				success: function(x){
					console.log(x);
					$('#weatherResult').html(
							"<table><tr><td><h1>"+x.name+"</h1></td>"+
							"<td><img src='http://openweathermap.org/img/w/" + x.weather[0].icon + ".png' width = 50></td></tr>"+
							"<tr><td>풍속</td><td>"+x.wind.speed+"</td></tr>"+
							"<tr><td>최고 기온</td><td>"+(x.main.temp_max-273.15).toFixed(1)+"</td></tr>"+
							"<tr><td>최저 기온</td><td>"+(x.main.temp_min-273.15).toFixed(1)+"</td></tr>"+
							"<tr><td>체감 온도</td><td>"+(x.main.feels_like-273.15).toFixed(1)+"</td></tr>"+
							"<tr><td>구름</td><td>"+x.clouds.all+"</td></tr></table>")
				}
			})
		})
	})
</script>
<style>
	#weatherResult {
		width: 200px;
		align-items: center;
	}
	#weatherResult>table {
		display: block;
		border-collapse: collapse;
	}
	#weatherResult>table td {
		padding: 5px;
		border-bottom: 1px solid #ccc;
	}
</style>
</head>
<body>

<button id = "b1">bbs리스트 가져오기</button>
<button id = "b2">bbs번호 1번 reply리스트 가지고 오기</button>
<button id = "b3">bbs번호 22번 reply리스트 가지고 오기</button>
<button id = "b4">member id가 apple인 사용자 정보</button>
<button id = "b5">bbsno가 1번인 게시물의 상세정보</button>
<button id = "b6">member list 정보 가져오기</button>
<button id = "b7">오늘의 서울 날씨!</button>
<hr>
<div id = "result"></div>
<div id = "weatherResult"></div>

</body>
</html>