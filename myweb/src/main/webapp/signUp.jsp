<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
	}
	
	header {
		display: flex;
		background-color: #222222;
	}
	
	#logo-img {
		width: 100vh;
		display: flex;
		justify-content: flex-start;
	}
	
	#logo-img2 {
		width: 100vh;
		display: flex;
		justify-content: flex-end;
	}
	
	section {
		display: flex;
		flex-direction: column;
		align-items: center;
		margin-bottom: 10px;
	}
	
	table {
		width: 80vh;
		border-top: 1px solid #000;
		margin-bottom: 10px;
	}
	
	td {
		padding: 10px;
		border-bottom: 1px solid #ccc;
	}
	
	.line-td {
		border-right: 1px solid #ccc;
		width: 200px;
		background-color: #D5DDF7;
	}
	
	form {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	input[type=submit] {
		width: 200px;
		padding: 10px;
	}
</style>
</head>
<body>
	<header>
		<div id="logo-img">
			<img alt="membership" src="images/membership.png">
		</div>
		<div id="logo-img2">
			<img alt="cgv" src="images/cgv.png">
		</div>
	</header>
	<section>
		<div>
			<h1>회원가입</h1>
		</div>
		<div>
			<p>라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의 카드로 즐기세요~</p>
		</div>
		<form action="/myweb/userController?action=signUp" method="post">
			<figure>
				<figcaption>
					기본정보
				</figcaption>
				<table>
					<tr>
						<td class="line-td">✔ 이름</td>
						<td><input type="text" name="username" required="required"></td>
					</tr>
					<tr>
						<td class="line-td">✔ 아이디</td>
						<td>
							<input type="text" name="userId" required="required">
						</td>
					</tr>
					<tr>
						<td class="line-td">✔ 비밀번호</td>
						<td><input type="text" name="password" required="required"></td>
					</tr>
					<tr>
						<td class="line-td">✔ 생년월일</td>
						<td><input type="date" name="birthDate" required="required"></td>
					</tr>
					<tr>
						<td class="line-td">✔ 휴대전화번호</td>
						<td><input type="text" name="tel" required="required"></td>
					</tr>
					<tr>
						<td class="line-td">✔ 이메일</td>
						<td><input type="email" name="email" required="required"></td>
					</tr>
				</table>
			</figure>
			<input type="submit" value="회원가입">
		</form>
	</section>
<jsp:include page="/layout/footer.jsp"/>