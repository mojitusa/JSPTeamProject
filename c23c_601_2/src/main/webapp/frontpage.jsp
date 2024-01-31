<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
.container {
	margin: 0 auto;
	width: 1115px;
	/* width: 60%; */
	background-color: #F5ECE4;
}

header {
	height: 100px;
	text-align: center; /* 수평 가운데 정렬 */
  	/* line-height: 100px; */
}
.verticalmain {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	
}
.mainleft {
	width: 25%
}
.menu {
}
.no-bullet {
	/* 동글뱅이 지우는 법 */
	margin-top: 40px;
	list-style-type: none;
	padding: 10px;
}
.no-bullet li {
	display: flex;
	align-items: center;
	margin-bottom: 20px;
	font-size: 20px;
}
.no-bullet li img {
	margin-right: 10px;
}

.maincenter {
	width: 100%;
}

.boxrow {
	margin: 10px;
	height: 300px;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	background-color: ffffea;
}

.youtubeleftbox {
	width: 50%;
	margin-right: 2px;
}	

.youtubelink {
	height: 10%;
	display: flex;
	align-items: center;
    
}
.youtubelink a {
	color: inherit;
	text-decoration: none;
	font-weight: bold;
}

.youtubelink img {
    margin-right: 10px; /* 이미지와 텍스트 사이 여백을 조절 */
 }
.youtubeplay {
	height: 90%;
	width: 100%
	
}

.youtuberightbox{
	width: 50%;
	margin-left: 2px;
}

.boxleft {
	width: 50%;
	margin-right: 2px;
	background-color: #F8F8C1;
}

.boxright {
	width: 50%;
	margin-left: 2px;
	background-color: #F8F8C1;
}
.mainright {
	width: 18%
}
.account {
	background-color: #FFDC9F;
	paddin: 2px;
}
.rightAd {
	margin-top: 10px;
	padding: 3px;	
}
</style>
<head>
<meta charset="UTF-8">
<title>601 FrontPage</title>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script type="text/javascript" src="./js/frontmenu.js"></script>
</head>
<body>
	<div class="container">
		<header>
			<img src="./assets/img/mainHeaderImg.png" alt="601 게시판 아이콘" width="100" height="auto" >
			<img src="./assets/img/mainLogo.png" alt="601 게시판 로고" width="auto" height="100%" >
		</header>
		<div class="verticalmain">
			<div class="mainleft">
				<div class="menu">
					<nav>
						<ul class = no-bullet>
							<li onclick="url('./instagram')"><img src="./assets/img/instagram.png" alt="601스타그램" width="40" height="auto" > 601스타그램</li>
							<li onclick="url('./food')"><img src="./assets/img/restaurant.png" alt="601맛집" width="40" height="auto" > 601맛집</li>
							<li onclick="url('./jobinfo')"><img src="./assets/img/jobnews.png" alt="601취업 정보" width="40" height="auto" > 601취업정보</li>
							<li></li>
							<li></li>
							
						</ul>
					</nav>
				</div>
			</div>
			<div class="maincenter">
				<div class="boxrow">
					<div class = "youtubeleftbox">
						<div class="youtubelink">
							<img src="./assets/img/youtube.png" alt="유투브"> <a href="https://www.youtube.com/@poseidon5349/featured" target="_blank">선생님 유투브</a>
						</div>
						<div class ="youtubeplay">
							<iframe  width="100%" height="100%" src="https://www.youtube.com/embed/YkVyu_uXB3Y" frameborder="0" allowfullscreen></iframe>
						</div>
					</div>
					
					<div class="youtuberightbox">
						<div class="youtubelink">
							<img src="./assets/img/youtube.png" alt="유투브"> <a href="https://www.youtube.com/@codingnoodle" target="_blank">추천 유투브</a>
						</div>
						<div class ="youtubeplay">
							<iframe width="100%" height="100%" src="https://www.youtube.com/embed/ti00Z0S-haE" frameborder="0" allowfullscreen></iframe>
						</div>
					</div>
				</div>
				<div class="boxrow">
					<div class="boxleft">
						<img src="./assets/img/ad.png" alt="광고" width="100%" height="100%" > 
					</div>
					<div class="boxright">두 번째 박스</div>
				</div>
				<div class="boxrow">
					<div class="boxleft">세 번째 박스</div>
					<div class="boxright">네 번째 박스</div>
				</div>
			</div>
			<div class="mainright">
				<div class="account">
					<div>
						<input type="hidden" name="_csrf" value="1358311e-a772-408c-8f71-a0ba45d9107a"/>
						<input type="text" autocapitalize="off" placeholder="아이디" name="userId" value="" class="input_id" spellcheck="false">
						<input type="password" placeholder="비밀번호" name="userPassword" value="" class="input_pw" spellcheck="false">
						
					</div>
				</div>
				<div class = rightAd>
					<img src="./assets/img/ad_right.png" alt="오른쪽 광고 배너" width="100%" height="auto" >
				</div>
			</div>
		</div>
	</div>
</body>
</html>