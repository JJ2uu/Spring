<%@page import="java.io.Console"%>
<%@page import="org.apache.commons.collections4.bag.SynchronizedSortedBag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String name = request.getParameter("name");
    	String tel = request.getParameter("tel");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>처리 결과</h3>
	<hr>
	<table>
		<tr>
			<td>가입된 아이디: </td>
			<td><%= id %></td>
		</tr>
		<tr>
			<td>가입된 패스워드: </td>
			<td><%= pw %></td>
		</tr>
		<tr>
			<td>가입된 이름: </td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td>가입된 전화번호: </td>
			<td><%= tel %></td>
		</tr>
	</table>
</body>
</html>