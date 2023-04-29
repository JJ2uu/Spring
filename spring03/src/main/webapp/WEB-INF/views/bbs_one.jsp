<%@page import="com.multi.mvc03.BbsVO"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Title</title>
<script type="text/javascript" src = "resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">

	$(function() {
		$("#b").click(function() {
			$.ajax({
				url: "reply_insert",
				data: {
					bbsno : ${bag.no},
					content: $('#reply').val(),
					writer: '<%= session.getAttribute("id") %>'
				},
				success: function() {
					 $('#result').load(location.href+' #result');
				},
				error: function() {
					alert('실패')
				}
			})
		})
	})

</script>
</head>
<body>
북마크 검색 완료.
<hr>
검색된 no는 ${bag.no} <br>
검색된 title은 ${bag.title} <br>
검색된 content은 ${bag.content} <br>
검색된 writer은 ${bag.writer} <br>
<hr>
<div>
<%= session.getAttribute("id") %><input id = "reply">
<button id = "b">댓글 달기</button>
</div>
<hr>
<div id = "result">
	<c:forEach items="${list}" var= "bag">
		└  ${bag.writer} : ${bag.content} <br>
	</c:forEach>
</div>
<%-- <%
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
<% }} %> --%>

</body>
</html>
