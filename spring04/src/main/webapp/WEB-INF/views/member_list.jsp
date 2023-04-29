<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	회원검색 처리 요청이 완료되었습니다.
	<hr>
	<c:forEach items="${list}" var = "bag"> <!-- for ( bag : list )와 동일, var : list 데이터들 저장할 변수-->
	검색아이디>> ${bag.id}<br>
	검색비밀번호>> ${bag.pw}<br>
	검색이름 >> ${bag.name}<br>
	검색전화번호>> ${bag.tel}
	<hr>
	</c:forEach>
</body>
</html>