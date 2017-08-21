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


<jsp:useBean id="transfer" class="pack.TransferBean" scope="request"/>


</head>
<body class=" nomenu_help under_layer ">


<!-- ■■■■ Sift Science Listener Snippet ■■■■
<script type="text/javascript">
  var _user_id = 'ID-0001';            // Set to the user's ID, username, or email address, or '' if not yet known.
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
    <li class="current"><span class="speech">（現在位置）</span><span>送金</span></li>
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
    <!-- /Message-->

 <form name="Transfer" method="post" action="Transfer">
    <input type="hidden" name="sequenceNumber" value="2"><input type="hidden" name="sequenceValue" value="645874563">
    <input type="hidden" name="submitFormParam">

    <div class="user_input section">
      <div class="bottom">
        <div class="inner">
          <div class="h2_noline">
            <h2>送金情報をご入力ください<span class="h2_sup"></span></h2>
          </div>

          <table class="record_data tb_touroku delmb" summary="送金先の入力。">
            <tbody>
              <tr class="first_data bottom_line">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="user_name">送金先氏名</label></p></th>
                <td>
                  <p class="user_input_field"><input type="text" name="toName" id="user_name" class="text z_ime_japanese input_text_26" maxlength="142" value=<%=transfer.getToName()%>><span class="complement_text">（全角）</span></p>
              </tr>
            </tbody>
          </table>

          <table class="record_data tb_touroku delmb" summary="送金先口座番号の入力。">
            <tbody>
              <tr class="first_data">
                <th class="aleft" scope="row"><p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="account_id">口座番号</label></p>

                </th>
                <td>
                  <input type="text" name="accountNumber" id="account_id" class="number" maxlength="8" minlength="8" value=<%=transfer.getAccountNumber()%>><span class="complement_text">（半角数字8桁）</span>
                </td>
              </tr>
            </tbody>
          </table>

          <table class="record_data admb_s tb_touroku" summary="送金額の入力。">
            <tbody>
              <tr>
                <th class="aleft" scope="row">
                  <p class="idt_icon_must"><img src="https://directg.s.bk.mufg.jp/refresh/imgs/_DIRECT_IMAGE/COMMON/icon_must.gif" width="43" height="19" alt="必須" class="icon_must" title="必須"><label for="direct_password_1">送金額</label></p>

                </th>
                <td>
                  <ul class="punctuation_marker admb_s">

                  </ul>
                  <div class="flat_unit admb_m">
                    <div class="inline_fleft"><p class="user_input_field"><input type="text" class="number input_text_6" autocomplete="off" id="direct_password_1" name="amount" maxlength="7" value=<%=transfer.getAmount()%>><span class="complement_text">円　（半角数字）</span></p></div>

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
       	<p class="acenter admb_m"><a href="javascript:void(0)"><input type="image" src="Transfer.jpg" width="233" height="52" alt="送金"></a></p>
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
