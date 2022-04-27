<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題5(発展)</h1>
	<h2>ポイント計算</h2>
	<form action="javaBasicDev5_result.jsp">
		<table>
			<tr>
				<th>商品</th>
				<th>金額</th>
			</tr>
			<tr>
				<td><input type="text" name="name1"></td>
				<td><input type="number" name="price1"></td>
			</tr>
			<tr>
				<td><input type="text" name="name2"></td>
				<td><input type="number" name="price2"></td>
			</tr>
		</table>
		<p>
			ランク：
			<select name="rank">
				<option value="1"></option>
				<option value="2">シルバー</option>
				<option value="3">ゴールド</option>
			</select>
		</p>
		<button type="submit" name="btn">計算</button>
	</form>
	
</body>
</html>