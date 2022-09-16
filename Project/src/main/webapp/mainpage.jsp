<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/all.css">
</head>
<style>

li,a,h4{font-family: 'Black Han Sans', sans-serif;}
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
<div class="slidebox">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<input type="radio" name="slide" id="slide04">
	<ul class="slidelist">
		<li class="slideitem">
			<div>
				<label for="slide04" class="left"></label>
				<label for="slide02" class="right"></label>
				<a><img src="https://movie-phinf.pstatic.net/20140610_8/1402389961106dayCT_JPEG/movie_image.jpg"></a>
			</div>
		</li>
		<li class="slideitem">
			<div>
				<label for="slide01" class="left"></label>
				<label for="slide03" class="right"></label>
				<a><img src="https://joinsmediacanada.com/data/file/channel/0_Bzp5x60P_15ae404f-740a-476b-bf8f-458c68ca39ad.jpg"></a>
			</div>
		</li>
		<li class="slideitem">
			<div>
				<label for="slide02" class="left"></label>
				<label for="slide04" class="right"></label>
				<a><img src="https://i.ytimg.com/vi/UuE7g2CyO-g/maxresdefault.jpg"></a>
			</div>
		</li>
		<li class="slideitem">
			<div>
				<label for="slide03" class="left"></label>
				<label for="slide01" class="right"></label>
				<a><img src="https://mblogthumb-phinf.pstatic.net/MjAxNzA2MDFfMjA2/MDAxNDk2Mjg0Mjc4Mjg3.2xjbSLQEt6ig9kdl24lb9D908sFlsi1e3xKQrO0zC-Ug.BRL1NS4eNq2BOSPgSH46BdKlyWK3yZdhqX9L0S_B1kkg.JPEG.businessinsight/image_8458767881496284259443.jpg?type=w800"></a>
			</div>
		</li>
		
	</ul>
</div>

<div class="box1">

<div class="middle">
<br>
<br>
<br>
<h2 style="text-align:center;">역대 박스오피스 TOP10</h2>

<br>
</div>
<div class="gallerylist">
	<ul>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">명량</div>
					<div class="bottom">감독 : 김한민<br>주연배우 : 최민식<br>장르 : 액션, 드라마, 사극, 전쟁<br>대한민국 총관객수 : 17,615,686명</div>
					<img src="http://ojsfile.ohmynews.com/STD_IMG_FILE/2014/0714/IE001732248_STD.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">극한직업</div>
					<div class="bottom">감독 : 이병헌<br>주연배우 : 류승룡 외<br>장르 : 코미디, 범죄, 액션, 느와르, 형사<br>대한민국 총관객수 : 16,266,338명</div>
					<img src="https://web-cf-image.cjenm.com/crop/660x950/public/share/metamng/programs/extremejob-movie-poster-ko-001-01.jpg_1645638949085.jpg?v=1662031810">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">신과 함께 | 죄와벌 |</div>
					<div class="bottom">감독 : 김용화<br>주연배우 : 하정우 외<br>장르 : 판타지, 드라마<br>대한민국 총관객수 : 14,414,669명</div>
					<img src="https://t1.daumcdn.net/cfile/blog/99493C405DA8957602">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">국제시장</div>
					<div class="bottom">감독 : 윤제균<br>주연배우 : 황정민<br>장르 : 전쟁, 가족, 드라마<br>대한민국 총관객수 : 14,261,427명</div>
					<img src="http://t1.daumcdn.net/cfile/2502AF49546B09E61F">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">어벤져스 엔드게임</div>
					<div class="bottom">감독 : 앤서니 루소<br>주연배우 : 로버트 다우니 주니어 외<br>장르 :슈퍼히어로, SF, 액션, 어드벤처<br>대한민국 총관객수 : 13,977,602명</div>
					<img src="https://www.themoviedb.org/t/p/original/58D6muzcoc5JvFoVJvCyEafAiw0.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">겨울왕국2</div>
					<div class="bottom">감독 : 크리스 벅<br>주연배우 : 크리스틴 벨 외<br>장르 : 애니메이션, 판타지, 가족, 어드벤처<br>대한민국 총관객수 : 13,747,792명</div>
					<img src="https://mblogthumb-phinf.pstatic.net/MjAxOTExMThfMTA5/MDAxNTc0MDQyMTU0MTM2.aLdkq0vcYNMSpoi97y4J-uClTcW99q6Vtxaa2n55b0kg.grypjV-LpDvYxmb2pjjhBrCftqzsZVhs5F9YFQXlt5Qg.JPEG.good9194/IMG_4149.JPG?type=w800">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">베테랑</div>
					<div class="bottom">감독 : 류승완<br>주연배우 : 황정민,유아인<br>장르 : 범죄, 오락, 액션<br>대한민국 총관객수 : 13,414,200명</div>
					<img src="http://t1.daumcdn.net/movie/097f7decd11d4a0ae39cb48eade62af63e43724d">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">아바타</div>
					<div class="bottom">감독 : 제임스 카메론<br>주연배우 : 샘 워딩턴, 조샐다나 외<br>장르 : SF, 액션, 판타지, 어드벤처<br>대한민국 총관객수 : 13,624,328명</div>
					<img src="https://images.justwatch.com/poster/176267183/s592/avatar">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">도둑들</div>
					<div class="bottom">감독 : 최동훈<br>주연배우 : 김윤석 외<br>장르 : 범죄, 액션, 드라마<br>대한민국 총관객수 : 12,983,821명</div>
					<img src="http://t1.daumcdn.net/cfile/192F9A4850062F8230">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">7번방의 선물</div>
					<div class="bottom">감독 : 이환경<br>주연배우 : 류승룡, 갈소원 외<br>장르 : 코미디, 드라마, 법정<br>대한민국 총관객수 : 12,811,206명</div>
					<img src="http://t1.daumcdn.net/cfile/1861D74750F7FBA71B">
				</div>
			</a>
		</li>
	</ul>
