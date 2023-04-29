<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* {
		margin: 0;
		padding: 0;
		text-align: center;
	}
	.news {
		margin: 5% auto 0 auto;
	}
	p {
		width: 500px;
		margin-left: auto;
		margin-right: auto;
	}
	button {
		border-color: transparent;
		width : 200px;
		height: 50px;
		display: block;
		margin: 20px auto 5% auto;
		border-radius: 10px;
	}
	a {
		text-decoration: none;
		color : #000;
	}
</style>
</head>
<body>
	<div class = news>
	<h2>14살, 하룻밤새 실명…시각장애 유튜버 “KBS 앵커 합격”</h2>
	<p>입력2023.03.31. 오전 9:35</p>
	<br><br>
	<hr>
	<br><br>
	<h4>[이데일리 이선영 기자] 10만 명의 구독자를 보유한 시각장애인 유튜버 허우령 씨(24)가 KBS 앵커가 된다.</h4>
	<br><br>
	<img src = "resources/img/news.jpg">
	<br><br>
	<p>
		30일 KBS는 허 씨가 장애인 앵커로 최종 선발했다고 밝혔다.<br>허 씨는 다음 달 3일부터 ‘KBS뉴스12’의 ‘생활뉴스’ 코너를 맡아 진행하게 되며 취재 콘텐츠 제작 등 방송 영역을 넓혀갈 예정이다.
		허 씨는 14살 때 시신경염으로 인해 하루 아침에 시각장애인이 됐다. 이후 시각장애 특수학교 방송부 아나운서와 학생회장을 맡으며 앵커의 꿈을 키워왔다. 이후 지방자치단체 전교 회장 회의에서 ‘장애학생과 비장애 학생의 통합교육’을 주제로 토론에 나서는 등 활발한 활동을 해왔다.
	</p>
	</div>
	<a href = "login.jsp">
		<button>로그인하기</button>
	</a>
	<%
		if(session.getAttribute("id") != null) {
	%>
	<br><br>
	<hr>
	<br>
	<form>
		댓글 : <input name = "reply"> <button>댓글 달기</button>
	</form>
	<br><br>
	<% } %>

</body>
</html>