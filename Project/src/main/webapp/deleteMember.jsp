<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Connection conn = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:mysql://localhost:3306/4teamproject?"
		      +"useUnicode=true&characterEncoding=utf-8";
	String uid = "root";
	String pass = "1234";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String [] userid = request.getParameterValues("userid");	
		if (userid==null){
			out.print("선택항목없음");
		}else{
			try {
				//(1 단계) JDBC 드라이버 로드
				Class.forName("com.mysql.cj.jdbc.Driver");
				//(2 단계) 데이터베이스 연결 객체인 Connection 생성
				conn = DriverManager.getConnection(url, uid, pass);
				for(String user:userid){
					String sql = "delete from registers where id=?";
					pstmt = conn.prepareStatement(sql); //(3 단계) Statement 객체 생성하기
					pstmt.setString(1, user);           //(4 단계) 바인딩 변수를 채운다
					pstmt.executeUpdate();              //(5 단계)SQL문을 실행하여 결과 처리
				}
	 %>
	 <h1>회원 정보 삭제 성공</h1>
     <%		} catch (Exception e) {
				e.printStackTrace();
			} finally {
				//(6 단계) 사용한 리소스 해제
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}//finally의 끝
		}	
	%>
	<br><br><a href="allMember.jsp"><input type="button" value="회원정보 목록"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" value="닫기" onclick="javascript:window.close()">
</body>
</html>