</div>
</div>
<div class="box1">

<div class="middle">
<br>
<br>
<br>
<h2 style="text-align:center;">국내 배우 TOP10</h2><br>
<div class="gallerylist">
	<ul>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">송강호</div>
					<div class="bottom">출연작:<br>변호인(2013)<br> 관상(2013)<br> 설국열차(2013)<br>택시운전사(2017)<br>기생충(2022)</div>
					<img src="https://img.hankyung.com/photo/202207/01.30757640.1.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">하정우</div>
					<div class="bottom">출연작:<br>범죄와의 전쟁(2012)<br>더 테러 라이브(2013)<br>암살(2015)<br>신과함께-죄와벌(2017)<br>신과함께-인과연(2018)</div>
					<img src="http://image.cine21.com/resize/cine21/person/2020/0102/14_58_19__5e0d867b85826[W578-].jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">최민식</div>
					<div class="bottom">출연작:<br>태극기휘날리며(2004)<br>신세계(2013)<br> 명량(2014)<br>봉오동전투(2019)</div>
					<img src="https://i.pinimg.com/originals/f2/d1/d8/f2d1d83ccceba289bd4e8caf364c6267.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">황정민</div>
					<div class="bottom">출연작:<br>신세계(2013)<br>국제시장(2014)<br> 베테랑(2015)<br>검사외전(2016)<br>군함도(2017)<br>공작(2018)<br>헌트(2022)</div>
					<img src="https://w.namu.la/s/326af398678bf9bc37d0a58db10177d2ec3d49058b0e865e2ad25b7601dd18933911a267ffa0e5497b309d04b0d93f767db2d9cfd203128bdd7f60698c758120f1de9f635b8089167521971403da25ab9e387f52462d6e495ed667a39b254317c34508242729e3456e893fa1d4e52873">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">오달수</div>
					<div class="bottom">출연작:<br>도둑들(2012)<br> 7번방의 선물(2013)<br> 변호인(2013)<br>국제시장(2014)<br>암살(2015)<br>베테랑(2015)<br>신과함께-죄와 벌</div>
					<img src="https://mblogthumb-phinf.pstatic.net/20160322_193/sgnam10_1458614708661NCBK1_JPEG/2.jpg?type=w2">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">윤여정</div>
					<div class="bottom">출연작:<br>여배우들(2009)<br>하녀(2010)<br> 그것만이 내세상(2018)<br>미나리(2021)</div>
					<img src="https://image.ajunews.com/content/image/2021/04/04/20210404173550903119.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">전지현</div>
					<div class="bottom">출연작:<br>도둑들(2012)<br> 베를린(2013)<br> 암살(2015)</div>
					<img src="https://file2.nocutnews.co.kr/newsroom/image/2018/09/22/20180922082853277339_0_656_850.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">손예진</div>
					<div class="bottom">출연작:<br>타워(2012)<br> 베를린(2013)<br> 암살(2015)</div>
					<img src="https://spnimage.edaily.co.kr/images/Photo/files/NP/S/2016/02/PS16021600060.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">김혜수</div>
					<div class="bottom">출연작:<br>타짜(2006)<br> 도둑들(2012)<br> 관상(2013)<br>차이나타운(2017)<br>국가부도의 날(2018)</div>
					<img src="https://dimg.donga.com/ugc/CDB/WOMAN/Article/5f/bc/5a/f0/5fbc5af006b7d2738de6.jpg">
				</div>
			</a>
		</li>
		<li>
			<a href="">
				<div class="screen">
					<div class="top">김향기</div>
					<div class="bottom">출연작:<br>바람과 함께 사라지다(2012)<br> 늑대소년(2012)<br> 신과함께-죄와 벌(2017)<br>신과함께-인과 연(2018)<br>한산: 용의 출현(2022)</div>
					<img src="http://www.tvj.co.kr/news/photo/202112/67919_107194_41.jpg">
				</div>
			</a>
		</li>
	</ul>
</div>
<br>
</div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>