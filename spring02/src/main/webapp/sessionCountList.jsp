<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int count = (int)session.getAttribute("count"); //object 상태이기 때문에 count ++ 을 적용하려면 Integer로 강제형변환(다운캐스팅) 후 int 로 오토 언박싱 을 해줘야한다.
		count++;
		session.setAttribute("count", count);
	%>
	현재 설정되어 있는 카운트 : ${count}
</body>
</html>