<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja"><head>
<!-- title -->
<title>Demo - 登録情報変更</title>
<!-- /title -->

<meta http-equiv="content-type" content="text/html;charset=Shift_JIS">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Cache-Control" content="no-store">
<meta http-equiv="Expires" content="0">

<link rel="stylesheet" type="text/css" href="https://directg.s.bk.mufg.jp/refresh/_DIRECT_STYLE/COMMON/Common.css">
<link rel="stylesheet" type="text/css" href="https://directg.s.bk.mufg.jp/refresh/_DIRECT_STYLE/KEIYAKU/KEIYAKU.css">


<jsp:useBean id="userinfo" class="pack.UserInfoBean" scope="session"/>

</head>
<body class=" nomenu_help under_layer ">


<!-- ■■■■ Sift Science Listener Snippet ■■■■
<script type="text/javascript">
  var _user_id = 'ID-0001';    // Set to the user's ID, username, or email address, or '' if not yet known.
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
</script>-->



<div id="skip_link"><a href="#contents">本文へ移動</a></div>
<div id="wrapper">
<div id="container">
<!-- MainContents-->
<!-- Header -->

    <div id="header">
     <div class="logo"><img src="LoginLogo.jpg" alt="Demo Bank Login Page" width="120" height="60"></div>
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
          <li class="help"><a href="#" target="_blank">ヘルプ</a></li>
          <li class="header_close"><a href="#" onclick="WinCloseNoMessage(); return false;">閉じる</a></li>
        </ul>
      </div>
    </div>
<!-- /Header -->
<div id="contents" >


<div class="service_flow">
  <ul>
    <li class="first_child">メインページ</li>
    <li class="current"><span class="speech">（現在位置）</span><span>登録情報変更</span></li>
  </ul>
</div>
<div class="keiyaku_2_8_1">

<%
	String message = "";
	if(request.getAttribute("updateMessage") != null){
		message = request.getAttribute("updateMessage").toString();
	}

