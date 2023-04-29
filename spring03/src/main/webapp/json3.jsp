<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json = new JSONObject();
	json.put("날씨", "흐림"); // {name : hong}
	json.put("온도", 12.9);
	json.put("습도", 30.9);
	
	// out.print(json.toJSONString());
	
%><%= json.toJSONString() %>