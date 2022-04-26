<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if (session.getAttribute("playNum") == null) {
    session.setAttribute("playNum", 0);
}
if (session.getAttribute("winNum") == null) {
    session.setAttribute("winNum", 0);
}

String numStr = request.getParameter("num");
String btn = request.getParameter("btn");

int numInt = 0;		//振った回数
int diceNum[];		//ダイスの目
int diceSum = 0;	//ダイスの合計
int playNum = 0;	//実施回数
int winNum = 0;		//勝った回数


if(numStr != null && !numStr.equals("")){
	numInt = Integer.parseInt(numStr);
	diceNum = new int[numInt];
}else{
	diceNum = new int[0];
}

if(btn != null && btn.equals("reset")){
	session.invalidate();
}else if(numInt != 0){
	for(int i = 0; i < numInt; i++){
		diceNum[i] = (int)(Math.random() * 6) + 1;
	}
	for(int i = 0; i < numInt; i++){
		diceSum += diceNum[i];
	}
	playNum = (int) session.getAttribute("playNum");
	playNum++;
	session.setAttribute("playNum", playNum);
	winNum = (int) session.getAttribute("winNum");
	if(diceSum != 0 && diceSum % 2 == 0){
		winNum++;
	}
	session.setAttribute("winNum", winNum);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>サイコロゲーム</title>
</head>
<body>
	<h1>Java基礎-演習問題4</h1>
	<h2>サイコロゲーム</h2>
	<p>出た目の合計が偶数の場合あなたの勝ちです。</p>
	<form action="javaBasic4.jsp">
		<p>
			振る回数:
			<input type="number" name="num" min="1" value="1">
		</p>
		<p>
			<button type="submit" name="btn" value="start">開始</button>
			<button type="submit" name="btn" value="reset">リセット</button>
		</p>
	</form>
	
	<h2>結果</h2>
	<p>
		出た目:
		<%
		for(int i: diceNum){
			out.println(i);
		}
		%>
	</p>
	<p>サイコロ振った回数:<%= numInt %></p>
	<p>
		勝敗:
		<%
		if(diceSum != 0 && diceSum % 2 == 0){
			out.println("あなたの勝ちです。");
		}else if(diceSum % 2 == 1){
			out.println("あなたの負けです。");
		}
		%>
	</p>
	<h2>戦歴</h2>
	<p>勝った回数:<%= winNum %></p>
	<p>実施回数:<%= playNum %></p>
</body>
</html>