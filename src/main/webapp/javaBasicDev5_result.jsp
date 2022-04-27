<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name1Str = request.getParameter("name1");
String price1Str = request.getParameter("price1");

String name2Str = request.getParameter("name2");
String price2Str = request.getParameter("price2");

String rankStr = request.getParameter("rank");

int price1;
int price2;

int point1 = 0;
int point2 = 0;

int rank;

if(ParamUtil.isNullOrEmpty(price1Str)){
	price1Str = "0";
}
price1 = Integer.parseInt(price1Str);

if(ParamUtil.isNullOrEmpty(price2Str)){
	price2Str = "0";
}
price2 = Integer.parseInt(price2Str);

if(ParamUtil.isNullOrEmpty(rankStr)){
	rankStr = "1";
}
rank = Integer.parseInt(rankStr);

switch(rank){
case 1:
	point1 = ParamUtil.getPoint(price1);
	point2 = ParamUtil.getPoint(price2);
	break;
case 2:
	point1 = ParamUtil.getPoint(price1, rank);
	point2 = ParamUtil.getPoint(price2, rank);
 	break;
 case 3:
	point1 = ParamUtil.getPoint(price1, rank);
	point2 = ParamUtil.getPoint(price2, rank);
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
	<h1>Java基礎-演習問題5(発展)</h1>
	<h2>計算結果</h2>
	<table border="1">
		<tr>
			<th>商品</th>
			<th>金額</th>
			<th>ポイント</th>
		</tr>
		<%
		if(!ParamUtil.isNullOrEmpty(name1Str)){
			out.print("<tr>");
			out.print("<td>" + name1Str + "</td>");
			out.print("<td>" + price1Str + "</td>");
 			out.print("<td>" + point1 + "</td>");
			out.print("<tr>");
		}
		%>
		<%
		if(!ParamUtil.isNullOrEmpty(name2Str)){
			out.print("<tr>");
			out.print("<td>" + name2Str + "</td>");
 			out.print("<td>" + price2Str + "</td>");
  			out.print("<td>" + point2 + "</td>");
			out.print("<tr>");
		}
		%>
	</table>
	<a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>