<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV 따라하기</title>
<style type="text/css">
	
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
	}
	
	header {
		display: flex;
		flex-direction: column;
	}
	
	#top {
		display: flex;
	}
	
	#logo {
		flex: 3.2;
	}
	
	#menu {
		flex: 1;
	}
	
	#index {
		display: flex;
	}
	
	li {
		list-style: none;
	}
	
	a {
		text-decoration: none;
		color: #000;
	}
	
	.nav-depth1 {
		display: flex;
		overflow: hidden;
		flex: 6;
	}
	
	#searchbox {
		flex: 1;
		
	}
	
	#searchform {
		margin-right: 50px;
		border-left: 1px solid #ccc;
		border-right: 1px solid #ccc;
		padding: 5px;
		display: flex;
	}
	
	#search {
		border: none;
		margin-right: 5px;
	}
	
	#button {
		border: none;
		margin-right: 0;
	}
	
	.nav-depth1 > li {
		width: 10%;
		text-align: center;
		line-height: 40px;
	}
	
	.nav-depth2 > li {
		line-height: 50px;
	}
	
	.nav-depth2 {
		height: 0;
		overflow: hidden;
	}
	
	.nav-depth1 > li:hover {
		background-color: #000;
		transition-duration: 0.5s;
	}
	
	.nav-depth1 > li:hover a {
		color: white;
		transition-duration: 0.5s;
	}
	
	.nav-depth1 > li:hover .nav-depth2 {
		height: 450px;
		transition-duration: 1s;
	}
	
	section {
		display: flex;
		justify-content: center;
	}
	
	.slider {
		overflow: hidden;
		margin: 0 auto;
		
	}
	
	.slider input[type=radio] {
		display: none;
	}
	
	ul.imgs {
		padding: 0;
		margin: 0;
		list-style: none;
		display: flex;
		justify-content: center;
	}
	
	ul.imgs li {
		position: absolute;
		transition-delay: 1s;
	}
	
	.bullets {
		position: absolute;
		left: 50%;
		transform: translateX(-50%);
		bottom: 20px;
		z-index: 2;
	}
	
	.bullets label {
		display: inline-block;
		border-radius: 50%;
		background-color: rgba(0, 0, 0, 0.55);
		width: 20px;
		height: 20px;
		cursor: pointer;
	}
	
	.slider input[typeradio]:nth-child(1):checked~.bullets>label:nthchild(1){
		background-color: #fff;
	}
	
	.slider input[typeradio]:nth-child(2):checked~.bullets>label:nthchild(2){
		background-color: #fff;
	}
	
	.slider input[typeradio]:nth-child(3):checked~.bullets>label:nthchild(3){
		background-color: #fff;
	}
	
	.slider input[typeradio]:nth-child(4):checked~.bullets>label:nthchild(1){
		background-color: #fff;
	}
	
	.slider input[typeradio]:nth-child(5):checked~.bullets>label:nthchild(1){
		background-color: #fff;
	}
	
	.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1) {
		transition: 0.5s;
		z-index: 1;
	}
	
	.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2) {
		transition: 0.5s;
		z-index: 1;
	}
	
	.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3) {
		transition: 0.5s;
		z-index: 1;
	}
	
	.slider input[type=radio]:nth-child(4):checked~ul.imgs>li:nth-child(4) {
		transition: 0.5s;
		z-index: 1;
	}
	
	.slider input[type=radio]:nth-child(5):checked~ul.imgs>li:nth-child(5) {
		transition: 0.5s;
		z-index: 1;
	}
	
</style>
</head>
<body>
	<header>
		<div id="top">
			<div id="logo">
				<img alt="대충 로고 파일" src="images/cgv로고.png">
			</div>
			<div id="menu">
				<img alt="카드광고" src="images/카드광고.png">
				<img alt="로그인" src="images/로그인.png">
				<img alt="회원가입" src="images/회원가입.png">
				<img alt="내정보" src="images/내정보.png">
				<img alt="고객센터" src="images/고객센터.png">
			</div>
		</div>
		<div id="index">
			<ul class="nav-depth1">
                <li>
                    <a href="#">영화</a>
                    <ul class="nav-depth2">
                        <li><a href="#"><strong>영화</strong></a></li>
                        <li><a href="#">무비차트</a></li>
                        <li><a href="#">아트하우스</a></li>
                        <li><a href="#">ICECON</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">극장</a>
                    <ul class="nav-depth2">
                        <li><a href="#"><strong>극장</strong></a></li>
                        <li><a href="#">CGV극장</a></li>
                        <li><a href="#">특별관</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">예매</a>
                    <ul class="nav-depth2">
                        <li><a href="#"><strong>예매</strong></a></li>
                        <li><a href="#">빠른예매</a></li>
                        <li><a href="#">상영스케줄</a></li>
                        <li><a href="#">English Ticketing</a></li>
                        <li><a href="#">English Schedule</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">스토어</a>
                    <ul class="nav-depth2">
                        <li><a href="#"><strong>스토어</strong></a></li>
                        <li><a href="#">패키지</a></li>
                        <li><a href="#">영화관람권</a></li>
                        <li><a href="#">기프트카드</a></li>
                        <li><a href="#">콤보</a></li>
                        <li><a href="#">팝콘</a></li>
                        <li><a href="#">스낵</a></li>
                        <li><a href="#">플레이존</a></li>
                        <li><a href="#">씨네샵 ></a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">이벤트</a>
                    <ul class="nav-depth2">
                        <li><a href="#"><strong>이벤트</strong></a></li>
                        <li><a href="#">SPECIAL</a></li>
                        <li><a href="#">영화/예매</a></li>
                        <li><a href="#">멤버십/CLUB</a></li>
                        <li><a href="#">CGV극장별</a></li>
                        <li><a href="#">제휴할인</a></li>
                        <li><a href="#">당첨자 발표</a></li>
                        <li><a href="#">종료된 이벤트</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">혜택</a>
                    <ul class="nav-depth2">
                        <li><a href="#"><strong>혜택</strong></a></li>
                        <li><a href="#">CGV 할인정보</a></li>
                        <li><a href="#">CLUB서비스</a></li>
                        <li><a href="#">VIP 라운지</a></li>
                    </ul>
                </li>
            </ul>
            <div id="searchbox">
	            <form action="" method="post" id="searchform">
	            	<input type="text" id="search" name="search">
	            	<button id="button"><img src="images/돋보기.png"></button>
	            </form>
            </div>
		</div>
	</header>
	<section>
		<div class="slider">
			<input type="radio" name="slide" id="slide1" checked>
			<input type="radio" name="slide" id="slide2">
			<input type="radio" name="slide" id="slide3">
			<input type="radio" name="slide" id="slide4">
			<input type="radio" name="slide" id="slide5">
			<ul id="imgholder" class="imgs">
				<li><img src="images/문단속.jpg"></li>
				<li><img src="images/슬램덩크.jpg"></li>
				<li><img src="images/웅남이.jpg"></li>
				<li><img src="images/던전앤드래곤.jpg"></li>
				<li><img src="images/소울메이트.jpg"></li>
			</ul>
			<div class="bullets">
				<label for="slide1">&nbsp;</label>
				<label for="slide2">&nbsp;</label>
				<label for="slide3">&nbsp;</label>
				<label for="slide4">&nbsp;</label>
				<label for="slide5">&nbsp;</label>
			</div>
		</div>
	</section>
	<footer>
		
	</footer>
</body>
</html>