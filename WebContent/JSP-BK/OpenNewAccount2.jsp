<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html;charset=Shift_JIS">
<!-- title -->
<title>新規口座開設 - デモ</title>
<!-- /title -->

<jsp:useBean id="userinfo" class="pack.UserInfoBean" scope="session"/>

<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Cache-Control" content="no-store">
<meta http-equiv="Expires" content="0">
<link rel="stylesheet" type="text/css" href="https://directg.s.bk.mufg.jp/refresh/_DIRECT_STYLE/COMMON/Common.css">
<link rel="stylesheet" type="text/css" href="https://directg.s.bk.mufg.jp/refresh/_DIRECT_STYLE/LOGINOUT/LOGINOUT.css">

</head>




<body class=" under_layer login" onLoad="autoFocus()">
<div id="skip_link"><a href="#contents">本文へ移動</a></div>
<div id="wrapper">
  <div id="container">


    <!-- MainContents-->
    <form  method="post" action="" name="AnotherForm" onSubmit="return false;">
    </form>


  <form action="/ibg/dfw/APLIN/loginib/login" method="post" name="MainForm" onSubmit="return false;">

<div id="header">
 <div class="logo"><img src="LoginLogo.jpg" alt="Demo Bank Login Page"></div>
  <div class="utilities">
    <ul class="functions">
      <li class="font_size">
        <div class="heading">文字サイズの変更</div>
        <ol>
          <li><a href="#" id="s-btn" onclick="mufgJS.setFontSize('small'); return false;">小さく</a></li>
          <li><a href="#" id="m-btn" onclick="mufgJS.setFontSize('middle'); return false;">中</a></li>
          <li><a href="#" id="l-btn" onclick="mufgJS.setFontSize('big'); return false;">大きく</a></li>
        </ol>
      </li>
      <li class="help"><a target="_blank">ヘルプ</a></li>
      <li class="btn_close"><a href="#" onclick="window.close(); return false;">閉じる</a></li>
    </ul>
  </div>
</div>

  </form>
<!-- MainContents-->

<div id="contents" >















<div class="service_flow">
  <ul>
    <li class="first_child">口座新規開設</li>
    <li class="current"><span class="speech">（現在位置）</span><span>基本情報入力</span></li>
  </ul>
</div>
<div class="keiyaku_2_8_1">



    <!-- Message-->

  <form name="openNewAccount" method="post" action="OpenNewAccount">

    <div class="user_input section">
      <div class="bottom">
        <div class="inner">
          <div class="h2_noline">
            <h2>下記基本情報をご入力ください<span class="h2_sup"></span></h2>
          </div>
          <p class="admb_s"><strong>お手元に「ご契約カード」を用意してください。</strong></p>


          <table class="record_data tb_touroku delmb" summary="お名前の入力。">
            <tbody>
              <tr class="first_data bottom_line">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="user_name">お名前</label></p></th>
                <td>
                  <p class="user_input_field"><input type="text" name="name" id="user_name" class="text z_ime_japanese input_text_26" maxlength="142"><span class="complement_text"></span></p>
                  <span class="complement_text">※姓と名の間にスペースは不要です。</span></td>
              </tr>
            </tbody>
          </table>


          <table class="record_data tb_touroku delmb" summary="ユーザーIDの入力。">
            <tbody>
              <tr class="first_data">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="account_id">ユーザーID</label></p>
                  <div class="support_contents keiyaku_fukidashi_account_id02">

                  </div>
                </th>
                <td>
                  <input type="text" name="userID" id="account_id" value="" class="number" maxlength="22" ><span class="complement_text">（半角英数12桁以内）</span>
                </td>
              </tr>
            </tbody>
          </table>

          <table class="record_data tb_touroku delmb" summary="住所の入力。">
            <tbody>
              <tr class="first_data">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="account_id">住所</label></p>
                  <div class="support_contents keiyaku_fukidashi_account_id02">

                  </div>
                </th>
                <td>
                  <input type="text" name="address" id="account_id" value="" class="number" maxlength="100" ><span class="complement_text">（全角）</span>
                </td>
              </tr>
            </tbody>
          </table>


          <table class="record_data tb_touroku delmb" summary="メールアドレスの入力。">
            <tbody>
              <tr class="first_data">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="account_id">メールアドレス</label></p>
                  <div class="support_contents keiyaku_fukidashi_account_id02">

                  </div>
                </th>
                <td>
                  <input type="text" name="email" id="account_id" value="" class="number" maxlength="100" ><span class="complement_text">（半角英数）</span>
                </td>
              </tr>
            </tbody>
          </table>

                    <table class="record_data tb_touroku delmb" summary="送金限度額の入力。">
            <tbody>
              <tr class="first_data">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="account_id">1日の送金限度額</label></p>
                  <div class="support_contents keiyaku_fukidashi_account_id02">

                  </div>
                </th>
                <td>
                  <input type="text" name="amountLimit" id="account_id" value="" class="number" maxlength="100" ><span class="complement_text">万円　　（半角数字、最高200万円まで）</span>
                </td>
              </tr>
            </tbody>
          </table>



          <table class="record_data admb_s tb_touroku" summary="ダイレクトパスワードの入力。">
            <tbody>
              <tr>
                <th class="aleft" scope="row">
                  <p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="direct_password_1">パスワード</label></p>
                  <div class="support_contents keiyaku_fukidashi_direct_pw">

                  </div>
                </th>
                <td>
                  <ul class="punctuation_marker admb_s">
                  </ul>
                  <div class="flat_unit admb_m">
                    <div class="inline_fleft"><p class="user_input_field"><input type="password" class="number input_text_6" autocomplete="off" id="direct_password_1" name="password" maxlength="4" value="" ><span class="complement_text">（半角英数12桁以内）</span></p></div>
                    <div class="inline_fright">
                      <button class="keyboard support_text_img" type="button" onclick="mufgJS.SWKB.open( 'direct_password_1', 'numbers', this, event ); return false;"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/btn_keyboad_off.gif" width="30" height="30" alt="" class="icon_user_action"><span class="button_link">ソフトウェアキーボードで入力</span></button>
                    </div>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>


        </div>
      </div>
    </div>
    <div class="buttons">
      <p class="aside"><a href="Login.jsp" ><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/btn_back_off.gif" width="86" height="34" alt="戻る"></a></p>
       	<p class="acenter admb_m"><a href="javascript:void(0)"><input type="image" src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/btn_login_off.gif" width="233" height="52" alt="ログイン"></a></p>
    </div>
    <div class="msgarea">

    </div>
  </form>
</div>


</div>
  <!-- Footer -->

  <!-- /Footer -->
</div>

</body>
</html>