<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題2</h1>
	<h2>成績一覧</h2>
	<%
		int[][] grades = {
					{100, 54, 69},
					{42, 95, 60}
		};
		double[] ave = {
				(double)(grades[0][0] + grades[1][0]) / 2,
				(double)(grades[0][1] + grades[1][1]) / 2,
				(double)(grades[0][2] + grades[1][2]) / 2
		};
	%>
	<table border=1>
		<tr>
			<th></th>
			<th>国語</th>
			<th>数学</th>
			<th>英語</th>
		</tr>
		<tr>
			<td>Aさん</td>
			<td><% out.println(grades[0][0]); %></td>
			<td><% out.println(grades[0][1]); %></td>
			<td><% out.println(grades[0][2]); %></td>
		</tr>
		<tr>
			<td>Bさん</td>
			<td><% out.println(grades[1][0]); %></td>
			<td><% out.println(grades[1][1]); %></td>
			<td><% out.println(grades[1][2]); %></td>
		</tr>
	</table>
	<h2>平均点</h2>
	<%
		out.println("国語:" + ave[0]);
		out.println("<br>数学:" + ave[1]);
		out.println("<br>英語:" + ave[2]);
		out.println("<br>合計:" + (ave[0] + ave[1] +ave[2]));
	%>
</body>
</html>