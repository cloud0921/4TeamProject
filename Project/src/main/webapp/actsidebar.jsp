<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
div[class="sidebar1"] {width:300px;height:100%;background:black;position:fixed;top:0;right:-300px;z-index:1;transition:all .35s;}
input[id="menuicon1"]:checked + ul + div {right:0;}

</style>
<style>
a:link { text-decoration:none; color:#ffffff;}

 a:visited { text-decoration:none;color:#ffffff;}

 a:active {text-decoration:none; color:#ffffff; }

 a:hover { text-decoration:none; color:#EDA900;}
</style>
<body>
<input type="checkbox" id="menuicon1">
<ul>
	<li>
		<label for="menuicon1">
			<span></span><span></span><span></span>
		</label>
	</li>
</ul>

<div class="sidebar1"><br><br><br>
<ul class="ul1">
      <li><a href="">연도</a></li><br><br><br>
      </ul>
<ul class="ul1">
      <li><a href="totalbox.jsp" >▷ TOTAL 영화</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2010.jsp" >▷ 2010년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2011.jsp" >▷ 2011년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2012.jsp" >▷ 2012년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2013.jsp" >▷ 2013년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2014.jsp" >▷ 2014년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2015.jsp" >▷ 2015년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2016.jsp" >▷ 2016년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2017.jsp" >▷ 2017년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2018.jsp" >▷ 2018년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2019.jsp" >▷ 2019년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2020.jsp" >▷ 2020년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2021.jsp" >▷ 2021년 박스오피스 TOP50</a></li><br><br>
      </ul>
<ul class="ul1">
      <li><a href="boxoffice_2022.jsp" >▷ 2022년 박스오피스 TOP50</a></li><br><br>
      </ul>
</div>
</body>
</html>