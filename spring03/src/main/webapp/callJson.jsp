<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#b1").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json.jsp",
				dataType: "json",
				success: function(json) {
					$("#result").append(json.id)
				}
			})
		})
		$("#b2").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json2.jsp",
				dataType: "json",
				success: function(json) {
					age1 = json[0].age
					name1 = json[0].name
					id1 = json[0].id
					$("#result").append(age1 + " " + name1 + " " + id1 + "<br>")
				}
			})
		})
		$("#b3").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json3.jsp",
				success: function(json) {
					$("#result").append(json)
				}
			})
		})
		$("#b4").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json4.jsp",
				success: function(json) {
					$("#result").append(json)
				}
			})
		})
		$("#b5").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json5.jsp",
				dataType: "json",
				success: function(json) {
					today = json.today
					temp = json.temp
					hu = json.hu
					$("#result").append(today + " " + temp + " " + hu + "<br>")
					if (today == "rain") {
						$("#result").append("<img src=resources/img/rain.png><br>")
					}
				}
			})
		})
	})
</script>
</head>
<body>
<button id="b1">JSON 받아오기</button>
<button id="b2">JSON Array 받아오기</button>
<button id="b3">JSON3 받아오기</button>
<button id="b4">JSON Array4 받아오기</button>
<button id="b5">날씨</button>
<hr>
<div id="result"></div>
</body>
</html>