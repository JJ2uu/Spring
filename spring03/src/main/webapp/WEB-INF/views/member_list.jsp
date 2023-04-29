<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border ="1">
	<tr>
		<th>id</th>
		<th>pw</th>
		<th>name</th>
		<th>tel</th>
	</tr>
	<c:forEach items="${list}" var="bag">
	<tr class = "table_content">
		<td>${bag.id}</td>
		<td>${bag.pw}</td>
		<td>${bag.name}</td>
		<td>${bag.tel}</td>
	</tr>
	</c:forEach>
</table>