package com.smhrd.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DuplicateDAO {
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	// 1.DB연결을 위한 메소드
	private void getConn() {
		// 1. 드라이브 동적 로딩
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// 2. DB연결
			String url = "jdbc:mysql://localhost:3306/testforproject?"
				      +"useUnicode=true&characterEncoding=utf-8";
			String id = "root";
			String pw = "1234";
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("db success");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("db fail one");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("db fail two");
		}
	}
	
	// 2. 자원 반납 메소드
		private void getClose() {
			try {  //ctrl+shift+f 자동 정렬 완성
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
				if(conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
   //중복되는 내용 제거
		public int confirmID(String id) {
			int result=0;
			try {				
				String sql="select id from registers where id=?";
				getConn();
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				rs = psmt.executeQuery();
				if(rs.next()) {
					result=1;
				}else {
					result=-1;
				}
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				getClose();
			}
			return result;	
		}
}
