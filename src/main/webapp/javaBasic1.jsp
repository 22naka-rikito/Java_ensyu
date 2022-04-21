<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Java基礎 - 演習問題1</h1>

<%
int x=100;
int y=150;
int z=1000;

out.println("水の単価 : " + x + "円<br>");
out.println("お茶の単価 : " + y + "円<br>");
out.println("所持金 : " + z + "円<br>");

out.println("<br>水とお茶を1個ずつ購入する場合の金額は、\"" + (x + y) + "円\"です" );
out.println("<br>水とお茶を1個ずつ買った場合、所持金が、\"" + (z - (x + y)) + "円\"です" );
out.println("<br>お茶を6個購入する場合の金額は、\"" + (y * 6) + "円\"です" );
out.println("<br>所持金で水を" + y / x + "個購入できます");
out.println("<br>所持金でお茶を変えるだけ買った後は、\"" + z % y + "\"残ります");
%>
</body>
</html>