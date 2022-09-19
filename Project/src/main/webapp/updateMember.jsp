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
	String sql = "update registers set id=?, pwd=?, name=?,phone=?,email=? where id=?";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String change_id = request.getParameter("change_id");
		String pwd = request.getParameter("change_pwd");
		String name = request.getParameter("change_name");
		String phone = request.getParameter("change_phone");
		String email = request.getParameter("change_email");
		String id = request.getParameter("id");
		
		
		try {
			//(1 단계) JDBC 드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			//(2 단계) 데이터베이스 연결 객체인 Connection 생성
			conn = DriverManager.getConnection(url, uid, pass);
			//(3 단계) Statement 객체 생성하기
			pstmt = conn.prepareStatement(sql);
			//(4 단계) 바인딩 변수를 채운다.
			pstmt.setString(1, change_id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, phone);
			pstmt.setString(5, email);
			pstmt.setString(6, id);
			//(5 단계)SQL문을 실행하여 결과 처리
			pstmt.executeUpdate();
		} catch (Exception e) {
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
	%>
	<h1>회원 정보 수정 성공</h1>
	<h3>다시 로그인 해주시기 바랍니다.</h3>
	<a href="logout.jsp"> 메인화면으로 돌아가기 </a>
<%@ include file="/footer.jsp" %>
</body>
</html>