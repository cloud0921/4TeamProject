<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/all.css">
<style>


/* 중앙정렬 코드- 삭제하고 사용하세요 */
* {margin:10;padding:0;box-sizing:border-box;} /* 모든 요소 마진패딩 리셋 */
/* 중앙정렬 코드-삭제하고 사용하세요 */

.gallerylist {max-width:1425px;width:100%; margin:0 auto;}
.gallerylist > ul {font-size:0;}
.gallerylist > ul > li {display:inline-block;vertical-align:top;width:20%;}
.gallerylist > ul > li > a {display:block;width:auto;text-decoration: none;margin:5px;}
.gallerylist > ul > li > a .screen {position:relative;overflow:hidden;}
.gallerylist > ul > li > a .screen img {width:280px; height:400px; }
.gallerylist > ul > li > a .screen::after {content:'';display:block;position:absolute;top:0;left:0;background:rgba(0,0,0,.5);z-index:1;opacity:0;transition:all .35s;}


.screen {
  
  margin: 0px auto;
  position: relative;
}
.jb-c {
  position: absolute;
  top: 0px;
  left: 0px;
  opacity: 0;
  transition: opacity 0.5s linear;
  width:300px;
  height:400px;
}
.screen:hover .jb-c {
  opacity: 1;
}  


</style>

</head>

<body>
<%@ include file="/header.jsp" %>
<br><br>
<div style="width:600px; position:relative; left:65px;">
<h2>영화 개봉후 1~3주 중의 리뷰 키워드</h2><br>
<hr style="border: solid; 1px; color:rgb(105,34,38);">
</div>
<br>
<div class="gallerylist">
	<ul>
		<li>
			<a href="./img/1-1.png">
				<div class="screen">
					<img src="./img/1.jpg" class="screen">
					<img src="./img/1-1.png" class="jb-c">
					
				</div>
			</a>
		</li>
		<li>
			<a href="./img/2-1.png">
				<div class="screen">
					<img src="./img/2.jpg" class="screen">
					<img src="./img/2-1.png" class="jb-c">
					
				</div>
			</a>
		</li>
		<li>
			<a href="./img/3-1.png">
				<div class="screen">
					<img src="./img/3.jpg" class="screen">
					<img src="./img/3-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/4-1.png">
				<div class="screen">
					<img src="./img/4.jpg" class="screen">
					<img src="./img/4-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/5-1.png">
				<div class="screen">
					<img src="./img/5.jpg" class="screen">
					<img src="./img/5-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/6-1.png">
				<div class="screen">
					<img src="./img/6.jpg" class="screen">
					<img src="./img/6-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/7-1.png">
				<div class="screen">
					<img src="./img/7.jpg" class="screen">
					<img src="./img/7-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/8-1.png">
				<div class="screen">
					<img src="./img/8.jpg" class="screen">
					<img src="./img/8-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/9-1.png">
				<div class="screen">
					<img src="./img/9.jpg" class="screen">
					<img src="./img/9-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/10-1.png">
				<div class="screen">
					<img src="./img/10.jpg" class="screen">
					<img src="./img/10-1.png" class="jb-c">
				</div>
			</a>
		</li>
	</ul>
<ul>
		<li>
			<a href="./img/11-1.png">
				<div class="screen">
					<img src="./img/11.jpg" class="screen">
					<img src="./img/11-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/12-1.png">
				<div class="screen">
					<img src="./img/12.jpg" class="screen">
					<img src="./img/12-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/13-1.png">
				<div class="screen">
					<img src="./img/13.jpg" class="screen">
					<img src="./img/13-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/14-1.png">
				<div class="screen">
					<img src="./img/14.png" class="screen">
					<img src="./img/14-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/15-1.png">
				<div class="screen">
					<img src="./img/15.jpg" class="screen">
					<img src="./img/15-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/16-1.png">
				<div class="screen">
					<img src="./img/16.jpg" class="screen">
					<img src="./img/16-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/17-1.png">
				<div class="screen">
					<img src="./img/17.jpg" class="screen">
					<img src="./img/17-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/18-1.png">
				<div class="screen">
					<img src="./img/18.jpg" class="screen">
					<img src="./img/18-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/19-1.png">
				<div class="screen">
					<img src="./img/19.jpg" class="screen">
					<img src="./img/19-1.png" class="jb-c">
				</div>
			</a>
		</li>
		<li>
			<a href="./img/20-1.png">
				<div class="screen">
					<img src="./img/20.jpg" class="screen">
					<img src="./img/20-1.png" class="jb-c">
				</div>
			</a>
		</li>
	</ul>
</div><br>
<%@ include file="/footer.jsp" %>
</body>
</html>