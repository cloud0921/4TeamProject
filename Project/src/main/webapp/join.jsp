<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.thead{background-color: rgb(105,34,38); color:white; text-align:center; }
</style>
<BODY>
<div align="center">
<H2>JOIN</H2>
<HR>
<br>
<form name=form1 method="post" action=joinService>
<table border=1 cellspacing="1" cellpadding="5">
<tr><td colspan="2" class="thead"><b>회원 기본 정보</b></td></tr>
<tr>
<td>이 름</td>
<td><input type=text size=20 name=name></td>
</tr>
<tr>
<td>I D</td>
<td><input type=text size=20 name=userid></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type=password size=20 name=pwd></td>
</tr>
<tr>
<td>이메일</td>
<td><input type=text size=20 name=email></td>
</tr>
<tr>
<td>전화번호</td>
<td><input type=text size=20 name=phone></td>
</tr>
<tr>
<td>관리자 번호</td>
<td>
<select name=admin >
	<option selected>0</option>
	<option>1</option>
</select>
</td>
</tr>
<tr><td colspan=2 align=center>
	<input type=submit value="확인">
	<input type=reset value="취소">
	</td></tr>
</table>

</form>
</div>
</BODY>
</html>