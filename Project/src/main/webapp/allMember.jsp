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
	String url = "jdbc:mysql://localhost:3306/4teamproject?"
			      +"useUnicode=true&characterEncoding=utf-8";
	String uid = "root";
	String pass = "1234";
	String sql = "select * from registers where admin='0'";%>
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
function allcheck(){
	var repeat=document.getElementsByName("userid").length;
	for(var i=0;i<repeat;i++){
	    document.getElementsByName("userid")[i].checked=true;
	}  
}
</script>
</head>
<body>
<div style="width:950px;text-align:center">
<h3>회원 목록</h3>
<form action = "OneMoreDelCheck.jsp" name="allMember" method="post">
	<table border='1'>
		<tr>
		    <th>체크</th>
			<th>아이디</th>
			<th>암호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		<%
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, uid, pass);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String userid=rs.getString("id");
					out.println("<tr>");
					out.print("<td><input type='checkbox' name='userid' value=");
					out.print(userid+"></td>"); 
					out.println("<td style='width:120px'>" + userid + "</td>");
					out.println("<td style='width:150px'>" + rs.getString("pwd") + "</td>");
					out.println("<td style='width:80px'>" + rs.getString("name") + "</td>");
					out.println("<td style='width:120px'>" + rs.getString("phone") + "</td>");
					out.println("<td style='width:210px'>" + rs.getString("email") + "</td>");					
					out.println("</tr>");
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
	<br><input type="button" value="모두선택" onclick="allcheck()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="reset" value="모두해제">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="submit" value="삭제">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="button" value="창닫기" onclick="javascript:window.close()">
</form>
</div>
</body>
</html>


