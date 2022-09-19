<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/all.css">
<link rel="stylesheet" href="CSS/login.css">
</head>
<style>
/* 예제파일 확인시 가운데 정렬 스타일 - 삭제 후 사용하세요 */
* {padding:0;margin:0;line-height:1;} /* 기본 브라우저 리셋 스타일 */


.ul1>li{color:white;}
.blank{width:8px;}

</style>
<script>
function openWin() {
	window.open("allMember.jsp","_blank",'width=950,height=600,top=50,left=300,status=no,scrollbars=auto'); 
	}
</script>

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
  
  <%
  //닉네임 가져오기
  //1) session에 있는 데이터 가져오기
	MemberVO result = (MemberVO)session.getAttribute("info");
  //2)VO 안의 닉네임 가져오기
	String name = result.getName();
%>
  
  <div class="left">
    <ul  class="ul1">
      <li><b><%=name %>님</b></li>
      <li class="blank"></li>     
      <li><a href="javascript:openWin()">회원관리</a></li>
      <li class="blank"></li>
      <li><a href="logout.jsp">로그아웃</a></li>
      </ul>
  </div>
  
</div>










</body>
</html>