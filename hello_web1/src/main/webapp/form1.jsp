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
	
	div {
		background-color: #CBCBCB;
		margin: 30px;
	}
	
	header {
		text-align: center;
		padding: 30px;
	}
	
	section {
		display: flex;
		background-color: #CBCBCB;
	}
	
	fieldset {
		width: 100%;
		margin: 10px;
		padding: 20px;
	}
	
	li {
		display: flex;
		list-style: none;
		padding: 10px;
	}
	
	label {
		flex: 1;
	}
	
	input {
		flex: 2;
	}
	
	
</style>
</head>
<body>
	<div>
	<header><h1>flex form 태그 만들어 보기</h1></header>
	
	<section>
		<fieldset>
			<form>
				<ul>
					<li>
						<label>Name: </label>
						<input type="text">
					</li>
					<li>
						<label>password: </label>
						<input type="text">
					</li>
				</ul>
			</form>
		</fieldset>
	</section>
	</div>
</body>
</html>