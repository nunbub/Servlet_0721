<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> 
<%@ page import="java.util.Arrays" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>

	<% // 1
	 int[] scores = {80, 90, 100, 95, 80};
	
	 int sum = 0;
	 for(int i = 0; i < scores.length; i++){
		 sum += scores[i];
	 }
	 
	 double average = sum / scores.length;
	%>
	<h3>평균 : <%= average %></h3>

	<% // 2
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	for(int i = 0; i < scoreList.length; i++){
		if(scoreList[i] == "O") {
			
		}
	}
	
	
	
	
	%>

</body>
</html>