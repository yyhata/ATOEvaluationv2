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
<title>ログイン - デモ</title>
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
     "event_types": "payment_form",  // required; Comma separated snake_case strings of action/event which is associated with this activity/view
     "zone": "us", // If data regulatory compliance requires your data to be hosted in Europe datacenters, please specify zone as "eu"

     "simility_lite_level": session.getAttribute("similityLiteLevel")
 };
</script>
<script type="application/javascript" src="https://cdn.simility.com/b.js"></script>


<div id="header" class="container">
	<div id="logo">
		<h1>
			<form action="Login" method="post" name="LoginForm"">
				<a href="#">Demo Bank</a>　<font size ="2" color="bluek">　■Javascriptあり■　　　
				<a href="Login-noJS.jsp" class="button" style="size:2; color:white">JS無しのページへ移動</a></font>
			</form>
		</h1>

	</div>
	<div id="menu">
		<ul>
			<li><a href="#" accesskey="1" title="">Homepage</a></li>
			<li><a href="#" accesskey="3" title="">About Us</a></li>
			<li><a href="#" accesskey="5" title="">Contact Us</a></li>
		</ul>
	</div>
</div>
<div id="banner-wrapper">
	<div id="banner" class="container">
		<div class="boxA">
			<form action="Login" method="post" name="LoginForm"">
			<input type="hidden" name="JS" value="true">
		    	<h3>IDをお持ちの方はこちら</h3>
			    <p>User ID</p>
			    <input type="text" name="userID" id="userID" value="" maxlength="22" tabIndex="1" autocomplete="off">
			    <p>Password</p>
		    	<input type="password" name="password" id="password" value="" maxlength="20" tabIndex="2" autocomplete="off" onkeydown="submitOnEnter(event);"><br/>
			    <a href="#" class="button"><input type="submit" value="ログイン Login" style="background-color:transparent; color:white; border:0"></a>
			</form>
		</div>
		<div class="boxB">
			<h3>初めての方はこちら</h3>

			<p><strong class="attention">初めてご利用のお客さま</strong>はアカウント作成手続きが必要です<br>Click Button to Open New Accuont</p>
			<a href="OpenNewAccount.jsp" class="button">新規口座開設</a>
		</div>
	</div>
</div>


<div id="copyright">
	<ul class="contact">
		<li><a href="#" class="icon icon-twitter"><span>Twitter</span></a></li>
		<li><a href="#" class="icon icon-facebook"><span></span></a></li>
		<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
		<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
		<li><a href="#" class="icon icon-rss"><span>Pinterest</span></a></li>
	</ul>

	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>
