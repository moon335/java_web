<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}
	
	form {
		display: flex;
		flex-direction: column;
	}
	
	div {
		margin: 10px;
	}
	
	input[type="submit"] {
		padding: 5px;
		background-color: #84A9FF;
		color: #fff;
		border: none;
		border-radius: 5px;
		margin-bottom: 5px;
	}
</style>
</head>
<body>
	<form action="cartProc.jsp" method="post">
		<div>
			<label for="apple"><input type="checkbox" id="apple" name="fruit">사과</label>
		</div>
		<div>
			<label for="peach"><input type="checkbox" id="peach" name="fruit">복숭아</label>
		</div>
		<div>
			<label for="banana"><input type="checkbox" id="banana" name="fruit">바나나</label>
		</div>
		<input type="submit" value="Submit">
		<input type="submit" value="delete">
	</form>
</body>
</html>