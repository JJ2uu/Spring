<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json = new JSONObject();
	json.put("최고가", 2487); // {name : hong}
	json.put("최저가", 2487);
	json.put("종가", 0);
	
	JSONObject json2 = new JSONObject();
	json.put("최고가", 2000); // {name : hong}
	json.put("최저가", 2000);
	json.put("종가", 0);
	
	JSONArray array = new JSONArray();
	array.add(json);
	array.add(json2);
	
	// out.print(json.toJSONString());
	
%><%= array.toJSONString() %>