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
<title>UpdateProfile - Demo</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="../css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>

<jsp:useBean id="userinfo" class="pack.UserInfoBean" scope="session"/>
<%
	String message = "";
	if(request.getAttribute("updateMessage") != null){
		message = request.getAttribute("updateMessage").toString();
	}


%>

</head>
<body>
 <!-- ■■■■ Simility Snippet ■■■■-->
<script type="text/javascript">
 var similityContext = {
	     "customer_id": "5e295f6c-5fd2-11e7-907b-a6006ad3dba0",  // required; provided to you by simility during signup
	     "session_id": <%= session.getId() %>,  // required; unique per user session, typically persistent by your backend
	     "user_id": <%= userinfo.getUserid()%>,  // recommended; user_id variable from your session, typically persistent on your backend
	     "event_types": "profile_change_load",  // required; Comma separated snake_case strings of action/event which is associated with this activity/view
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
		 <form name="updateProfile" method="post" action="UpdateProfile">
			<div id="fbox1">
				 <form name="updateProfile" method="post" action="UpdateProfile">
				 <input type="hidden" name="JS" value="true">
				<h2><Font color="red"><b><%= message %></b></Font></h2>
				</br>
				<h2>必要事項を入力して下さい</h2>
				<ul class="style3">
					<li class="first">
						<p class="date"><a href="#">項目<b>1</b></a></p>
						<h3>氏名 Name</h3>
						<p><%=userinfo.getLastname() %><%=userinfo.getFirstname() %>
						<input type="hidden" name="lastname" value=<%=userinfo.getLastname() %>><input type="hidden" name="firstname" value=<%=userinfo.getFirstname() %>></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>2</b></a></p>
						<h3>ユーザーID user ID</h3>
						<p><%=userinfo.getUserid() %><input type="hidden" name="userID" value=<%=userinfo.getUserid() %>></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>3</b></a></p>
						<h3>パスワード Password</h3>
						<p><input type="password" class="number input_text_6" autocomplete="off" id="direct_password_1" name="password" maxlength="8" value=<%=userinfo.getPassword() %> ><span class="complement_text"></span></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>4</b></a></p>
						<h3>電話番号 Phone#</h3>
						<p><input type="text" name="phone" id="phone" class="text z_ime_japanese input_text_26" maxlength="11" value=<%=userinfo.getPhone() %>></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>5</b></a></p>
						<h3>メールアドレス Email</h3>
						<p><input type="text" name="email" id="account_id" class="number" maxlength="32" size="32" value=<%=userinfo.getEmail() %>> </input></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>6</b></a></p>
						<h3>1日の送金限度額 transfer limit</h3>
						<p><input type="text" class="number input_text_6" autocomplete="off" id="direct_password_1" name="amountLimit" maxlength="3" value=<%=userinfo.getAmountLimit() %> ><span class="complement_text">（万円）</span></p>
					</li>
					</br>
					<li class="first">
						<p class="date"><a href="#">項目<b>7</b></a></p>
						<h3>郵便番号 zip code</h3>
						<p><input type="text" name="zipcode" size="10" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','region','city');" value=<%=userinfo.getZipcode()%>></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>8</b></a></p>
						<h3>都道府県 Region</h3>
						<p><input type="text" name="region" size="20" value=<%=userinfo.getRegion() %>></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>9</b></a></p>
						<h3>市区町村 City</h3>
						<p><input type="text" name="city" size="40" value=<%=userinfo.getCity() %>></p>
					</li>
					<li class="first">
						<p class="date"><a href="#">項目<b>10</b></a></p>
						<h3>建物・番地・部屋番号 Address</h3>
						<p><input type="text" name="address1" id="phone" size="40" value=<%=userinfo.getAddress1() %>></p>
					</li>
				</ul>
				<br/>
				<a href="MainPage.jsp" class="button">Back</a>　　　<a href="#" class="button"><input type="submit" value="　更新 Update　" style="background-color:transparent; color:white; border:0"></a>
			</div>
		</form>
	</div>
</div>
<div id="copyright">
	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>

