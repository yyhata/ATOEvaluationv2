<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Concerted
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20131014

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Transfer - Demo</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="../css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

<jsp:useBean id="transfer" class="pack.TransferBean" scope="request"/>
<jsp:useBean id="userinfo" class="pack.UserInfoBean" scope="session"/>
<%
	String message = "";
	if(request.getAttribute("updateMessage") != null){
		message = request.getAttribute("updateMessage").toString();
	}
%>

</head>
<body>


<div id="header" class="container">
	<div id="logo">
		<h1><a href="#">Demo Bank</a>　<font size ="2" color="black">　　Javascriptなし　　</font></h1>
	</div>
	<div id="menu">
		<ul>
			<li><a href="#" accesskey="1" title="">Homepage</a></li>
			<li><a href="#" accesskey="3" title="">About Us</a></li>
			<li><a href="#" accesskey="5" title="">Contact Us</a></li>
		</ul>
	</div>
</div>
<div id="footer-wrapper">
	<div id="footer" class="container">
		<form name="Transfer" method="post" action="Transfer">
		<input type="hidden" name="JS" value="false">
			<div id="fbox1">
				<h2><Font color="red"><b><%= message %></b></Font></h2>
				</br>
				<h2>送金情報をご入力下さい</h2>
				<ul class="style3">
					<li class="first">
						<p class="date"><a href="#">項目<b>1</b></a></p>
						<h3>送金先氏名 Who to transfer</h3>
						<p><input type="text" name="toName" id="user_name" class="text z_ime_japanese input_text_26" maxlength="142" value=<%=transfer.getToName()%>><span class="complement_text">（全角）</span></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>2</b></a></p>
						<h3>口座番号 Account number</h3>
						<p><input type="text" name="accountNumber" id="account_id" class="number" maxlength="8" minlength="8" value=<%=transfer.getAccountNumber()%>><span class="complement_text">（半角数字8桁）</span></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>3</b></a></p>
						<h3>送金額 transfer amount</h3>
						<p><input type="text" class="number input_text_6" autocomplete="off" id="direct_password_1" name="amount" maxlength="7" value=<%=transfer.getAmount()%>><span class="complement_text">円　（半角数字）</span></p>
					</li>
				</ul>
				<br/>
				<a href="MainPage-noJS.jsp" class="button">戻る back</a>　　　<a href="#" class="button"><input type="submit" value="送金する Transfer" style="background-color:transparent; color:white; border:0"></a>
			</div>
		</form>
	</div>
</div>
<div id="copyright">
	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>
