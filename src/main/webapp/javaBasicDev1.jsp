<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Java基礎 - 演習問題1(発展)</h1>

<%
int x=500;
int y=350;
int z=3200;

out.println("ケーキの金額：\\" + x + "<br>");
out.println("コーヒーの金額：\\" + y + "<br>");
out.println("所持金：\\" + z + "<br>");

out.println("<br>ケーキを3つとコーヒーを2つ購入する場合の金額は、\\" + (x*3+y*2) + "です" );
out.println("<br>ケーキを2つとコーヒーを3つ買った場合、所持金が\\" + (z - (x*2+y*3)) + "残ります" );
out.println("<br>お茶を6個購入する場合の金額は、\"" + (y * 6) + "円\"です" );
out.println("<br>所持金でケーキとコーヒーを" + z/(x+y) + "セット購入できます");
out.println("<br>所持金でケーキを買えるだけ買った後に、\\1000増えた場合の金額は、\\" + (z%x+1000) + "です");

out.println("<br>");
%>
</body>
</html>