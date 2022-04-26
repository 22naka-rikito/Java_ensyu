<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if (session.getAttribute("money") == null) {
    session.setAttribute("money", 150000);
}

String btn = request.getParameter("btn");
int money = 0;
if(btn != null && btn.equals("reset")){
// 	session.invalidate();
	session.setAttribute("money", 150000);	
}
	money = (int) session.getAttribute("money");
	session.setAttribute("money", money);	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題4(発展)</h1>
	<h2>買い物</h2>
	<p>
		現在の所持金:<%= money %>
	</p>
	<p>購入する商品を選択してください</p>
	
	<form action="javaBasicDev4_result.jsp">
		<table border="1">
			<tr>
				<th>選択</th>
				<th>商品</th>
				<th>金額</th>
			</tr>
			<tr>
				<td><input type="checkbox" name="kaden" value="tv"></td>
				<td>テレビ</td>
				<td>20000</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="kaden" value="reizouko"></td>
				<td>冷蔵庫</td>
				<td>30000</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="kaden" value="renji"></td>
				<td>電子レンジ</td>
				<td>10000</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="kaden" value="sentakuki"></td>
				<td>洗濯機</td>
				<td>50000</td>
			</tr>
		</table>
		<p><button type="submit" name="btn" value="buy">購入</button></p>
	</form>
		
	<form action="javaBasicDev4_input.jsp" >
		<p><button type="submit" name="btn" value="reset">リセット</button></p>
	</form>

</body>
</html>