%>
<Font size=4 color="red"><b><%= message %></b></Font>

 <!-- Message-->

 <form name="updateProfile" method="post" action="UpdateProfile">


   <div class="user_input section">
      <div class="bottom">
        <div class="inner">
          <div class="h2_noline">
            <h2>基本情報をご入力ください<span class="h2_sup"></span></h2>
          </div>

          <table class="record_data tb_touroku delmb" summary="お名前の入力。">
            <tbody>
              <tr class="first_data bottom_line">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="user_name">お名前</label></p></th>
                <td>
                  <p class="user_input_field"><%=userinfo.getName() %> <input type="hidden" name="name" value=<%=userinfo.getName() %>> </p></td>

              </tr>
            </tbody>
          </table>

          <table class="record_data tb_touroku delmb" summary="ご契約番号の入力。">
            <tbody>
              <tr class="first_data">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="account_id">ユーザーID</label></p>

                </th>
                <td>
                  <%=userinfo.getUserid() %><input type="hidden" name="userID" value=<%=userinfo.getUserid() %>><span class="complement_text"></span>
                </td>
              </tr>
            </tbody>
          </table>

          <table class="record_data admb_s tb_touroku" summary="ダイレクトパスワードの入力。">
            <caption class="speech">ダイレクトパスワードの入力</caption>
            <tbody>
              <tr>
                <th class="aleft" scope="row">
                  <p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="direct_password_1">パスワード</label></p>

                </th>
                <td>
                  <ul class="punctuation_marker admb_s">

                  </ul>
                  <div class="flat_unit admb_m">
                    <div class="inline_fleft"><p class="user_input_field"><input type="password" class="number input_text_6" autocomplete="off" id="direct_password_1" name="password" maxlength="8" value=<%=userinfo.getPassword() %> ><span class="complement_text">（半角英数12桁以内）</span></p></div>
                    <div class="inline_fright">
                      <span class="speech">セキュリティ対策のため、音声ブラウザ・スクリーンリーダーでは、ソフトウェアキーボードを利用できません。ソフトウェアキーボードを誤って立ち上げた場合は、閉じるボタンをご利用ください。</span>
                      <button class="keyboard support_text_img" type="button" ><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/btn_keyboad_off.gif" width="30" height="30" alt="" class="icon_user_action"><span class="button_link">ソフトウェアキーボードで入力</span></button>
                    </div>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>

        </div>
      </div>
    </div>


    <div class="user_input section">
      <div class="bottom">
        <div class="inner">
          <div class="h2_noline">
            <h2>口座関連情報をご入力ください<span class="h2_sup"></span></h2>
          </div>

          <table class="record_data tb_touroku delmb" summary="電話番号の入力。">
            <tbody>
              <tr class="first_data bottom_line">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="user_name">電話番号</label></p></th>
                <td>
                  <p class="user_input_field"><input type="text" name="phone" id="phone" class="text z_ime_japanese input_text_26" maxlength="11" value=<%=userinfo.getPhone() %>><span class="complement_text">（半角数字11桁以内）</span></p>
              </tr>
            </tbody>
          </table>

          <table class="record_data tb_touroku delmb" summary="メールアドレスの入力。">
            <caption class="speech">メールアドレスの入力</caption>
            <tbody>
              <tr class="first_data">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="account_id">メールアドレス</label></p>

                </th>
                <td>
                  <input type="text" name="email" id="account_id" class="number" maxlength="22" value=<%=userinfo.getEmail() %>> <span class="complement_text">（半角英数）</span>
                </td>
              </tr>
            </tbody>
          </table>

          <table class="record_data admb_s tb_touroku" summary="1日の送金限度額の入力。">
            <caption class="speech">1日の送金限度額の入力</caption>
            <tbody>
              <tr>
                <th class="aleft" scope="row">
                  <p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="direct_password_1">1日の送金限度額</label></p>

                </th>
                <td>
                  <ul class="punctuation_marker admb_s">

                  </ul>
                  <div class="flat_unit admb_m">
                    <div class="inline_fleft"><p class="user_input_field"><input type="text" class="number input_text_6" autocomplete="off" id="direct_password_1" name="amountLimit" maxlength="3" value=<%=userinfo.getAmountLimit() %>><span class="complement_text">万円　（半角数字、最高200万円）</span></p></div>

                  </div>
                </td>
              </tr>
            </tbody>
          </table>

        </div>
      </div>
    </div>

    <div class="user_input section">
      <div class="bottom">
        <div class="inner">
          <div class="h2_noline">
            <h2>住所をご入力ください<span class="h2_sup"></span></h2>
          </div>

          <table class="record_data tb_touroku delmb" summary="郵便番号の入力。">
            <tbody>
              <tr class="first_data bottom_line">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="user_name">郵便番号</label></p></th>
                <td>
                  <p class="user_input_field"><input type="text" name="zipcode" size="10" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','region','city');" value=<%=userinfo.getZipcode()%>><span class="complement_text">（半角数字8桁以内）</span></p>
              </tr>
            </tbody>
          </table>

          <table class="record_data tb_touroku delmb" summary="都道府県の入力。">
            <tbody>
              <tr class="first_data">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="account_id">都道府県</label></p></th>
                <td>
                  	<input type="text" name="region" size="20" value=<%=userinfo.getRegion() %>>
                </td>
              </tr>
            </tbody>
          </table>

          <table class="record_data admb_s tb_touroku" summary="市区町村の入力。">
            <tbody>
              <tr>
                <th class="aleft" scope="row">
                  <p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="direct_password_1">市区町村</label></p></th>
                <td>
                  <ul class="punctuation_marker admb_s"> </ul>
                  <div class="flat_unit admb_m">
                    <p class="user_input_field"><input type="text" name="city" size="60" value=<%=userinfo.getCity() %>><span class="complement_text"></span></p>

                  </div>
                </td>
              </tr>
            </tbody>
          </table>



          <table class="record_data admb_s tb_touroku" summary="番地の入力。">
            <tbody>
              <tr>
                <th class="aleft" scope="row">
                  <p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="direct_password_1">番地・建物・部屋番号</label></p>

                </th>
                <td>
                  <ul class="punctuation_marker admb_s">

                  </ul>
                  <div class="flat_unit admb_m">
                    <div class="inline_fleft"><p class="user_input_field"><input type="text" name="address1" id="phone" size="60" value=<%=userinfo.getAddress1() %>><span class="complement_text"></span></p></div>

                  </div>
                </td>
              </tr>
            </tbody>
          </table>

        </div>
      </div>
    </div>


    <div class="buttons">
      <p class="aside"><a href="MainPage.jsp" ><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/btn_back_off.gif" width="86" height="34" alt="戻る"></a></p>
       	<p class="acenter admb_m"><a href="javascript:void(0)"><input type="image" src="Update.jpg" width="233" height="52" alt="登録情報更新"></a></p>
    </div>

  </form>
</div>


</div>
<!-- /MainContents -->
</div>
<!-- Footer -->


<!-- /Footer -->
</div>
<script type="text/javascript">VLTrace_custom_getparam='p=02003';</script>




</body>
</html>
