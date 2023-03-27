<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/layout/header.jsp"/>
<style type="text/css">
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
	}
	body {
		height: 100vh;
	}
	#username {
		background-image: url(images/username.png);
		background-repeat: no-repeat;
		box-sizing: border-box;
		padding-left: 35px;
		height: 30px;
		border: 2px solid #ccc;
		border-radius: 5px;
	}
	
	#password {
		background-image: url(images/password.png);
		background-repeat: no-repeat;
		box-sizing: border-box;
		padding-left: 35px;
		height: 30px;
		border: 2px solid #ccc;
		border-radius: 5px;
	}
	
	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		height: 40%;
	}
	
	.sectionDiv input[type=submit] {
		padding: 10px 80px;
		border: none;
		border-radius: 5px;
		background-color: #EF3752;
		color: #fff;
		cursor: pointer;
	}
	
	.wrap {
		border-top: 2px solid #ccc;
		border-bottom: 2px solid #ccc;
		padding: 60px 0;
	}
	
	.sectionDiv p {
		font-size: 10px;
	}
	
	.sectionDiv {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		margin-bottom: 8px;
	}
	
</style>
	<section>
		<div class="wrap">
			<div class="sectionDiv">
				<p>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
			</div>
			<div class="sectionDiv">
				<input type="text" id="username" name="username">
			</div>
			<div class="sectionDiv">
				<input type="password" id="password" name="password">
			</div>
			<div class="sectionDiv">
				<input type="submit" value="로그인" id="loginbutton">
			</div>
		</div>
	</section>
<jsp:include page="/layout/footer.jsp"/>