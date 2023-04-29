<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table style =" border: 1px solid #000; border-collapse: collapse;">
	<tr style =" border: 1px solid #000; border-collapse: collapse;">
		<th style =" border: 1px solid #000; border-collapse: collapse;">no</th>
		<th style =" border: 1px solid #000; border-collapse: collapse;">name</th>
		<th style =" border: 1px solid #000; border-collapse: collapse;">price</th>
		<th style =" border: 1px solid #000; border-collapse: collapse;">img</th>
	</tr>
	<tr style =" border: 1px solid #000; border-collapse: collapse;">
		<td style =" border: 1px solid #000; border-collapse: collapse; padding: 20px;">${bag.no}</td>
		<td style =" border: 1px solid #000; border-collapse: collapse; padding: 20px;">${bag.name}</td>
		<td style =" border: 1px solid #000; border-collapse: collapse; padding: 20px;">${bag.price}</td>
		<td style =" border: 1px solid #000; border-collapse: collapse; padding: 20px;"><img src="resources/img/${bag.img}" width ="100px;"></td>
	</tr>
</table>