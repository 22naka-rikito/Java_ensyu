<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題2(発展)</h1>
	<h2>売上一覧</h2>
	<%
		int[][] grades = {
					{352000, 442000, 520000},
					{278000, 342600, 380500},
		};
		int[] sumMonthAmount = {
				grades[0][0] + grades[1][0],
				grades[0][1] + grades[1][1],
				grades[0][2] + grades[1][2]
		};
		String[] productClass = {"食品", "飲料"};
		String[] month = {"1月","2月","3月"};
		String sum_title ="合計";
		int[] amount = {grades[0][0] + grades[0][1] + grades[0][2], grades[1][0] + grades[1][1] + grades[1][2]};
		int total = sumMonthAmount[0] + sumMonthAmount[1] + sumMonthAmount[2];
	%>
	<table border=1>
		<tr>
			<th></th>
			<th><% out.println(month[0]); %></th>
			<th><% out.println(month[1]); %></th>
			<th><% out.println(month[2]); %></th>
			<th><% out.println(sum_title); %></th>
		</tr>
		<tr>
			<td><% out.println(productClass[0]); %></td>
			<td><% out.println(grades[0][0]); %></td>
			<td><% out.println(grades[0][1]); %></td>
			<td><% out.println(grades[0][2]); %></td>
			<td><% out.println(amount[0]); %></td>
		</tr>
		<tr>
			<td><% out.println(productClass[1]); %></td>
			<td><% out.println(grades[1][0]); %></td>
			<td><% out.println(grades[1][1]); %></td>
			<td><% out.println(grades[1][2]); %></td>
			<td><% out.println(amount[1]); %></td>
		</tr>
		<tr>
			<th>合計</th>
			<td><% out.println(sumMonthAmount[0]); %></td>
			<td><% out.println(sumMonthAmount[1]); %></td>
			<td><% out.println(sumMonthAmount[2]); %></td>
			<td><% out.println(total); %></td>
		</tr>
	</table>
</body>
</html>