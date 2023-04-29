<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border = "1">
	<tr>
		<th>영화 제목</th>
		<th>인원수</th>
		<th>영화 가격</th>
	</tr>
	<tr>
		<td>${bag.title}</td>
		<td>${bag.count}</td>
		<td>${bag.price}</td>
	</tr>
	<tr>
		<td colspan="3">총 합계 : ${bag.sum}</td>
	</tr>
</table>