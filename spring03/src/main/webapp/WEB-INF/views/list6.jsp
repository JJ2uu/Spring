<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table style =" border: 1px solid #000; border-collapse: collapse;">
	<tr style =" border: 1px solid #000; border-collapse: collapse;">
		<th style =" border: 1px solid #000; border-collapse: collapse;">no</th>
		<th style =" border: 1px solid #000; border-collapse: collapse;">bbsno</th>
		<th style =" border: 1px solid #000; border-collapse: collapse;">content</th>
		<th style =" border: 1px solid #000; border-collapse: collapse;">writer</th>
	</tr>
	<c:forEach items="${list}" var="bag">
	<tr class = "table_content" style =" border: 1px solid #000; border-collapse: collapse;">
		<td style =" border: 1px solid #000; border-collapse: collapse; padding: 20px;" >${bag.no}</td>
		<td style =" border: 1px solid #000; border-collapse: collapse; padding: 20px;">
			<a href = "bbs_one?no= ${bag.no}">${bag.bbsno}</a>
		</td>
		<td style =" border: 1px solid #000; border-collapse: collapse; padding: 20px;">${bag.content}</td>
		<td style =" border: 1px solid #000; border-collapse: collapse; padding: 20px;">${bag.writer}</td>
	</tr>
	</c:forEach>
</table>