<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get method request</title>
</head>
<body>

<%
	// 이름과 생년월일을 전달 받고, 나이 계산후 테이블에 출력
	// String name = request.getParameter("name");
	String birthDay = request.getParameter("birthday");

	String yearString = birthDay.substring(0, 4);
	int year = Integer.parseInt(yearString);
	
	int age = 2022 - year + 1;
%>

	<table border="1">
		
		<tr>
			<th>이름</th>
			<td><%= request.getParameter("name") %></td>
		</tr>
		<tr>
			<th>나이</th>
			<td><%= age %></td>
		</tr>
	
	</table>

</body>
</html>