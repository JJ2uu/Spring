<%@page import="com.multi.mvc02.BbsVO"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <style>
        body {
            background: yellow;
        }
    </style>
</head>
<body>
북마크 검색 완료.
<hr>
검색된 no는 ${bag.no} <br>
검색된 title은 ${bag.title} <br>
검색된 content은 ${bag.content} <br>
검색된 writer은 ${bag.writer} <br>

<%
	String id = (String)session.getAttribute("id"); // 세션에서 값 꺼내기
	BbsVO bag = (BbsVO)request.getAttribute("bag"); // 모델에서 값 꺼내기
	String writer = bag.getWriter();
	
	if (id != null) {
	if(id.equals(writer)) {
%>
<a href = "update2">
	<button style = "background: pink">수정</button>
</a>
<a href = "delete2.multi?no=${bag.no}">
	<button style = "background: pink">삭제</button>
</a>
<% }} %>

</body>
</html>
