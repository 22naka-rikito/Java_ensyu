<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String tateStr = request.getParameter("tate");
String yokoStr = request.getParameter("yoko");
String katati = request.getParameter("btn");
int tate = 0;
int yoko = 0;
if(tateStr != null && !tateStr.equals("")){
	tate = Integer.parseInt(tateStr);
}
if(yokoStr != null && !yokoStr.equals("")){
	yoko = Integer.parseInt(yokoStr);
}

double result = 0;
switch(katati){
case "sankaku":
	result = ParamUtil.sankaku(tate, yoko);
	break;
case "sikaku":
	result = ParamUtil.sikaku(tate, yoko);
	break;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題5</h1>
	<h2>計算結果</h2>
	<p>面積:<%= result %></p>
	<a href="javaBasic5_input.jsp">戻る</a>
</body>
</html>