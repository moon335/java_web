<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert Todo</title>
<style type="text/css">
	
	body {
		display: flex;
		flex-direction: column;
	}
	
	form {
		width: 40%;
		display: flex;
		flex-direction: column;
	}
	
	div {
		margin-bottom: 10px;
		display: flex;
	}
	
	div label {
		flex: 1;
	}
	
	div input {
		flex: 2;
	}
	
</style>
</head>
<body>
	<h1>insert Todo</h1>
	<form action="/todo2/todoTest?action=insert" method="post">
		<div>
			<label for="title">title</label>
			<input type="text" id="title" name="title" required="required">
		</div>
		<div>
			<label for="description">description</label>
			<input type="text" id="description" name="description" required="required">
		</div>
		<div>
			<label for="priority">priority</label>
			<input type="number" id="priority" name="priority" required="required">
		</div>
		<div>
			<label for="completed">completed</label>
			<input type="text" id="completed" name="completed" required="required">
		</div>
		<div>
			<label for="categoryId">category_id</label>
			<input type="number" id="categoryId" name="categoryId" required="required">
		</div>
		<div>
			<input type="submit" value="저장하기">
		</div> 
	</form>
</body>
</html>