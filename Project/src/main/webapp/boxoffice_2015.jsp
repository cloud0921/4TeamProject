<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="CSS/all.css">
<title>Insert title here</title>
<style>
   table { width:800px; background:gray; margin:auto; border-collapse:collapse; }
   .list{width:1600px;}
   tr { background: white; border-bottom:1px solid  rgb(105,34,38);}
   td, th { cellpadding: 1px;}
   th{height:50px;}
   td:nth-child(1){width:200px; height:400px;}
   td:nth-child(2){width:400px; text-align:left; height:400px;}
   img{width:200px; height:300px}
   .search{text-align:center;}
</style>
<style>
* {padding:0;margin:0;}
input[id="menuicon1"] {display:none;}
input[id="menuicon1"] + ul {display:block;position:fixed;right:0;top:50%;transform:translateY(-50%);transition:all .35s;text-align:right;}
input[id="menuicon1"] + ul > li {display:block;width:50px;height:50px;border:1px solid #f1f1f1;position:relative;margin-top:-1px;}
input[id="menuicon1"] + ul > li > a {display:block;width:auto;height:50px;overflow:hidden;transition:all .35s;}
input[id="menuicon1"] + ul > li > label {display:block;cursor:pointer;width:auto;height:50px;background:#dadada;}
input[id="menuicon1"] + ul > li:nth-child(1) label span {display:block;position:absolute;width:50%;height:3px;border-radius:30px;background:#333;transition:all .35s;}
input[id="menuicon1"] + ul > li:nth-child(1) label span:nth-child(1) {top:30%;left:50%;transform:translateX(-50%);}
input[id="menuicon1"] + ul > li:nth-child(1) label span:nth-child(2) {top:50%;left:50%;transform:translate(-50%,-50%);}
input[id="menuicon1"] + ul > li:nth-child(1) label span:nth-child(3) {bottom:30%;left:50%;transform:translateX(-50%);}
input[id="menuicon1"]:checked + ul {z-index:2;right:300px;}
input[id="menuicon1"]:checked + ul > li:nth-child(1) label {z-index:2;right:300px;}
input[id="menuicon1"]:checked + ul > li:nth-child(1) label span:nth-child(1) {top:50%;left:50%;transform:translate(-50%,-50%) rotate(45deg);}
input[id="menuicon1"]:checked + ul > li:nth-child(1) label span:nth-child(2) {opacity:0;}
input[id="menuicon1"]:checked + ul > li:nth-child(1) label span:nth-child(3) {bottom:50%;left:50%;transform:translate(-50%,50%) rotate(-45deg);}
div[class="sidebar1"] {width:300px;height:100%;background:#f5f5f5;position:fixed;top:0;right:-300px;z-index:1;transition:all .35s;}
input[id="menuicon1"]:checked + ul + div {right:0;}

</style>
</head>
<body>
  <%@ include file="/header.jsp" %>
  <div class="search">
  <form action="boxoffice_2015.jsp" method="get">
  <select name="category">
			<option value="영화명">영화명</option>
			<option value="장르">장르</option>
			<option value="감독">감독</option>
			<option value="배우">배우</option>
		</select>&nbsp;<input type="text" name="search">
  <input type="submit" value="검색" style="width:50px; height:20px;">
  </form>
  </div>
<div style="width:650px;text-align:center">
<div class="list">
<br><br>
<h3>영화 목록</h3>
   <table>
      <tr>
         <th>영화</th>
         <th>정보</th>
     
      </tr>
      <%
      Connection conn = null;
      Statement stmt = null;
      ResultSet rs = null;
      String url = "jdbc:mysql://localhost:3306/4teamproject?"
                  +"useUnicode=true&characterEncoding=utf-8";
      String uid = "root";
      String pass = "1234";
      String sql = "select * from 2015box where ";
       String search=request.getParameter("search");
       String category=request.getParameter("category");
       
      
       
  
         try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, uid, pass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql+category+" like "+"'%"+search+"%'");
           
            	
            
            while (rs.next()) {
               out.println("<tr>");
               out.println("<td>" + "<img src='" + rs.getString("포스터")+ "'>"+"</td>");
               out.println("<td>"+"영화명 : " + rs.getString("영화명")+"<br><br>" +"장르 : " + rs.getString("장르")+"<br><br>" + "개봉일 : " + rs.getString("개봉일")+"<br><br>"+ "누적 매출액 : " + rs.getString("누적매출액")+"원"+"<br><br>" + "누적관계수 : "  +rs.getString("누적관객수")+"명"+"<br><br>"+"감독 : "+ rs.getString("감독")+"<br><br>" +"배우 : "  +rs.getString("배우")+"<br><br>" +"</td>");
        
               out.println("</tr>");
            }//while의 끝
         }catch (Exception e) {
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
</div>
</div>
    <%@ include file="/actsidebar.jsp" %>
    <%@ include file="/footer.jsp" %>
</body>
</html>