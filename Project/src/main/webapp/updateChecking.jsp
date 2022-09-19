<%@page import="com.smhrd.model.DuplicateDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	    
	    String userid = request.getParameter("userid");
	    String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		String change_id = request.getParameter("change_id"); 
		String change_pwd = request.getParameter("change_pwd");
		String change_name = request.getParameter("change_name");
		String change_phone = request.getParameter("change_phone");
		String change_email = request.getParameter("change_email");
	%>
	<%DuplicateDAO vo=new DuplicateDAO();
	  int result_num=vo.updateChecking(userid,change_id);
	  
	  if(change_id.length()<=5 || change_id.length()>=11){
		  %><h1>ID는 최소 6자리, 최대 10자리입니다.</h1>
		    <input type="button" value="변경취소" onclick="javascript:history.back()"><%
	  }
	  else if(change_pwd.length()<=7 || change_pwd.length()>=13){
		  %><h1>비밀번호는 최소 8자리, 최대 12자리입니다.</h1>
		    <input type="button" value="변경취소" onclick="javascript:history.back()"><%
	  }
	  
	  else if(change_name.length()<=1 || change_name.length()>=5){
		  %><h1>이름은 최소 2자리, 최대 4자리입니다.</h1>
		    <input type="button" value="변경취소" onclick="javascript:history.back()"><%
	  }
	  
	  else if(change_phone.length()!=13){
		  %><h1>전화번호를 정확하게 입력해주세요.("-" 포함시켜주세요.)</h1>
		    <input type="button" value="변경취소" onclick="javascript:history.back()"><%
	  }
	  
	  else{
		  if(result_num==1){
			  %><h1>변경하고자 하시는 ID는 이미 사용중입니다.</h1><br>
			    <input type="button" value="변경취소" onclick="javascript:history.back()">
		  <%}else if(result_num==-1){%> 
		<h1>정말로 회원정보를 수정하시겠습니까??</h1>
		
		<table border='1'>
		<caption><b>변경 전의 회원정보</b></caption>
		<tr>
		    <th>아이디</th>
			<th>암호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		<tr>
		    <td><%= userid%></td>
			<td><%= pwd%></td>
			<td><%= name%></td>
			<td><%= phone%></td>
			<td><%= email%></td>
		</tr>
		</table>
		
		<br><br>
		<table border='1'>
		<caption><b>변경 후의 회원정보</b></caption>
		<tr>
		    <th>아이디</th>
			<th>암호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		<tr>
		    <td><%= change_id%></td>
			<td><%= change_pwd%></td>
			<td><%= change_name%></td>
			<td><%= change_phone%></td>
			<td><%= change_email%></td>
		</tr>
		</table>
		<br><br>
		<form action="updateMember.jsp" method="post">
		<input type="hidden" name="id" value='<%= userid%>'>
		<input type="hidden" name="change_id" value='<%=change_id %>'>
		<input type="hidden" name="change_pwd" value='<%=change_pwd %>'>
		<input type="hidden" name="change_name" value='<%=change_name %>'>
		<input type="hidden" name="change_phone" value='<%=change_phone %>'>
		<input type="hidden" name="change_email" value='<%=change_email %>'>
		
		<input type="submit" value="변경하기">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="변경취소" onclick="javascript:history.back()">
		</form>
	<% }  
	  }%>
	  
</body>
</html>