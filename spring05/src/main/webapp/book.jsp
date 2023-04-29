<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>북마크</title>
</head>
<body>
<h3>북마크 입력</h3>
<hr color="red">
	<form action="book_insert" method="get">
    name : <label><input name="name"></label><br>
    url : <label><input name="url"></label><br>
    img : <label><input name="img"></label><br>
    <button type="submit">등록</button>
    </form>

    <h3>북마크 삭제</h3>
    <hr color="red">
    <form action="book_delete" method="get">
        name : <label><input name="name"></label><br>
        <button type="submit">삭제</button>
    </form>

    <h3>북마크 수정</h3>
    <hr color="red">
    <form action="book_update" method="get">
        name : <label><input name="name"></label><br>
        img : <label><input name="img"></label><br>
        <button type="submit">수정</button>
    </form>
    
    <h3>북마크 검색</h3>
	<hr color="red">
	<form action="book_one" method="get">
	    name : <label><input name="name"></label><br>
	    <button type="submit">검색</button>
	</form>
    <hr>
    <a href="book_list">전체 목록가지고오기</a>
</body>
</html>