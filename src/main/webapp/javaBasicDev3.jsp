<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String calc = request.getParameter("calc");
	int result;
	String comment;
	
	if(num1 == null && num2 == null){
		comment = "数値を入力してください";
	}else if(num1.equals("") && num2.equals("")){
		comment = "数値が両方とも未入力です";
	}else if(num1.equals("") || num2.equals("")){
		comment = "数値を入力してください";
	}
	else{
		switch(calc){
		case "tasu":
			result = Integer.parseInt(num1) + Integer.parseInt(num2);
			comment = num1 + "＋" + num2 + "=" + result;
			break;
		case "hiku":
			result = Integer.parseInt(num1) - Integer.parseInt(num2);
			comment = num1 + "－" + num2 + "=" + result;
			break;
		case "kake":
			result = Integer.parseInt(num1) * Integer.parseInt(num2);
			comment = num1 + "×" + num2 + "=" + result;
			break;
		case "waru":
			if(num2.equals("0")){
				comment = "エラー";
			}else{
				result = Integer.parseInt(num1) / Integer.parseInt(num2);
				comment = num1 + "÷" + num2 + "=" + result;
			}
			break;
		default:
			comment = "";
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題3(発展)</h1>
	<h2>四則演算</h2>
	<%= comment %>
	<p>
		<form action="javaBasicDev3.jsp">
			<input type="number" name="num1">
			<select name="calc">
				<option value="tasu">＋</option>
				<option value="hiku">－</option>
				<option value="kake">×</option>
				<option value="waru">÷</option>
			</select>
			<input type="number" name="num2">
			<button type="submit">計算</button>
		</form>
	</p>
	
</body>
</html>