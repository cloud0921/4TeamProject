<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/all.css">
<link rel="stylesheet" href="CSS/login.css">
<script>
function openWin(f,s) { adWindow=window.open(f,s,'width=600,height=600,status=no,scrollbars=auto'); }
</script>
</head>

<style>
input[id*="popup"] + label {position:absolute;top:25px;left:89%;transform:translate(-50%,-50%);} /* 예제파일 확인시 가운데 정렬 스타일 - 삭제 후 사용하세요 */
* {padding:0;margin:0;line-height:1;} /* 기본 브라우저 리셋 스타일 */

input[id*="popup"] {display:none;}
input[id*="popup"] + label {display:inline-block;padding:10px;background:rgb(105,34,38);color:#fff;}
input[id*="popup"] + label + div {position:fixed;top:0;left:0;width:100%;height:100%;z-index:100;}
input[id*="popup"] + label + div > div {position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);width:500px;height:280px;background:#fff;z-index:2;}
input[id*="popup"] + label + div > div > label {position:absolute;top:0%;right:0%;transform:translate(40%,-40%);padding:20px;background:#dd5347;border-radius:100%;z-index:1;}
input[id*="popup"] + label + div > label {position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.9);z-index:1;}
/*
input[id*="popup"] + label + div {display:none;}
input[id*="popup"]:checked + label + div {display:block;}
*/

input[id*="popup"] + label + div {opacity:0;visibility:hidden;transition:all 1s;}
input[id*="popup"]:checked + label + div {opacity:1;visibility:visible;}


</style>

<body>
<div id="header"> 
      <input type="checkbox" id="menuicon">
<label for="menuicon">
	<span></span>
	<span></span>
	<span></span>
</label>

<div class="sidebar"><br><br><br><br><br><br><br><br>
<ul class="ul1">
      <li><a href="mainpage.jsp" >홈</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="Revenue.jsp" >흥행예측</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="totalbox.jsp" >박스오피스</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="odan.jsp" >개봉시기</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="actor_all.jsp" >배우</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="word.jsp" >키워드</a></li><br><br>
      </ul>      
<ul class="ul1">
      <li><a href="distributor.jsp" >배급사</a></li><br><br>
      </ul>        
</div>

  <div class="left">
    <ul class="ul1">
      <li><a href="mainpage.jsp" >홈&nbsp;</a></li>
      <li><a href="Revenue.jsp" >흥행예측&nbsp;</a></li>
      <li><a href="totalbox.jsp" >박스오피스&nbsp;</a></li>
      <li><a href="odan.jsp" >개봉시기&nbsp;</a></li>
      <li><a href="actor_all.jsp" >배우&nbsp;</a></li>
      <li><a href="word.jsp" >키워드&nbsp;</a></li>
      <li><a href="distributor.jsp" >배급사&nbsp;</a></li>
      </ul>
  </div>
  <div class="right">
    <ul  class="ul1">
      <li><a href="" ></a></li>
      <li><a href="javascript:openWin('join.jsp','0')" >회원가입</a></li>
      </ul>
  </div>
</div>
<input type="checkbox" id="popup">
<label for="popup" style="font-family: 'yg-jalnan'; font-size:20px;">로그인</label>
<div>
	<div>
		<label for="popup"></label><br><br>
        <div style="text-align:center;">
            <h2>Login</h2>
       </div>

        <form action="LoginService" method="post">

            <div class="input-box">
                <input id="username" type="text" name="userid" placeholder="아이디">
                <label for="username" class="a">아이디</label>
            </div>

            <div class="input-box">
                <input id="password" type="password" name="pwd" placeholder="비밀번호">
                <label for="password" class="a">비밀번호</label>
            </div>
            <input type="submit" value="로그인">
        </form>		
	</div>
	<label for="popup"></label>
</div>




</body>
</html>