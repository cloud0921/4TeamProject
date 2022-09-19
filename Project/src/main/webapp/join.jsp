<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./js/changing_email.js?t=<%=System.currentTimeMillis()%>"></script>
<script src="./js/juminChecking.js?t=<%=System.currentTimeMillis()%>"></script>
<script src="./js/idCheck.js?t=<%=System.currentTimeMillis()%>"></script>
<script src="./js/password_checking.js?t=<%=System.currentTimeMillis()%>"></script>
<script src="./js/allabled.js?t=<%=System.currentTimeMillis()%>"></script>
</head>
<style>
.thead{background-color: rgb(105,34,38); color:white; text-align:center; }
</style>
<body>
<div align="center">
<H2>JOIN</H2>
<HR>
<br>
<form name="memberForm" method="post" action="joinService">
<table border=1 cellspacing="1" cellpadding="5">
<!-- cellspacing은 셀과 셀 간의 간격을 지정해주는 table 옵션 -->
<!-- cellpadding은 셀 안의 내용과 셀 경계선 사이의 간격을 지정해주는 table옵션 -->

<tr><td colspan="2" class="thead"><b>회원 기본 정보</b></td></tr>

<tr>
<td>이 름</td>
<td><input type="text" name="name" minlength="2" maxlength="4" size="20" required></td>
</tr>

<tr>
    <td>주민번호<span class="red"></span></td>
    <td>
        <input type="text" name="mem_num1" maxlength="6" id="mem_num1"
               onkeyup="if(this.value.length==6) memberForm.mem_num2.focus();"/>-
        <input type="password" name="mem_num2" maxlength="7" id="mem_num2"/>
        <input type="button" value="주민번호 정상 유무 체크" 
            onclick="juminCheck(mem_num1.value,mem_num2.value)"/>
        <input type="hidden" name="hidden" value="0">
        <input type="hidden" name="hidden_mem_num1">
        <input type="hidden" name="hidden_mem_num2">
    </td>                         
</tr>

<tr>
<td>I D</td>
<td>
   <input type="text" name="userid" size="20"  id="userid" minlength="6" maxlength="10">* 
   <input type="button" value="중복 체크" onclick="idCheck()">
   <input type="hidden" name="id_hidden">
   <input type="hidden" name="hidden_num" value="0">
</td>
</tr>

<tr>
<td>비밀번호</td>
<td><input type="password" name="pwd" id="pwd" minlength="8" maxlength="12" size="20" required></td>
</tr>

<tr height="30">
<td width="80">암호 확인</td>
<td><input type="password" name="pwd_check" id="pwd_check" minlength="8" maxlength="12" size="20" required>*
	<input type="button" name="pwd_button" value="비밀번호 확인" onclick="passwordcheck(pwd.value,pwd_check.value)">   
</td>
</tr>
   <input type="hidden" name="pwd_num" value="0">
   <input type="hidden" name="checked_pwd">
<tr>
<td>이메일</td>
<td>
   <input type="text" name="mem_name" minlength="6" maxlength="10"
          id="email_id" required/> @
   <input type="text" name="mem_email_domain" minlength="8"
          id="email_add" required/>                                 
   <select name="email_sel" id="email_sel"
           style="font-size:16px; height:30px;"
           onchange="change_email();">
     <option value="">직접선택</option>
     <option value="naver.com">naver.com</option>
     <option value="hanmail.net">hanmail.net</option>
     <option value="gmail.com">gmail.com</option>
     <option value="nate.com">nate.com</option>
     <option value="kakao.com">kakao.com</option>
     <option value="korea.com">korea.com</option>
     <option value="dreamwiz.com">dreamwiz.com</option>
    </select>
</td>
</tr>

<tr>
<td>전화번호</td>
<td><input type="text" name="phone_num1" minlength="3" maxlength="3" 
           onkeyup="if(this.value.length==3) memberForm.phone_num2.focus();" required/> -          
    <input type="text" name="phone_num2" minlength="4" maxlength="4"
           onkeyup="if(this.value.length==4) memberForm.phone_num3.focus();" required/> -
    <input type="text" name="phone_num3" minlength="4" maxlength="4" required>
</td>
</tr>

<tr>
  <td colspan=2 align=center>
  <input type=submit value="확인">
  <input type=reset value="취소" onclick="allabled()">
  </td>
</tr>
</table>

</form>
</div>
</body>
</html>