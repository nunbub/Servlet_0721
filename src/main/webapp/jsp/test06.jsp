<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 제어문 사용하기 1</title>
</head>
<body>
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
	    	"저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});%>
		
		<h1>장 목록</h1>
		<table border="1">
			<tr>
				<th>번호</th>
				<th>품목</th>
			</tr>		
		<%
		int i = 0;
		for(String goods : goodsList){
		 	i++;%>
		 	
		 <tr>
		 	<td><%= i %></td>
		 	<td><%= goods %></td>
		 </tr>	
		 	
		 <%} %>	
		 	
		 	
		
		</table>
</body>
</html>