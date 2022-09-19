<%@page import="com.smhrd.model.DAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
.includes{display:flex;}
.blank1{width:30px;}
.blank2{width:120px;}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String [] userid = request.getParameterValues("userid");
	
	if (userid==null){
		out.print("선택항목없음");
		%><br><br><input type="button" value="회원정보 목록" onclick="javascript:history.back()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
	}
	
	
	else{%><h2>다음의 ID들과 이름들을 삭제하시겠습니까??</h2><br>
	<form action="deleteMember.jsp" method="post">
	<%  DAO dao=new DAO();
	    int lens=1;
	    for (String eachuser:userid){
	    	String name=dao.DeleteName(eachuser);
	 %>     <div class="includes">
			   <div class="blank1"><b><%=lens %>.</b></div>
			   <div class="blank2"><b><%=eachuser %></b></div>	
			   <div class="blank3"><b> -<%=name %> </b></div>
			   <input type="hidden" name="userid" value="<%=eachuser%>">		
			</div>
			<br> <%  
			lens+=1;
	    }				
%>       <br><input type="submit" value="정말로 삭제">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		     <input type="button" value="목록으로 돌아가기" onclick="javascript:history.back()">
	 </form>
		<%
	}//else 끝
%>

</body>
</html>