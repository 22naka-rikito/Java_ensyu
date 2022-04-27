<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題5</h1>
	<h2>三角形の面積計算</h2>
	<form action="javaBasic5_result.jsp">
		<p>底辺:<input type="number" name="yoko" min="1"></p>
		<p>高さ:<input type="number" name="tate" min="1"></p>
		<button type="submit" name="btn" value="sankaku">計算</button>
	</form>
	
	<h2>長方形の面積計算</h2>
	<form action="javaBasic5_result.jsp">
		<p>縦:<input type="number" name="tate" min="1"></p>
		<p>横:<input type="number" name="yoko" min="1"></p>
		<button type="submit" name="btn" value="sikaku">計算</button>
	</form>
</body>
</html>