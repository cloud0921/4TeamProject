<%@page import="com.smhrd.model.DuplicateDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function apply(id){
	opener.document.memberForm.userid.value=id;
	opener.document.memberForm.id_hidden.value=id;
	opener.document.memberForm.hidden_num.value="1";
	opener.document.memberForm.userid.disabled="disabled";
	window.close();
	
	
}
</script>
</head>
<body>
<%
String id=request.getParameter("chk_userid");
%>
<% DuplicateDAO dao=new DuplicateDAO();
if (id.length()<=5){
	out.print("ID를 6자리 이상 입력해주세요.");%>
	<br><br><input type="button" value="다시 시도" onclick="javascript:history.back()">
<%
}else{
	int result=dao.confirmID(id);
	if(result==-1){
		out.print("입력 ID는 사용가능합니다.");
	%><br><br><input type="button" value="아이디 적용" onclick="javascript:apply('<%=id %>')">
	<%	
   }else if(result==1){
    out.print("입력 ID는 이미 사용중인 아이디 입니다.");
    %><br><br><input type="button" value="다시 시도" onclick="javascript:history.back()">
<%
   }
}
%>
</body>
</html>