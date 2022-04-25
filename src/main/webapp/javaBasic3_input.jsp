<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題3</h1>
	<h2>ロボットへのメッセージ送信</h2>
	<form action="javaBasic3_result.jsp">
		<p>
			名前:
			<input type="text" name="name">
		</p>
		<p>
			年齢:
			<input type="number" name="age">
		</p>
		<p>
			血液型:
			<label><input type="radio" name="rb" value="A" checked>A型</label>
			<label><input type="radio" name="rb" value="B">B型</label>
			<label><input type="radio" name="rb" value="AB">AB型</label>
			<label><input type="radio" name="rb" value="O">O型</label>
		</p>
		<button type="submit">送信</button>
	</form>
</body>
</html>