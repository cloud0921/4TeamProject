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
		out.print("�����׸����");
		%><br><br><input type="button" value="ȸ������ ���" onclick="javascript:history.back()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
	}
	
	
	else{%><h2>������ ID��� �̸����� �����Ͻðڽ��ϱ�??</h2><br>
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
%>       <br><input type="submit" value="������ ����">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		     <input type="button" value="������� ���ư���" onclick="javascript:history.back()">
	 </form>
		<%
	}//else ��
%>

</body>
</html>