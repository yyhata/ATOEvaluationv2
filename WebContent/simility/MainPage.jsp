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
<title>Main - Demo</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="../css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

<jsp:useBean id="userinfo" class="pack.UserInfoBean" scope="session"/>

</head>
<body>
 <!-- ■■■■ Simility Snippet ■■■■-->
<script type="text/javascript">
 var similityContext = {
	     "customer_id": "5e295f6c-5fd2-11e7-907b-a6006ad3dba0",  // required; provided to you by simility during signup
	     "session_id": <%= session.getId() %>,  // required; unique per user session, typically persistent by your backend
	     "user_id": <%= userinfo.getUserid()%>,  // recommended; user_id variable from your session, typically persistent on your backend
	     "event_types": "post_login_load",  // required; Comma separated snake_case strings of action/event which is associated with this activity/view
	     "zone": "us", // If data regulatory compliance requires your data to be hosted in Europe datacenters, please specify zone as "eu"

	     "simility_lite_level": session.getAttribute("similityLiteLevel")
 };
</script>
<script type="application/javascript" src="https://cdn.simility.com/b.js"></script>

<div id="header" class="container">
	<div id="logo">
		<h1><a href="Login.jsp">Demo Bank</a>　<font size ="2" color="bluek">　■Javascriptあり■　　　</font></h1>
	</div>
	<div id="menu">
		<ul>
			<li><a href="#" accesskey="1" title="">Homepage</a></li>
			<li><a href="#" accesskey="3" title="">About Us</a></li>
			<li><a href="#" accesskey="5" title="">Contact Us</a></li>
		</ul>
	</div>
</div>
	<%
		String name = "";
		if(userinfo.getName() != ""){
			name = userinfo.getName();
		} else {
			name = userinfo.getLastname() + userinfo.getFirstname();
		}
	%>

<div id="banner-wrapper">
	<div id="banner" class="container">
		<div id="fbox2"><font color="white">
			<h2>お客様メインページ</h2><br>
			<p>　●　<%=name %>様の代表口座　　普通預金（残高）　<font size=8>999,999,999</font>円　Balance</br><br>
			　●　前回ログイン　：　2017年**月**日　**時**分　Previous Login</p></font>
			<ul class="style1">
			</ul>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="pboxA">
			<h3>登録情報の変更</h3>
			<p>こちらから現在の登録内容を確認してください。<br>Update Profile</p>
			<a href="ChangeProfile.jsp" class="button">登録プロフィール確認</a>
		</div>
		<div class="pboxB">
			<h3>お振り込み</h3>
			<p>こちらから自行・他行宛のお振込みが可能です。<br>Schedule Transfer</p>
			<a href="Transfer.jsp" class="button">お振込み</a>
		</div>
	</div>
</div>
<div id="copyright">


	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>


