<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/all.css">
</head>
<style>

/* 중앙정렬 코드- 삭제하고 사용하세요 */
* {margin:0;padding:0;box-sizing:border-box;} /* 모든 요소 마진패딩 리셋 */
/* 중앙정렬 코드-삭제하고 사용하세요 */

.gallerylist {max-width:1400px;width:100%; margin:0 auto;}
.gallerylist > ul {font-size:0;}
.gallerylist > ul > li {display:inline-block;vertical-align:top;width:20%;}
.gallerylist > ul > li > a {display:block;width:auto;text-decoration: none;margin:5px;}
.gallerylist > ul > li > a .screen {position:relative;overflow:hidden;}
.gallerylist > ul > li > a .screen .top {position:absolute;bottom:150%;left:30px;z-index:2;color:#fff;font-size:26px;font-weight:900;transition:all .35s;}
.gallerylist > ul > li > a .screen .bottom {position:absolute;top:150%;left:30px;z-index:2;color:#fff;font-size:13px;transition:all .35s;}
.gallerylist > ul > li > a .screen img {width:300px; height:450px; }
.gallerylist > ul > li > a h3 {font-size:14px;text-align:center;padding:20px;color:#666;}
.gallerylist > ul > li > a .screen::after {content:'';display:block;position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.5);z-index:1;opacity:0;transition:all .35s;}
.gallerylist > ul > li > a:hover .top {bottom:52%;}
.gallerylist > ul > li > a:hover .bottom {top:52%;}
.gallerylist > ul > li > a:hover .screen::after {opacity:1;}

</style>


<body>

<%@ include file="/header.jsp" %>
<div class="middle">
<br>
<br>
<br>
<br>
<div style="width:600px; position:relative; left:60px;">
<h2>주요 배우 10인의 흥행 성적을 확인해보세요</h2><br>
<hr style="border: solid; 1px; color:rgb(105,34,38);">
</div>
<br><br>
<div class="gallerylist">
	<ul>
		<li>
			<a href="actor_SGH.jsp">
				<div class="screen">
					<div class="top">송강호</div>
					<div class="bottom">출연작:<br>변호인(2013)<br> 관상(2013)<br> 설국열차(2013)<br>택시운전사(2017)<br>기생충(2022)</div>
					<img src="https://img.hankyung.com/photo/202207/01.30757640.1.jpg" href="eachActor.jsp">
				</div>
			</a>
		</li>
		<li>
			<a href="actor_HJW.jsp">
				<div class="screen">
					<div class="top">하정우</div>
					<div class="bottom">출연작:<br>범죄와의 전쟁(2012)<br>더 테러 라이브(2013)<br>암살(2015)<br>신과함께-죄와벌(2017)<br>신과함께-인과연(2018)</div>
					<img src="http://image.cine21.com/resize/cine21/person/2020/0102/14_58_19__5e0d867b85826[W578-].jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="actor_CMS.jsp">
				<div class="screen">
					<div class="top">최민식</div>
					<div class="bottom">출연작:<br>태극기휘날리며(2004)<br>신세계(2013)<br> 명량(2014)<br>봉오동전투(2019)</div>
					<img src="https://i.pinimg.com/originals/f2/d1/d8/f2d1d83ccceba289bd4e8caf364c6267.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="actor_HJM.jsp">
				<div class="screen">
					<div class="top">황정민</div>
					<div class="bottom">출연작:<br>신세계(2013)<br>국제시장(2014)<br> 베테랑(2015)<br>검사외전(2016)<br>군함도(2017)<br>공작(2018)<br>헌트(2022)</div>
					<img src="https://w.namu.la/s/326af398678bf9bc37d0a58db10177d2ec3d49058b0e865e2ad25b7601dd18933911a267ffa0e5497b309d04b0d93f767db2d9cfd203128bdd7f60698c758120f1de9f635b8089167521971403da25ab9e387f52462d6e495ed667a39b254317c34508242729e3456e893fa1d4e52873">
				</div>
			</a>
		</li>
		<li>
			<a href="actor_ODS.jsp">
				<div class="screen">
					<div class="top">오달수</div>
					<div class="bottom">출연작:<br>도둑들(2012)<br> 7번방의 선물(2013)<br> 변호인(2013)<br>국제시장(2014)<br>암살(2015)<br>베테랑(2015)<br>신과함께-죄와 벌</div>
					<img src="https://mblogthumb-phinf.pstatic.net/20160322_193/sgnam10_1458614708661NCBK1_JPEG/2.jpg?type=w2">
				</div>
			</a>
		</li>
		<li>
			<a href="actor_YYJ.jsp">
				<div class="screen">
					<div class="top">윤여정</div>
					<div class="bottom">출연작:<br>여배우들(2009)<br>하녀(2010)<br> 그것만이 내세상(2018)<br>미나리(2021)</div>
					<img src="https://image.ajunews.com/content/image/2021/04/04/20210404173550903119.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="actor_JJH.jsp">
				<div class="screen">
					<div class="top">전지현</div>
					<div class="bottom">출연작:<br>암살(2015)<br> 베를린(2013)<br> 도둑들(2012)</div>
					<img src="https://file2.nocutnews.co.kr/newsroom/image/2018/09/22/20180922082853277339_0_656_850.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="actor_SYJ.jsp">
				<div class="screen">
					<div class="top">손예진</div>
					<div class="bottom">출연작:<br>협상(2018)<br> 지금 만나러 갑니다(2018)<br> 덕혜옹주(2016)<br>해적:바다로 간 산적 (2014)</div>
					<img src="https://spnimage.edaily.co.kr/images/Photo/files/NP/S/2016/02/PS16021600060.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="actor_KHS.jsp">
				<div class="screen">
					<div class="top">김혜수</div>
					<div class="bottom">출연작:<br>도둑들(2012)<br> 관상(2013)<br> 차이나타운(2015)<br>굿바이 싱글(2016)</div>
					<img src="https://dimg.donga.com/ugc/CDB/WOMAN/Article/5f/bc/5a/f0/5fbc5af006b7d2738de6.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="actor_KHG.jsp">
				<div class="screen">
					<div class="top">김향기</div>
					<div class="bottom">출연작:<br>한산: 용의 출현(2022)<br>신과함께-인과 연(2018)<br> 신과함께-죄와 벌(2017)<br>증인(2019)</div>
					<img src="http://www.tvj.co.kr/news/photo/202112/67919_107194_41.jpg">
				</div>
			</a>
		</li>
	</ul>
</div>
<br>
</div>
</div>
<br>
<%@ include file="/footer.jsp" %>
</body>
</html>