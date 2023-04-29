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
		background-image: url("https://assets.nflxext.com/ffe/siteui/vlv3/2e884ce2-da1c-4501-ab9a-10c534d30975/fcdbcd90-f133-4081-ac82-34918f18aabf/KR-ko-20230327-popsignuptwoweeks-perspective_alpha_website_large.jpg");
	}
	.list {
		margin: 18% auto auto auto;
	}
	.genre {
		border-color: transparent;
		width: 200px;
		height: 100px;
		margin: 5px;
		border-radius: 10px;
		background: #000;
		color: #fff;
		font-size: 16px;
	}
	
	.genre:hover {
		background: #24abff;
		transition: 0.5s;
	}
	
	form {
		display: inline;
	}
	
	h3 {
		color: #fff;
	}
	.search {
		margin: 1% 0 3% 0;
	}
	
	#searchSelect {
	  width: 80px; /* 가로 사이즈 */
	  padding: 10px; /* 내부여백 */
	  padding-left: 12px;
	  border: 1px solid #ddd;
	  background-size: 30px; /* 화살표 크기 */
	  border-radius: 4px;
	  box-sizing: border-box;
	  -webkit-appearance: none;
	  -moz-appearance: none;
	  appearance: none;
	  font-size: 12px;
	  background-color: #fff;
	  color: #000;
  	  outline:none;
	}
	#searchSelect:hover {
		border: 1px solid #aaa;
		background: #fff;
		color: #000;
	}
	
	#searchInput {
		width: 300px;
		height: 31px;
		border: 1px solid #aaa;
		border-radius: 4px;
	}
	
	#searchInput:focus {
		outline-style: none;
		border: 1px solid #000;
	}
	
	#searchButton {
		width: 60px;
		height: 37px;
		border-style: none;
		background: #24abff;
		color: #fff;
		border-radius: 4px;
		text-align: center;
	}
	
</style>
</head>
<body>
	<div class  ="list">
		<h3>영화 목록</h3>
		<form action = "movie_list">
			<button class ="genre">전체 목록</button>
		</form>
		<form action = "genre_list" method = "get">
			<button value ="코미디" name="genre" class ="genre">코미디</button>
			<button value ="드라마" name="genre" class ="genre">드라마</button><br>
			<button value ="액션" name="genre" class ="genre">액션</button>
			<button value ="범죄/스릴러" name="genre" class ="genre">범죄/스릴러</button>
			<button value ="애니메이션" name="genre" class ="genre">애니메이션</button>
		</form>
	</div>
	<div class = "search">
		<form action = "search_list" method ="get">
		<select id = "searchSelect" name ="select">
			<option value ="title">제목</option>
			<option value ="genre">장르</option>
			<option value ="location">영화관</option>
		</select>
		<input type = "text" id = "searchInput" placeholder="검색어를 입력하세요." name="word">
		<button id = "searchButton" type = "submit">검색</button>
		</form>
	</div>
</body>
</html>