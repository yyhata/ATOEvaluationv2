<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>OpenNewAccount - Demo</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="../css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
<jsp:useBean id="userinfo" class="pack.UserInfoBean" scope="session"/>

</head>
<body>
 <!-- ■■■■ Simility Snippet ■■■■-->
<script type="text/javascript">
 var similityContext = {
	     "customer_id": "5e295f6c-5fd2-11e7-907b-a6006ad3dba0",  // required; provided to you by simility during signup
	     "session_id": <%= session.getId() %>,  // required; unique per user session, typically persistent by your backend
	     "user_id": <%= userinfo.getUserid()%>,  // recommended; user_id variable from your session, typically persistent on your backend
	     "event_types": "signup_load",  // required; Comma separated snake_case strings of action/event which is associated with this activity/view
	     "zone": "us", // If data regulatory compliance requires your data to be hosted in Europe datacenters, please specify zone as "eu"

	     "simility_lite_level": session.getAttribute("similityLiteLevel")
 };
</script>
<script type="application/javascript" src="https://cdn.simility.com/b.js"></script>

<div id="header" class="container">
	<div id="logo">
		<h1><a href="#">Demo Bank</a>　<font size ="2" color="bluek">　■Javascriptあり■　　　</font></h1>
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
		 <form name="openNewAccount" method="post" action="OpenNewAccount">
			<div id="fbox1">
				<form name="openNewAccount" method="post" action="OpenNewAccount">
				<input type="hidden" name="JS" value="true">
				<h2>必要事項を入力して下さい</h2>
				<ul class="style3">
					<li class="first">
						<p class="date"><a href="#">項目<b>1</b></a></p>
						<h3>氏名 Name</h3>
						<p><input type="text" name="lastname" id="user_lastname" class="text z_ime_japanese input_text_26" maxlength="42" placeholder="姓"><span class="complement_text">（全角）</span></p>
						<p>　　　　　　　<input type="text" name="firstname" id="user_firstname" class="text z_ime_japanese input_text_26" maxlength="42" placeholder="名"><span class="complement_text">（全角）</span></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>2</b></a></p>
						<h3>ユーザーID user ID</h3>
						<p><input type="text" name="userID" id="account_id" value="" class="number" maxlength="8" ><span class="complement_text">（半角英数）</span></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>3</b></a></p>
						<h3>パスワード Password</h3>
						<p><input type="password" class="number input_text_6" autocomplete="off" id="direct_password_1" name="password" maxlength="8" value="" ><span class="complement_text"></span></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>4</b></a></p>
						<h3>電話番号 Phone#</h3>
						<p><input type="text" name="phone" id="phone" class="text z_ime_japanese input_text_26" maxlength="11"></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>5</b></a></p>
						<h3>メールアドレス Email</h3>
						<p><input type="text" name="email" id="account_id" value="" class="number" maxlength="32" size="32"></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>6</b></a></p>
						<h3>1日の送金限度額 transfer limit</h3>
						<p><input type="text" class="number input_text_6" autocomplete="off" id="direct_password_1" name="amountLimit" maxlength="3" value="" ><span class="complement_text">（万円）</span></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>7</b></a></p>
						<h3>郵便番号 Zipcode</h3>
						<p><input type="text" name="zipcode" size="10" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','region','city');"></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>8</b></a></p>
						<h3>都道府県 Region</h3>
						<p><input type="text" name="region" size="20"></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>9</b></a></p>
						<h3>市区町村 City</h3>
						<p><input type="text" name="city" size="35"></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>10</b></a></p>
						<h3>建物・番地・部屋番号 Address</h3>
						<p><input type="text" name="address1" id="phone" size="35"></p>
					</li>
				</ul>
				<br/>
				<a href="Login.jsp" class="button">戻る</a>　　　<a href="" class="button"><input type="submit" value="　口座開設　" style="background-color:transparent; color:white; border:0"></a>
			</div>
		</form>
	</div>
</div>
<div id="copyright">
	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>