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

<!-- ■■■■ Sift Science Snippet ■■■■-->
<script type="text/javascript">

  var _sift = window._sift = window._sift || [];
  _sift.push(['_setAccount', 'd44b561c8c']); //Javascript利用キー
  _sift.push(['_setUserId', '<%= userinfo.getUserid()%>']); //初回アクセス時は空
  _sift.push(['_setSessionId', '<%= session.getId() %>']);
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

    <script>

        var similityContext = {
            "customer_id": "5e295f6c-5fd2-11e7-907b-a6006ad3dba0",  // required; provided to you by simility during signup
            "session_id": "your.page.session.id.variable",  // required; unique per user session, typically persistent by your backend
            "user_id": "your.user.id.variable",  // recommended; user_id variable from your session, typically persistent on your backend
            "event_types": "payment_form",  // required; Comma separated snake_case strings of action/event which is associated with this activity/view
            "zone": "us" // If data regulatory compliance requires your data to be hosted in Europe datacenters, please specify zone as "eu"
        };
    </script>
<script type="application/javascript" src="https://cdn.simility.com/b.js"></script>
    <script>

        !function(){

            //暗号化的なもの
            function e(e,n){
                for(var t="",i="0123456789abcdef",c="#$%,-.0123456789:;<=>@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_abcdefghijklmnopqrstuvwxyz{|}Â¢Â£Â¤Â¥Â¦Â§Â©Â®ÂµÂ¶Ã€ÃÃ‚ÃƒÃ„ÃˆÃ‰ÃŠÃ‹ÃŒÃÃŽÃÃ’Ã“Ã”Ã•Ã–Ã™ÃšÃ›ÃœÃ Ã¡Ã¢Ã£Ã¤Ã¨Ã©ÃªÃ«Ã¬Ã­Ã®Ã¯Ã²Ã³Ã´Ã¶Ã¹ÃºÃ»Ã¼Ã½Ã¾Ã¿Ä€ÄÄ‚ÄƒÄ†Ä‡ÄˆÄ‰ÄŠÄ‹ÄŒÄÄŽÄÄ’Ä“Ä”Ä•ÄœÄÄžÄŸÄ Ä¡Ä¤Ä¥Ä´ÄµÄ¹ÄºÅƒÅ„Å‡ÅˆÅŽÅÅÅ‘Å’Å“Å”Å•Å˜Å™ÅšÅ›ÅœÅÅ¤Å¥Å¦Å§Å¨Å©ÅªÅ«Å¬Å­Å°Å±Å´ÅµÅ¶Å·Å¹ÅºÅ»Å¼Å½Å¾Æ‚ÆƒÆ†Æ‹ÆŒÆŽÆÆÆœÆŸÆ©Æ±ÆµÆ¶ÇÇŽÇÇÇ‘Ç’Ç“Ç”È²È³È¸È¹Ê˜ÊžÎ†ÎˆÎ‰ÎŠÎŒÎÎ”Î˜Î›Î Î¦Î¨Î©Î±Î²Î³Î´ÓªÐ„È»È¼",s=0,r=0;s<n.length;s++) {
                    var o=n.charCodeAt(s)^10&e.charCodeAt(r);
                    ++r==e.length&&(r=0),
                    n.charCodeAt(s)>127? (t+="&",t +=c.charAt(o>>8&255), t+=c.charAt(255&o)): (t+=i.charAt(o>>4&15),
                    t+=i.charAt(15&o))
                }
                return t
            }
            //nullチェック的なもの
            //引数eがnullかundefinedの場合はtrueを返却
            //引数eが0の場合はfalseを返す
            function n(e){
                return void 0===e||null===e||"undefined"===e
            }

            //特定の文字列が含まれている場合に値を抜き出す
            function c(e){
                for(var n=e.split("\r\n"),t=0;t<n.length;t++){
                    var i=n[t];//nのt行目

                    if(~i.indexOf("a=candidate")){//a=candidateがある場合は以下を実行
                        var c=i.split(" "),s=c[4],r=c[7];
                        if("host"===r&&"0.0.0.0"!==s)
                            return s
                    } else if(~i.indexOf("c=")){//c=がある場合は以下を実行
                        var c=i.split(" "),s=c[2];
                        return s
                    }
                }
            }

            //引数と同じ長さのランダム文字列を作る関数
            function s(e){
                for(var n="0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz",t="",i=0;e>i;i++){
                    var c=Math.floor(Math.random()*n.length);
                    t+=n.substring(c,c+1)
                }
                return t
            }

            //e:["webgl","experimental-webgl","moz-webgl","webkit-3d"]の内のどれかのコンテクスト
            //eのcanvasu情報の一部を置換した情報をビット列にしたものをstrにして返す
            //eがnullならnullを返す
            function l(e){
                try{
                    if(e){
                        e.clearColor(0,0,0,1),
                        e.enable(e.DEPTH_TEST),
                        e.clear(e.COLOR_BUFFER_BIT|e.DEPTH_BUFFER_BIT);
                        var n="attribute vec2 aVertexPosition;varying vec2 vTexCoord;void main(){vTexCoord = aVertexPosition;gl_Position = vec4(aVertexPosition, 0, 1);}";
                        var t="precision mediump float;varying vec2 vTexCoord;uniform vec2 uOffset;void main() {gl_FragColor = vec4(vTexCoord, 0, 1);}";
                        var i=e.createBuffer();
                        e.bindBuffer(e.ARRAY_BUFFER,i),
                        e.bufferData(e.ARRAY_BUFFER,new Float32Array([-.5,-.5,.5,-.5,-.5,.5,.5,.5]),e.STATIC_DRAW);
                        var c=e.createProgram(),s=e.createShader(e.VERTEX_SHADER);
                        e.shaderSource(s,n),e.compileShader(s);
                        var r=e.createShader(e.FRAGMENT_SHADER);

                        if(e.shaderSource(r,t),e.compileShader(r),e.attachShader(c,s),e.attachShader(c,r),e.linkProgram(c),!e.getProgramParameter(c,e.LINK_STATUS))
                            throw e.getError();

                        if(e.useProgram(c),c.vertexPosAttrib=e.getAttribLocation(c,"aVertexPosition"),c.offsetUniform=e.getUniformLocation(c,"uOffset"),e.enableVertexAttribArray(c.vertexPosArray),e.vertexAttribPointer(c.vertexPosAttrib,2,e.FLOAT,!1,0,0),e.uniform2f(c.offsetUniform,1,1),e.drawArrays(e.TRIANGLE_STRIP,0,4),e.canvas)
                            return d(e.canvas.toDataURL().replace("data:image/png;base64,","")).toString()

                    }
                }catch(o){}
                return null
            }

            //eをビットの列にして返す
            function d(e){
                var n=0;
                if(0===e.length)
                    return n;

                for(var t=0;t<e.length;t++){
                    var i=e.charCodeAt(t);
                    n=(n<<5)-n+i,n&=n
                }
                return n
            }

            //cookieに書き込み
            function u(e,n,t){
                var i=f(e,n,t,window.location.hostname);
                document.cookie=i
            }

            //document.cookieの中から引数eの文字列で始まる部分を抜き出す。なかったらnullを返す
            function y(e){
                try{
                    return m(document.cookie,e)
                }catch(n){}

                return null
            }

            //cookieの中身を生成
            //e:キー、n:?,t:日数、i:使われてない
            function f(e,n,t,i){
                var c="";
                if(t){
                    var s=new Date;
                    s.setTime(s.getTime()+24*t*60*60*1e3),
                    c=";expires="+s.toGMTString()
                }
                return e+"="+n+c+"; path=/"
            }

            //e,nともに文字列?
            //n+'='から始まって';'で終わる文字列を返す。なかったらnull
            function m(e,n){
                for(var t=n+"=",i=e.split(";"),c=0;c<i.length;c++){
                    for(var s=i[c];" "==s.charAt(0);)//文字列の一文字が空白になるまでまわす
                        s=s.substring(1,s.length);//一文字目を切り取った文字列

                    if(0==s.indexOf(t))//n+'='から始まるとき以下を実行
                        return s.substring(t.length,s.length)
                }
                return null
            }

            //xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxxの形で文字列を返す(customer_idと同じ形式！)
            //xは0から16までのランダムな整数
            //yはそこから少し演算された整数
            function p(){
                var e,n,t="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split(""),i=[];
                for(i[8]=i[13]=i[18]=i[23]="-",i[14]="4",e=0;36>e;e++)
                    i[e]||(n=0|16*Math.random(),i[e]=t[19==e?3&n|8:n]);
                return i.join("")
            }

            //引数e:e.simUUIDName
            //クッキーからe.simUUIDNameで始まる部分を抜き出して返す。
            //これがnullの場合はローカルストレージからキーe.simUUIDNameに対応する値を取ってきて返す。
            function v(e){
                var t;
                if(window.navigator.cookieEnabled)
                    try{
                        t=y(e)
                    }catch(i){}

                if(n(t))
                    try{
                        t=window.localStorage.getItem(e)
                    }catch(i){}
                return t
            }

            //window.XMLHttpRequestがある場合はundefinedを返す
            //ない場合はActiveXObjectをチェック。あれば["Msxml2.XMLHTTP","Microsoft.XMLHTTP"]の順にある方のオブジェクトを返す。
            //ない場合またはエラーの場合はfalseを返す
            function g(){
                var e=["Msxml2.XMLHTTP","Microsoft.XMLHTTP"];
                if(window.XMLHttpRequest)
                    return
                new XMLHttpRequest;
                if(window.ActiveXObject)
                    for(var n=0;n<e.length;n++)
                        try{
                            return new ActiveXObject(e[n])
                        }catch(t){}

                return!1
            }

            //dummy画像の取得
            //eはurl、n:POSTなど、t:?
            function h(e,n,t){
                "POST"==n&&(e=e+"&s="+encodeURIComponent(t));
                var i=new Image;
                i.style.display="none",i.style.visibility="hidden",
                i.src=e
                alert("e=" + e);
            }

            //e,t,iで指定されるurlに画像を取りに行く
            //c:callback function
            function x(e,t,i,c){
                var s=g();//XMLHttpRequestまたはActiveXObject
                if(!s) //sに値が入っている場合は以下を実行
                    return void h(e,t,i);//dummy画像の取得

                try{
                    s.onreadystatechange=function(){4!=s.readyState||200!=s.status||n(c)||c(s.responseText)},
                        s.open(t,e,!0),
                        "withCredentials"in s&&(s.withCredentials=!0),
                        s.send(i)
                }catch(r){
                    if(window.XDomainRequest)
                        try{
                            xdr=new XDomainRequest,
                            xdr.onload=function(){n(c)||c(xdr.responseText)},
                            xdr.open(t,e),
                            xdr.send(i)
                    }catch(r){
                        h(e,t,i)
                    }else h(e,t,i)
                }
            }

            //解析情報を格納しておくコンテクストのconstructor
            function w(){
                this.version=1.9,
                this.timeout=2e3,
                this.simUUIDName="_sim_uuid",
                this.simSessionIdName="_sim_si",
                this.simLocalIpDataKey="_sim_li",
                this.baseHTTPUrl="https://b-us.simility.com",
                this.cDomain=".simility.com",
                this.pb=null,
                this.startTime=(new Date).getTime(),
                this.clientCallbackFunc=function(e){},
                this.autoExecute=!0,
                this.sync={},
                this.async={},
                this.customerContext=null,
                this.similityLiteLevel=1
            }

            //e.sync.scとe.sync.cd3に値を設定
            function L(e,n){
                return n? //条件文
                (e.sync.sc=p(),R(e,e.sync.sc,null),e.sync.cd3=e.sync.sc,e.sync.sc)://trueだったとき、scをランダム生成しているので初回アクセスを想定？
                (e.sync.cd3=e.sync.cd3||e.sync.sc||y(e.simSessionIdName),e.sync.cd3||L(e,!0))//falseだったとき
            }

            //cookieが有効な場合にIDを書き込む
            function R(e,t,i){
                if(window.navigator.cookieEnabled){
                    if(!n(t)){
                        e.sync.sc=t;
                        var c;
                        try{
                            u(e.simSessionIdName,t,c)
                        }catch(s){

                        }
                    }
                    if(!n(i)){
                        e.sync.uc=i;
                        try{
                            u(e.simUUIDName,i,30)
                        }catch(s){

                        }
                    }
                }
            }

            //sessionid, uuidをコンテクストに格納、クッキーに書き込み
            function E(e){
                e.sync.sc=y(e.simSessionIdName),
                e.sync.uc=v(e.simUUIDName),
                n(e.sync.sc)&&(e.sync.sc=p()),//上で取れなかったら（つまり初回アクセスのとき）ランダムなidを生成して入れる
                n(e.sync.uc)&&(e.sync.uc=p()),//同上
                R(e,e.sync.sc,e.sync.uc)//cookieに書き込み
            }

            //document内にaタグを生成、そのhrefを引数eに
            function r(e){
                var n=document.createElement("a");
                return n.href=e,n
            }

            //引数eはURL、引数nはZone
            //e内のハイフンからコンマまでを引数nで置き換える処理
            function o(e,n){
                var t=r(e),i=t.hostname.split(".");
                //hostnameを.でSplitしたときの配列の長さが３、かつ2個目の要素が"simility"の場合
                if(3===i.length&&"simility"===i[1]){
                    var c=i[0].split("-"),s=null;
                    c.length>1&&(s=c[c.length-1]),
                    s!==n&&(s&&2===s.length?c[c.length-1]=n:c.push(n),
                            i[0]=c.join("-"),
                            t.hostname=i.join("."),
                            e=t.toString().replace(/\/$/,""))
                }
                return e
            }

            //e.syncに種々の情報を詰める
            function A(e){
                if(e.customerContext){
                    var t=e.customerContext;
                    e.sync.cd3=t.sessionId||t.session_id||L(e,!1),
                    e.sync.cd2=t.clientId||t.apiKey||t.api_key||t.customer_id||e.sync.cd2,
                    n(t.similityLite)||(e.sync.cd1=t.similityLite),
                    n(e.sync.cd1)&&(e.sync.cd1=t.simility_lite),
                    e.sync.cd4=t.metadata||e.sync.cd4||null,
                    e.sync.cd5=t.userId||t.user_id||e.sync.cd5||null,
                    e.clientCallbackFunc=t.callbackFunc||t.callback_func||e.clientCallbackFunc,
                    e.sync.cd6=JSON.stringify(t.transactionInfo)||JSON.stringify(t.transaction_info)||e.sync.cd6||null,
                    e.sync.cd7=t.transactionSubCustomerId||t.transaction_sub_customer_id||e.sync.cd7||null,
                    e.customerEvents=t.event_type||t.event_types||e.customerEvents||null,
                    n(t.encrypt)||(e.encryptPayload=t.encrypt),(n(e.encryptPayload)||e.encryptPayload===!0)&&(e.encryptPayload=!0,e.pb=s(16)),
                    n(t.simility_lite_level)||(e.similityLiteLevel=t.simility_lite_level),
                    n(e.sync.cd1)||e.sync.cd1===!0?(e.sync.cd1=!0,
                    n(e.similityLiteLevel)&&(e.similityLiteLevel=1)):e.sync.cd1===!1&&(e.similityLiteLevel=0),
                    0===e.similityLiteLevel&&(e.sync.cd1=!1),
                    n(t.zone)||(e.baseHTTPUrl=o(e.baseHTTPUrl,t.zone));

                    var i=t.requestEndpoint||t.request_endpoint;
                    n(i)||(e.baseHTTPUrl=i)
                }
                n(e.sync.cd1)&&(e.sync.cd1=!0),
                e.sync.cd2&&(e.sync.cd2=e.sync.cd2.toString()),
                e.sync.cd3&&(e.sync.cd3=e.sync.cd3.toString()),
                e.sync.cd5&&(e.sync.cd5=e.sync.cd5.toString())
            }

            //e.syncに種々の情報を詰める
            function U(e){
                var n=window.navigator;
                if(e.sync.sd4=n.doNotTrack,"boolean"==typeof n.doNotTrack)
                    e.sync.sd4=n.doNotTrack?"1":"0";
                else if("number"==typeof n.doNotTrack)
                    try{
                        e.sync.sd4=n.doNotTrack.toString()
                    }catch(t){

                    }

                e.sync.sd6=n.language,
                e.sync.sd7=n.languages;
                try{
                    if("string"==typeof n.languages)
                        e.sync.sd7=[n.languages];
                    else{
                        e.sync.sd7=[];
                        for(var i in n.languages)
                            n.languages.hasOwnProperty(i)&&e.sync.sd7.push(n.languages[i])}
                }catch(t){
                    e.sync.sd7=[n.language]
                }

                if(e.sync.sd8=n.maxTouchPoints,"string"==typeof n.maxTouchPoints)
                    try{
                        e.sync.sd8=parseInt(n.maxTouchPoints)
                    }catch(t){
                        e.sync.sd8=0
                    }

                e.sync.sd13=n.userAgent,
                e.sync.sd10=n.platform,
                e.sync.sd14=n.vendor;
                var c=window.screen;
                if("string"==typeof c.height)
                    try{
                        e.sync.sd16=parseInt(c.availHeight),
                        e.sync.sd17=parseInt(c.availWidth),
                        e.sync.sd18=parseInt(c.height),
                        e.sync.sd19=parseInt(c.width),
                        e.sync.sd20=parseInt(c.colorDepth),
                        e.sync.sd21=parseInt(c.pixelDepth)
                    }catch(t){

                    }else
                        e.sync.sd16=c.availHeight,
                        e.sync.sd17=c.availWidth,
                        e.sync.sd18=c.height,
                        e.sync.sd19=c.width,
                        e.sync.sd20=c.colorDepth,
                        e.sync.sd21=c.pixelDepth;
                        e.sync.bd14=!!window.openDatabase,
                        e.sync.bd16=window.history.length;

                try{
                    e.sync.bd17=a()
                }catch(t){
                    e.sync.bd17=null
                }
                    e.sync.bd18=document.referrer
            }

            //canvas要素の生成と設定
            function a(){
                var e=document.createElement("canvas");
                //canvasを生成できないときはnullを返す？
                if(!e||!e.getContext("2d"))
                    return null;
                //canvasの設定
                var n=e.getContext("2d"),t="QmWnEbRv TcYxUz IlOkPjAhSgDf";
                return n.textBaseline="top",
                    n.font="15px 'Arial'",
                    n.textBaseline="alphabetic",
                    n.fillStyle="#f60",
                    n.fillRect(122,1,66,22),
                    n.fillStyle="#069",
                    n.fillText(t,3,14),
                    n.fillStyle="rgba(102, 204, 0, 0.7)",
                    n.fillText(t,5,18),
                    d(e.toDataURL().replace("data:image/png;base64,","")).toString()
            }

            //pluginの名前やバージョンの取得
            function D(e){
                e.sync.pd1=[];
                for(var n=window.navigator.plugins,t=0;t<n.length;t++){
                    var i=n[t],c=null;
                    if("undefined"!=typeof i.version)
                        c=i.version;
                    else if(-1!==i.name.indexOf("Google Talk Plugin")){
                        var s=i.description.lastIndexOf("Version");
                        c=i.description.slice(s+8)
                    }else if(-1!==i.name.indexOf("Silverlight Plug-In"))
                        c=i.description;
                    else if(-1!==i.description.indexOf("Widevine")){
                        var s=i.description.lastIndexOf("on:");
                        c=i.description.slice(s+4,i.description.length-1)
                    }else if(-1!==i.description.indexOf("Flash")){
                        var s=i.description.lastIndexOf("h");
                        c=i.description.slice(s+2)
                    }else if(-1!==i.filename.indexOf("AdobePDFViewer")){
                        var s=i.description.lastIndexOf("Version");
                        c=i.description.slice(s+8)
                    }else if(-1!==i.description.indexOf("Firefox and Netscape")){
                        var s=i.description.lastIndexOf("Netscape");
                        c=i.description.slice(s+9)
                    }else if(-1!==i.description.indexOf("VLC media player")){
                        var s=i.description.lastIndexOf("Plugin");
                        c=i.description.slice(s+7)
                    }else if(-1!==i.description.indexOf("Coupon Printer")){
                        var s=i.description.lastIndexOf("Printer");
                        c=i.description.slice(s+8)
                    }else if(-1!==i.description.indexOf("Skype Web"))
                        c=i.description;
                    else if(-1!==i.description.indexOf("Shapes -")){
                        var s=i.description.lastIndexOf("-");
                        c=i.description.slice(s+2)
                    }else if(-1!==i.name.indexOf("VLC Multimedia")){
                        var s=i.name.lastIndexOf("Videos");
                        c=i.name.slice(s+7,i.name.length-1)
                    }else if(-1!==i.name.indexOf("QuickTime")){
                        var s=i.name.lastIndexOf("-in");
                        c=i.name.slice(s+4)
                    }

                    for(var r=null,o=0;o<i.length;o++)
                        r=r?r+","+i[o].type:i[o].type;

                    var a=i.name;
                    i.name&&"function"==typeof String.prototype.replace&&(a=a.replace(/[^\w\s]/gi,"")),
                    e.sync.pd1.push([r,i.filename,a,c])
                }
            }

            //クッキー内のsimLocalIpDataKeyに対応するvalueを返す
            function N(e){
                var t=y(e.simLocalIpDataKey);//クッキーからkeyに対応する値を取ってくる
                return!n(t)&&window.atob?(e.async.fd10=e.sync.fd10=atob(t),e.async.fd10):null
            }
            //fd10を送信する
            //e=M, t=true
            function k(e,t){
                var i=N(e); //fd10またはnull
                if(!n(i))//iがnullじゃない場合
                    return void(t||F(e,{fd10:i},1,null));//tがfalseの場合は、fd10をbaseURLで指定されるURLに送信
                try{
                    var s,r,o=window.RTCPeerConnection||window.webkitRTCPeerConnection||window.mozRTCPeerConnection,a={iceServers:[]};
                    o?(s=new o(a),s.createDataChannel("",{reliable:!1}),s.onicecandidate=function(i){
                        if(i.candidate&&!r){
                            if(r=c("a="+i.candidate.candidate),e.async.fd10=r,window.btoa&&!n(r)){
                                var o;
                                try{
                                    u(e.simLocalIpDataKey,btoa(r),o)
                                }catch(a){}
                            }
                            s.close(),n(e.async.fd10)||t||F(e,{fd10:e.async.fd10},1,null)
                        }
                    },s.createOffer(function(e){
                        s.setLocalDescription(e)},function(e){
                            s.close()
                        })):e.async.fd10=null
                }catch(l){}
            }

            //マウスがブラウザ上にある時の動きの情報を取得＆送信
            function H(e) {
                if("onmousemove"in document){
                    var n,t=0;
                    e.async.currentOperatingKey=s(6),//s(n):n文字のランダムな文字列を生成
                    e.async[e.async.currentOperatingKey]=[],
                    document.onmousemove=function(i){
                        if(!n||(new Date).getTime()-n>200){//200msごとに以下のデータを取得
                            if(n=(new Date).getTime(),e.async[e.async.currentOperatingKey]&&10==e.async[e.async.currentOperatingKey].length){
                                if(t+=1,F(e,{mm1:e.async[e.async.currentOperatingKey]},1,null),5==t)//200ms*5=1s毎に送信&ローカルデータの初期化
                                    return document.onmousemove=null,!0;e.async.currentOperatingKey=s(6),e.async[e.async.currentOperatingKey]=[]
                            }
                            var c,r;
                            i.pageX||i.pageY? //条件文
                            (c=i.pageX,r=i.pageY,e.async[e.async.currentOperatingKey].push([n,c,r]))://trueのとき  時間、マウスの位置x,yをe.async.currentOperatingKeyにリストとして格納
                            (i.clientX||i.clientY)&&
                            (c=i.clientX+document.documentElement.scrollLeft,r=i.clientY+document.documentElement.scrollTop,
                            e.async[e.async.currentOperatingKey].push([n,c,r]))//falseのとき　マウスイベントが起きたときの位置
                        }
                        return!0
                    }
                }
            }
            //送るところの前処理
            //送信処理はx(...)で行う（dummy画像の取得）
            //t:customerContext,i:dictionary(JSON),c:int,s:callback
            function F(t,i,c,s){
                if(S(t)&&O(t)){//nullチェック
                    var r="";
                    try{
                        r=JSON.stringify(i)
                    }catch(o){
                        r=JSON.stringify({e:o.message})
                    }
                    var a=t.baseHTTPUrl+"/b?c="+encodeURIComponent(t.sync.cd2)+
                    "&v="+encodeURIComponent(t.version)+
                    "&ec="+encodeURIComponent(t.pb)+
                    "&cl=0";
                    //各情報をURI中のパラメータとしてくっつけていく
                    n(t.sync.cd3)||(a=a+"&si="+encodeURIComponent(t.sync.cd3)),
                    n(t.sync.sc)||(a=a+"&sc="+encodeURIComponent(t.sync.sc)),
                    n(t.sync.uc)||(a=a+"&uc="+encodeURIComponent(t.sync.uc)),
                    n(t.customerEvents)||(a=a+"&e="+encodeURIComponent(t.customerEvents)),
                    n(t.cDomain)||(a=a+"&cd="+encodeURIComponent(t.cDomain)),
                    n(c)||(a=a+"&r="+encodeURIComponent(c)),
                    n(t.startTime)||(a=a+"&st="+encodeURIComponent(t.startTime));

                    var l=r;
                    t.encryptPayload===!0&&(l=e(t.pb,r)),//encryptPayloadがtrueならrを暗号化
                    n(l)||(t.encryptPayload&&l.length<7e3?(a=a+"&s="+encodeURIComponent(l),x(a,"GET",null,s)):x(a,"POST",l,s))
                }
            }

            //e.customerContextのnullチェック。値が入ってればtrue
            function S(e){
                return!n(e.customerContext)
            }

            //e.sync.cd2のnullチェック。値が入ってればtrue
            function O(e){
                return!n(e.sync.cd2)
            }

            //種々の書き込みと送信
            function V(e){
                A(e),//e.syncに書き込み
                E(e),//sessionIDとuuidをクッキーに書き込み
                U(e),//e.syncに書き込み
                _(e),//GLの取得、格納
                D(e);//プラグイン情報取得
                var t=function(t){
                    var i
                    if(!n(t)){
                        var c=JSON.parse(t);
                        R(e,c.session,c.uuid),
                        i=c.data
                    }
                    return e.clientCallbackFunc(i)
                };
                F(e,e.sync,0,t)
            }

            //ブラウザのグラフィックライブラリ情報の取得、格納
            function _(e){
                var t,i=["webgl","experimental-webgl","moz-webgl","webkit-3d"],c=[],s=document.createElement("canvas");
                try{
                    for(var r=0;r<i.length;r++)
                        if(s){
                            //iの各要素のコンテクストがあればcにプッシュ
                            var o=s.getContext(i[r]);
                            o&&(c.push(i[r]),t=t||o) //tがundefinedならoを代入、それ以外ならtのまま
                        }
                }catch(a){

                }e.sync.wg1=!!t,//tに値が入ってるならtrue、それ以外ならfalseを格納
                e.sync.wg2=c;//プッシュされたGLたち

                try{
                    n(t)||("function"==typeof t.getParameter&&
                        (e.sync.wg6=t.getParameter(t.VENDOR),
                        e.sync.wg7=t.getParameter(t.RENDERER)),
                    e.sync.wg27=t.getContextAttributes().antialias?!0:!1,
                    e.sync.wg3=l(t))
                }catch(a){}
            }

            //similityLiteLevelに応じてfd10またはマウス情報の送信
            function X(e){
                N(e);//simLocalIpDataKeyを取ってくる
                var t=n(e.sync.fd10);
                V(e),//種々の書き込みと送信
                e.similityLiteLevel>0&&e.similityLiteLevel<=1&&t&&k(e,!1),//fd10の送信
                e.similityLiteLevel>0&&e.similityLiteLevel<1&&e.similityLiteLevel<=.5&&H(e)//マウス情報
            }

            //customerContextの初期化
            function B(e){
                this.customerContext=e||null
            }


            //customerContextの初期化の一部、similityContextを設定
            function  T(e){
                e.customerContext=window.similityContext||window.simility_context||null
            }

            //customerContextのsetter的なもの
            function b(e,n){
                e.customerContext=n||e.customerContext
            }

            //customerContextないのbaseHTTPUrlをzoneで指定されたものに合わせて設定しなおす
            function C(e){
                //n()は0またはnullまたは'undefined'を返す
                //o()は何かしらのURLを整形する関数？

                //windowにsimilityZone propが無い時、||以降の式を実行
                //baseHTTPUrl="https://b-us.simility.com"
                n(window.similityZone)||(e.baseHTTPUrl=o(e.baseHTTPUrl,window.similityZone)),
                n(e.customerContext)||n(e.customerContext.zone)||(e.baseHTTPUrl=o(e.baseHTTPUrl,e.customerContext.zone))
            }

            //customerContextにrequestendpointが設定されているときは、baseHTTPUrlをそれにする
            function I(e){
                //1個めのステートメントがfalseの場合は||の後を実行、trueの場合は実行されない
                //!n~がtrueの場合は{}が実行される、falseの場合は実行されない
                if(n(window.similityRequestEndpoint)||(e.baseHTTPUrl=window.similityRequestEndpoint),!n(e.customerContext)){
                    var t=e.customerContext.requestEndpoint||e.customerContext.request_endpoint;
                    //tが空でない場合はtをe.baseHTTPUrlにセット
                    n(t)||(e.baseHTTPUrl=t)
                }
            }

            //引数eは w.prototype={constructor:w}
            function P(e){
                if(n(window.similityAutoExecute))
                    try{
                        //auto-excuteがfalseになっているもののリストを返す
                        var i=function(){
                            try{
                                var e=document.querySelectorAll('script[data-autoexecute="false"]');//htmlドキュメントの全要素をiterableにしたもの
                                return t(e)
                            }catch(n){
                                return null
                            }
                        }();

                        i=i||document.getElementById("simility-device-recon")||document.currentScript||function(){
                                var e=document.getElementsByTagName("script");
                                return t(e)
                            }(),
                        n(i)||"false"!==i.getAttribute("data-autoexecute")||(e.autoExecute=!1)

                    }catch(c){

                    }else e.autoExecute=window.similityAutoExecute
            }

            //引数はiterable
            //引数で渡される各要素のなかで、'src' attributeが'https://cdn.simility.com/b.js'で始まる要素を返す
            function t(e){
                if(!n(e))
                    for(i=0;i<e.length;i++){
                        var t=e[i].getAttribute("src");
                        if(!n(t)&&-1!=t.indexOf("https://cdn.simility.com/b.js"))
                            return e[i]
                    }
                    return null
            }

            //0<similityLiteLevel<=1の場合はk(e,!0)を実行
            //kはfd10を外に送信する処理
            function K(e){
                e.similityLiteLevel>0&&e.similityLiteLevel<=1&&k(e,!0)
            }

            //WEBサイト読み込み時、ここから実行スタート
            w.prototype={constructor:w};
            var M=new w;

            //Mのcustomer contextに、SimilityContextをセット
            //MはJSON形式の入れ物
            T(M);
            //e.baseHTTPUrlのセット
            //MのbaseHTTPUrl内のusがzoneで指定されたものに置き換えられる
            C(M);
            //e.customerContext.requestEndpointのセット
            I(M);
            //autoexecuteのセット
            P(M);
            //S(M):Mのnullチェック, X(M):fd10またはマウス情報の送信, K(M):fd10の送信
            //autoExecuteがtrueかつS(M)がtrueならX(M)実行
            //autoExecuteがfalseならK(M)実行
            M.autoExecute&&S(M)?X(M):K(M),
            B.prototype={
                constructor:B,
                getSessionId:function(){
                    return L(M,!1)//sessionIDの取得
                },
                resetSessionId:function(){
                    return L(M,!0)//sessionIDの再生成
                },
                execute:function(){
                    b(M,this.customerContext);//customerContextが存在しているときはMにそれを設定。
                    C(M);//customerContextないのbaseHTTPUrlをzoneで指定されたものに合わせて設定しなおす
                    I(M);//e.customerContext.requestEndpointのセット
                    X(M)//fd10またはマウス情報の送信
                }
            },
            window.SimilityScript=B //similityScriptオブジェクトにBを設定

        }(document,window);

    </script>

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
