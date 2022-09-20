<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!//선언부는 첫 방문자에 의해서 단 한번 수행합니다.
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:mysql://localhost:3306/memberdb?"
			      +"useUnicode=true&characterEncoding=utf-8";
	String uid = "root";
	String pass = "1234";
	String sql = "select * from member";%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table { width:600px; background:gray; margin:0px auto;}
	tr { background: white;}
	td, th { cellpadding: 1px; }
</style>
</head>
<body>
<div style="width:950px;text-align:center">
<h3>회원 목록</h3>
<form action = "deleteMember.jsp" method="post">
	<table width='950px' border='1'>
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>암호</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>권한(0:관리자, 1:일반회원)</th>
		</tr>
		<%
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, uid, pass);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String userid=rs.getString("userid");
					out.println("<tr>");
					out.println("<td>" + rs.getString("name") + "</td>");
					out.print("<td>");
					out.print("<input type='checkbox' name='userid' value=");
					out.println(userid + ">"+userid+"</td>");
					out.println("<td>" + rs.getString("pwd") + "</td>");
					out.println("<td>" + rs.getString("email") + "</td>");
					out.println("<td>" + rs.getString("phone") + "</td>");
					out.println("<td>" + rs.getInt("admin") + "</td>");
					out.println("</tr><br>");
				}//while의 끝
			} catch (Exception e) {
				e.printStackTrace();
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
	<a href="updateForm.jsp">업데이트하기</a>
	<br><input type="submit" value="삭제">
</form>
</div>
</body>
</html>

