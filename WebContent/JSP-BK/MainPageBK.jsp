<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja"><head>
<meta http-equiv="content-type" content="text/html;charset=Shift_JIS">
<!-- title -->
<title>Demo - メインページ</title>
<!-- /title -->
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Cache-Control" content="no-store">
<meta http-equiv="Expires" content="0">
<link rel="stylesheet" type="text/css" href="https://directg.s.bk.mufg.jp/refresh/_DIRECT_STYLE/COMMON/Common.css">
<link rel="stylesheet" type="text/css" href="css/Login.css">

<jsp:useBean id="userinfo" class="pack.UserInfoBean" scope="session"/>

</head>
<body class=" ib_top">
<div id="skip_link"><a href="#strat_position">本文へ移動</a></div>
<div id="wrapper">
<div id="container">
  <!-- MainContents-->

  <form  method="POST" action="" name="AnotherForm" onSubmit="return false;">
  </form>
  <form  method="POST" action="/ib/dfw/APL/bnkib/banking" name="MainForm" onSubmit="return false;">
    <!-- Menu -->
    <div id="menu">
      <h1 class="logo"><a href="Login.jsp" ><img src="img/login/LoginLogo.jpg" alt="ロゴ"></a></h1>

      <ul id="list">
        <li class="first_child"><a href="#" onClick="JavaScript:doTransaction2('AD001_065', false); return false;"><img src="img/main/btn_menu_01.jpg" width="263" height="44" alt="口座一覧（残高）をみる"></a></li>
        <li><a href="#" ><img src="img/main/btn_menu_02.jpg" width="263" height="44" alt="入出金明細をみる"></a></li>
        <li><a href="#" ><img src="img/main/btn_menu_03.jpg" width="263" height="44" alt="振込・振替をする"></a></li>


      </ul>

      <div id="faq"><a href="#" onClick="JavaScript:openFAQWindow('AD001_019', 'AG003'); return false;"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/btn_faq_off.gif" width="262" height="44" alt="新規ウィンドウが開きます。よくあるご質問はこちら"></a></div>
      </div>

  <input type="hidden" name="SENTAKU" value="" />
    <!-- /Menu -->
    <div id="contents">
      <!-- Header -->
      <div id="header">
        <div class="utilities">
          <ul class="functions">
            <li class="font_size">
              <div class="heading">文字サイズの変更</div>
              <ol>
                <li><a href="#" id="s-btn" >小さく</a></li>
                <li><a href="#" id="m-btn" >中</a></li>
                <li><a href="#" id="l-btn" >大きく</a></li>
                </ol>
              </li>
            <li class="help"><a href="#">ヘルプ</a></li>
            <li class="logout"><a href="#" onClick="JavaScript:logoutFromAD001(); return false;">ログアウト</a></li>
            </ul>
          </div>
        <!-- Message-->


        <!-- /Message-->
        <div class="user_info">

          <ul class="situation flat_unit" id="strat_position">

              <li class="eco_info fleft"><a href="#" onClick="JavaScript:goAnother('../ibp/torihikikanri/EtsuuchiIchiranShokiHyouziAction.do?action=start&amp;kidokuKubun=' + '1'); return false;">通知メッセージ</a><p><span>未読 0 件</span></p></li>


              <li class="history fright">前回ログイン：2017年**月**日 **時**分</li>

          </ul>

        </div>
      </div>
      <!-- /Header -->

	<%
		String name = "";
		if(userinfo.getName() != ""){
			name = userinfo.getName();
		} else if (userinfo.getUserid() != ""){
			name = userinfo.getUserid();
		} else {
			name = "テストユーザー";
		}
	%>
      <div id="account">
        <div class="user"><h2><%=name %>さまの代表口座</h2></div>
        <div class="situation">
          <table class="situation_data" summary="">
            <tr>
              <td>　　</td>
            </tr>
            <tr>

              <td><p class="first_child"><strong class="account_type">普通預金</strong>（残高）</p><p>支店名 ********</p>

              </td>
              <td class="number"><p id="setAmountDisplay">999,999,999<span>円</span></p>
              </td>
              <td class="acconunt_btn">
                <ul>
                  <li class="last_child">
                      <a href="Transfer.jsp"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/btn_account_02_off.gif" width="159" height="37" alt="振込・振替をする"></a>
                  </ul>
                </td>
              </tr>
            <tr>
              <td>　　</td>
            </tr>
            </table>

          </div>
        </div>

      <div id="regist">
        <div class="regist_title">
          <h2><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/title_user_regist.gif" width="324" height="15" alt="Ｅメールアドレスや住所の変更はありませんか？"></h2>
          </div>
        <div class="regist_inner flat_unit">
          <div class="regist_text fleft">
            <p>現在の登録内容を確認してください。</p>
            </div>
          <div class="regist_btn fright">
              <p class="btn"><a href="ChangeProfile.jsp"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/btn_regist_off.gif" alt="登録内容を確認する" width="225" height="41"></a></p>
            </div>
          </div>
        </div>
      </div>
  </form>
  <!-- /MainContents -->
</div>
  <!-- Footer -->

<!-- /Footer -->
</div>
</body>
</html>


