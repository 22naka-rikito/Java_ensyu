<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String[] kaden = request.getParameterValues("kaden");
String comment = "以下の商品を購入しました。";
int money = 0;
money = (int) session.getAttribute("money");
int syuppi=0;
if(kaden != null){
	for(int i = 0; i < kaden.length; i++){
		switch(kaden[i]){
		case "tv":
			syuppi += 20000;
			kaden[i] = "テレビ";
			break;
		case "reizouko":
			syuppi += 30000;
			kaden[i] = "冷蔵庫";
			break;
		case "renji":
			syuppi += 10000;
			kaden[i] = "電子レンジ";
			break;
		case "sentakuki":
			syuppi += 50000;
			kaden[i] = "洗濯機";
			break;
		}
	}
	if(syuppi > money){
		syuppi = 0;
		comment = "お金が足りません。";
	}
}else{
	comment = "商品が選ばれてない。";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Java基礎-演習問題4(発展)</h1>
	<h2>購入結果</h2>
	<h3><%= comment %></h3>
	<p>購入前の所持金:<%= money %></p>
	<p>購入後の所持金:<%= money-syuppi %></p>
	<p>【購入商品】</p>
	<%
		if(kaden != null && syuppi != 0){
			for(int i = 0; i < kaden.length; i++){
				out.println("<p>" + kaden[i] + "</p>");
			}	
		}
		session.setAttribute("money", money - syuppi);	
	%>
	<a href="javaBasicDev4_input.jsp">戻る</a>
</body>
</html>