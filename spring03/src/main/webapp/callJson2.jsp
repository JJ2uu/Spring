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
				url: "json1",
				dataType: "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel
					$("#result").append(id + " " + pw + " " + name + " " + tel + "<br>")
				}
			})
		})
		$("#b11").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json1",
				dataType: "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel
					$("#result").html("<table style = 'border-collapse: collapse;'><tr><th style = 'border-bottom: 2px solid #000; padding: 10px;'>항목명</th><th style = 'border-bottom: 2px solid #000; padding: 10px;'>값</th></tr>" +
									"<tr><td style = 'padding: 10px; border-bottom: 1px solid #ccc'>아이디</td><td style = 'padding: 10px; border-bottom: 1px solid #ccc'>" + id + "</td></tr>" +
									"<tr><td style = 'padding: 10px; border-bottom: 1px solid #ccc'>비밀번호</td><td style = 'padding: 10px; border-bottom: 1px solid #ccc'>" + pw + "</td></tr>" +
									"<tr><td style = 'padding: 10px; border-bottom: 1px solid #ccc'>이름</td><td style = 'padding: 10px; border-bottom: 1px solid #ccc'>" + name + "</td></tr>" +
									"<tr><td style = 'padding: 10px; border-bottom: 2px solid #000'>전화번호</td><td style = 'padding: 10px; border-bottom: 2px solid #000'>" + tel + "</td></tr></table>"
								)
				}
			})
		})
		$("#b111").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json1",
				dataType: "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel
					$("#result").html("<ul style = 'list-style-type: square;'><li style = 'margin-bottom: 10px;'>아이디: " + id + "</li>" +
									"<li style = 'margin-bottom: 10px;'>비밀번호: " + pw + "</li>" +
									"<li style = 'margin-bottom: 10px;'>이름: " + name + "</li>" +
									"<li style = 'margin-bottom: 10px;'>전화번호: " + tel + "</li></ul>"
								)
				}
			})
		})
		$("#b2").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json2",
				dataType: "json",
				success: function(json) {
					id = json[1].id
					pw = json[1].pw
					name = json[1].name
					tel = json[1].tel
					$("#result").append("json배열 중 2번째 것>> " + id + " " + name + "<br>")
				}
			})
		})
		$("#b3").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json3",
				dataType: "json",
				success: function(json) {
					no = json.no
					title = json.title
					content = json.content
					writer = json.writer
					$("#result").append(no + " " + title + " " + content + " " + writer + "<br>")
				}
			})
		})
		$("#b4").click(function() {
			$("#result").empty()
			$.ajax({
				url: "json4",
				dataType: "json",
				success: function(json) {
					no = json[1].no
					title = json[1].title
					content = json[1].content
					writer = json[1].writer
					$("#result").append("json배열 중 2번째 것>> " + title + " " + content + "<br>")
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
		$("#b6").click(function() {
			$("#result").empty()
			$.ajax({
				url: "bbs_one2",
				data: {
					no: 2
				},
				dataType: "json",
				success: function(json) {
					no= json.no
					content= json.content
					$("#result").append(no + " " + content + "<br>")
				}
			})
		})
		
		$("#b66").click(function() {
			$("#result").empty()
			$.ajax({
				url: "list55",
				dataType: "json",
				success: function(json) {
					no1= json[1].no
					content1= json[1].content
					$("#result").append(no1 + " " + content1 + "<br>")
				}
			})
		})
	})
</script>
</head>
<body>
<button id="b1">컨트롤러에서 JSON 받아오기</button>
<button id="b11">컨트롤러에서 JSON(table) 받아오기</button>
<button id="b111">컨트롤러에서 JSON(li) 받아오기</button>
<button id="b2">컨트롤러에서 JSON Array 받아오기</button>
<button id="b3">컨트롤러에서 JSON3 받아오기</button>
<button id="b4">컨트롤러에서 JSON Array4 받아오기</button>
<button id="b5">날씨</button>
<button id="b6">컨트롤러에서 bbs json(text) 받아오기</button>
<button id="b66">컨트롤러에서 bbs json(table) 받아오기</button>
<button id="b666">컨트롤러에서 bbs json(array) 받아오기</button>
<hr>
<div id="result"></div>
</body>
</html>