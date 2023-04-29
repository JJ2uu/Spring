<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- computer호출 시 결과 담는 곳 -->
<table border = "1">
	<tr>
		<th>항목명</th>
		<th>가격</th>
	</tr>
	<tr>
		<td>${bag.com}</td>
		<td>${bag.price}</td>
	</tr>
	<tr>
		<td>${bag.mouse}</td>
		<td>${bag.price2}</td>
	</tr>
	<tr>
		<td colspan="2">총 합계: ${bag.sum}</td>
	</tr>
</table>