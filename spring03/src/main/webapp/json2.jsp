<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json = new JSONObject();
	json.put("name", "hong"); // {name : hong}
	json.put("age", 100);
	json.put("id", "root");
	json.put("pw", "1234");
	
	JSONObject json2 = new JSONObject();
	json2.put("name", "kang"); // {name : hong}
	json2.put("age", 200);
	json2.put("id", "kang");
	json2.put("pw", "1234");
	
	JSONArray array = new JSONArray();
	array.add(json);
	array.add(json2);
	
	// out.print(json.toJSONString());
	
%><%= array.toJSONString() %>