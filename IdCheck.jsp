<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복체크</title>
</head>
<body>
<h2>아이디 중복확인</h2>
<form action="IdCheckAction.jsp" method="post">
아이디 : <input type="text" name="chk_userid" value="${param.userid}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="중복 체크">
<br>
</form>
</body>
</html>