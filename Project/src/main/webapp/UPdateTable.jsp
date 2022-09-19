<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.MemberVO"%>

<%!//선언부는 첫 방문자에 의해서 단 한번 수행합니다.
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:mysql://localhost:3306/4teamproject?"
			      +"useUnicode=true&characterEncoding=utf-8";
	String uid = "root";
	String pass = "1234";
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table {background:gray; margin:0px auto;}
	tr { background: white;}
	td, th { cellpadding: 10px; }
</style>
<script>

</script>
</head>


<body>
<div style="width:950px;text-align:center;">
<h3>회원 목록</h3>
<form action = "updateChecking.jsp" name="allMember" method="post">
	<table border='1'>
		<tr>
			<th>아이디</th>
			<th>암호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		<%
		    MemberVO result1 = (MemberVO)session.getAttribute("info");
		    String urlid=result1.getId();
		    
		%>
		
		<% 	try {
			   
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, uid, pass);
				System.out.println("db success");
				stmt = conn.createStatement();
				String sql = "select * from registers where id='" + urlid + "'";
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
					out.println("<tr>");
					out.print("<input type='hidden' name='userid' value=");
					out.println(rs.getString("id")+">");
					out.println("<td style='width:120px'><input type='text' name='change_id' value='" + rs.getString("id") + "'></td>");
					
					out.print("<input type='hidden' name='pwd' value=");
					out.println(rs.getString("pwd")+">");
					out.println("<td style='width:150px'><input type='text' name='change_pwd' value='" + rs.getString("pwd") +  "'></td>");
					
					out.print("<input type='hidden' name='name' value=");
					out.println(rs.getString("name")+">");
					out.println("<td style='width:80px'><input type='text' name='change_name' value='" + rs.getString("name") +  "'></td>");
					
					out.print("<input type='hidden' name='phone' value=");
					out.println(rs.getString("phone")+">");
					out.println("<td style='width:120px'><input type='text' name='change_phone' value='" + rs.getString("phone") +  "'></td>");
					
					out.print("<input type='hidden' name='email' value=");
					out.println(rs.getString("email")+">");
					out.println("<td style='width:210px'><input type='text' name='change_email' value='" + rs.getString("email") +  "'></td>");
					
					out.println("</tr>");
				}//while의 끝
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("db fail");
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (stmt != null)
						stmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}//finally의 끝
		%>
		
	</table>
	<br>
	    <input type="submit" value="업데이트">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="button" value="창닫기" onclick="javascript:history.back()">
</form>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>


