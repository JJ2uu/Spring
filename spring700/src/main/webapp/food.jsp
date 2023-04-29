<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">

	$('document').ready(function() {
		$.ajax({
			url: "food_list",
			success: function(x) {
				$("#listResult").append(x)
			}
		})

	

		$("#search").click(function() {
			$.ajax({
				url: "food_one",
				data: {
					no: $("#no").val()
				},
				success: function(x) {
					$("#oneResult").append(x)
				}
			})
		})
	})

</script>
<style>
	input {
		width: 200px;
		height: 30px;
		margin: 5px;
	}
	button {
		width: 200px;
		height: 30px;
		margin: 5px;
	}
	h4 {
		margin-bottom: 5px;
		margin-left: 5px;
	}
	
	.content {
		display: flex;
		width: 100%;
	}
	.list {
		width: 50%;
	}
	.data {
		width: 50%;
	}
</style>
</head>
<body>
<div id = "wrap">
<div class = "header">
	<h1>My Food</h1>
	<hr>
</div>
<div class = "content">
	<div class ="list">
		<h4>음식 리스트</h4>
		<hr>
		<div id = "listResult"></div>
	</div>
	<div class ="data">
		<h4>오늘 먹은 음식</h4>
		<form action = "food_insert" method = "get">
		<input name = "name" placeholder="음식 이름"><br>
		<input name = "price" placeholder="음식 가격"><br>
		<input name = "img" placeholder="음식 사진" type="file"><br>
		<button type ="submit">저장하기</button>
		</form>
		<hr>
		<h4>등록된 음식 삭제하기</h4>
		<form action = "food_delete" method = "get">
		<input name = "no" placeholder="게시물 번호"><br>
		<button type ="submit">삭제하기</button>
		</form>
		<hr>
		<h4>등록된 음식 가격 수정하기</h4>
		<form action = "food_update" method = "get">
		<input name = "no" placeholder="게시물 번호"><br>
		<input name = "price" placeholder="수정할 가격"><br>
		<button type ="submit">수정하기</button>
		</form>
		<hr>
		<h4>등록된 음식 1개 검색</h4>
		<input id = "no" placeholder="게시물 번호"><br>
		<button type ="submit" id = "search">검색하기</button>
		<div id ="oneResult"></div>
		<hr>
	</div>
</div>
<div class = "footer"></div>
</div>
</body>
</html>