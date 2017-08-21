<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html;charset=Shift_JIS">
<!-- title -->
<title>ログイン - デモ</title>
<!-- /title -->

<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Cache-Control" content="no-store">
<meta http-equiv="Expires" content="0">
<link rel="stylesheet" type="text/css" href="https://directg.s.bk.mufg.jp/refresh/_DIRECT_STYLE/COMMON/Common.css">
<link rel="stylesheet" type="text/css" href="https://directg.s.bk.mufg.jp/refresh/_DIRECT_STYLE/LOGINOUT/LOGINOUT.css">

<script type="text/javascript">


</script>
</head>




<body class=" under_layer login" onLoad="autoFocus()">


<!-- ■■■■ Sift Science Listener Snippet ■■■■-->
<script type="text/javascript">
  var _user_id = 'ID-0005';            // Set to the user's ID, username, or email address, or '' if not yet known.
  var _session_id = 'session'; // Set to a unique session ID for the visitor's current browsing session.

  var _sift = window._sift = window._sift || [];
  _sift.push(['_setAccount', 'd44b561c8c']); //Javascript利用キー
  _sift.push(['_setUserId', _user_id]);
  _sift.push(['_setSessionId', _session_id]);
  _sift.push(['_trackPageview']);

 (function() {
   function ls() {
     var e = document.createElement('script');
     e.src = 'https://cdn.siftscience.com/s.js';
     document.body.appendChild(e);
   }
   if (window.attachEvent) {
     window.attachEvent('onload', ls);
   } else {
     window.addEventListener('load', ls, false);
   }
 })();
</script>




<div id="skip_link"><a href="#contents">本文へ移動</a></div>
<div id="wrapper">
  <div id="container">



    <!-- MainContents-->
    <form  method="post" action="" name="AnotherForm" onSubmit="return false;">
    </form>




<div id="header">
 <div class="logo"><img src="LoginLogo.jpg" alt="Demo Bank Login Page"></div>
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
      <li class="help"><a target="_blank">ヘルプ</a></li>
      <li class="btn_close"><a href="#" onclick="window.close(); return false;">閉じる</a></li>
    </ul>
  </div>
</div>

      <div id="contents">
        <h1>ログイン</h1>
        <div><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_user/notice_loginout1_1_1.gif" alt="" class="noticeGif"></div>
        <div class="login_1_1_1">
        <table id="layoutTable" summary="">
        <tr>
        <td class="col1_1"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/bg_frame_red_top.gif" width="600" height="4" alt=""></td>
        <td rowspan="7" class="col1_2"></td>
        <td class="col1_3"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/bg_frame_grey_top.gif" width="250" height="4" alt=""></td>
        </tr>
        <tr>
        <td rowspan="5" class="col2_1">
        <div class="article">
          <div class="bg01">
            <div class="bg02">
              <div class="user_input">
                <div class="bottom">
                  <div class="inner">

                    <form action="Login" method="post" name="LoginForm"">

                    <table class="record_data" summary="ログインフォームの入力。">
                      <caption class="speech">ログインフォーム</caption>
                      <tbody>
                        <tr class="first_data">
                          <th class="aleft" scope="row"><label for="account_id">ユーザーID</label></th>
                          <td><input type="text" name="userID" id="userID" value="" maxlength="22" tabIndex="1" autocomplete="off" onkeydown="submitOnEnter(event);"> <span class="complement_text">（半角数字）</span></td>
                        </tr>
                        <tr class="ib_password">
                          <th class="aleft" scope="row"><label for="ib_password">パスワード</label></th>
                          <td><input type="password" name="password" id="password" value="" maxlength="20" tabIndex="2" autocomplete="off" onkeydown="submitOnEnter(event);"> <span class="complement_text">（半角英数字・記号4～16桁）</span>
                            <div class="support_contents_login">
                            </div></td>
                        </tr>
                      </tbody>
                    </table>
                      <div class="support_contents_hasFocus admb_s">
                      <div class="support_contents_body pos_bottom_left_edge">
                      </div>
                    </div>

                    <p class="acenter admb_m"><a href="javascript:void(0)"><input type="image" src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/btn_login_off.gif" alt="ログイン" width="233" height="52"></a></p>
					</form>

                  </div>
                </div>
              </div>
              <ul class="simplelink">
                <li><a href="javascript:void(0)" onclick="gotoSaitouroku(); return false;" class="internal">パスワードを忘れた・ロックされた場合(パスワードの再登録) </a></li>
              </ul>
            </div>
          </div>
        </div>
        </td>
        <td class="col2_2">
        <div class="aside">
          <div class="section" id="first">
            <div class="bg01">
              <div class="bg02">


                <h2><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/txt_first.gif" alt="初めてご利用の場合" width="219" height="33"></h2>
                <p><strong class="attention">初めてご利用のお客さま</strong>はアカウント作成手続きが必要です。</p>
                <p class="btn"><a href="OpenNewAccount.jsp" ><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/btn_first_off.gif" alt="新規開設" width="145" height="41"></a></p>
                <ul class="punctuation_marker">
                </ul>


              </div>
            </div>
          </div>
        </div>
        </td>
        </tr>
        <tr>
         <td class="col3_1"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/bg_frame_grey_btm.gif" alt="" width="250" height="4"></td>
        </tr>
        <tr>
         <td class="col4_1"></td>
        </tr>
        <tr>
         <td class="col5_1"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/bg_frame_grey_top.gif" alt="" width="250" height="4"></td>
        </tr>
        <tr>
        <td class="col6_1">
         <div class="aside">
          <div class="section" id="reissue">
            <div class="bg01">
              <div class="bg02">
                <h2><img src="card-reissue.jpg" alt="ご契約カードを再発行したい" width="160" height="37"></h2>
                <p class="btn"><a href="" class="internal">ご契約カード再発行</a></p>
              </div>
            </div>
          </div>
        </div>
        </td>
        </tr>
        <tr>
        <td class="col7_1"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/bg_frame_red_btm.gif" alt="" width="600" height="4"></td>
        <td class="col7_2"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/LOGINOUT/bg_frame_grey_btm.gif" alt="" width="250" height="4"></td>
        </tr>
        <tr>
        <td colspan="3" class="col8_1"></td>
        </tr>
        <tr>
        <td colspan="3" class="col9_1">
          <ul class="simplelink">
            <li><a target="_blank" class="internal"><span class="speech">新規ウィンドウが開きます。</span>インターネットバンキングの推奨環境</a><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_newwindow.gif" width="14" height="11" alt="" class="icon_popup"></li>
          </ul>
          <p class="complement_text">システムメンテナンスのため毎月第2土曜日21:00～翌朝7:00は利用できません。</p>
        </td>
        </tr>
        </table>
        <div class="secured">
        </div>
        </div>
      </div>
<!-- /MainContents -->
</div>
  <!-- Footer -->
  <div id="footer">
    <div id="footer_info">
    </div>
    <div id="footer_base">
    </div>
  </div>
  <!-- /Footer -->
</div>

</body>
</html>

