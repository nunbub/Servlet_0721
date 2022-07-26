<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post form</title>
</head>
<body>
	
	<form method="post" action="/jsp/ex03.jsp">
		<label>닉네임</label> <input type="text" name="nickname">
		
		<h4>강아지 or 고양이 or 사자</h4>
		<label>강아지 <input type="radio" name="animal" value="dog"> </label>
		<label>고양이 <input type="radio" name="animal" value="cat"> </label>
		<label>사자 <input type="radio" name="animal" value="lion"> </label>
		
		<h4>좋아하는 과일을 선택하세요.</h4>
		
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="peach">복숭아</option>
			<option>딸기</option>
		</select>
		
		<h4>다음 중 선호하는 음식을 고르세요</h4>
		<label>민트초코<input type="checkbox" name="food" value="mincho"></label>
		<label>하와이안 피자<input type="checkbox" name="food" value="pizza"></label>
		<label>번데기<input type="checkbox" name="food" value="pupa"></label>
		
		
		
		
		
		
		<button type="submit">입력</button>
	</form>
	
</body>
</html>