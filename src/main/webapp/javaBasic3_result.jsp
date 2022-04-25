<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String bloodType = request.getParameter("rb");
	String comment1;
	String comment2;
	String comment3;
	if(name.equals("ロボット")){
		comment1 = name + "さん!" + "私と同じ名前ですね！";
	}else if(name.equals("")){
		comment1 = "名無しさん";
	}else{
		comment1 = name + "さん";
	}
	
	if(age.equals("")){
		age = "0";
	}
	
	if(age.equals("20")){
		comment2 = "私と同い年なんですね！";
	}else if(Integer.parseInt(age) > 20){
		comment2 = "私よりも" + (Integer.parseInt(age) - 20) + "歳年上ですね。";
	}else{
		comment2 = "私よりも" + (20 - Integer.parseInt(age)) + "歳年下ですね。";
	}
	
	switch(bloodType){
	case "A":
		comment3 = "私もA型です！";
		break;
	case "B":
		comment3 = " B型の人と話すのは初めてです。";
		break;
	case "AB":
		comment3 = "私の母がAB型です。";
		break;
	case "O":
		comment3 = "私の父がO型です";
		break;
	default:
		comment3 = "";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題3</h1>
	<h2>ロボットへからの返信</h2>
	<p>こんにちわ、<%= comment1 %></p>
	<p><%= comment2 %></p>
	<p><%= comment3 %></p>
</body>
</html>