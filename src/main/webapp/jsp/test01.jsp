<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
 
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
	 
	 double average = sum / (double)scores.length;
%>
	<h3>평균 : <%= average %></h3>

<% // 2
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	sum = 0;
	for(String score : scoreList){
		if(score.equals("O")) {
			sum += 10;
		}
	}
		
%>
	
	<h3>채점 결과는 <%= sum %> 점 입니다.</h3>
	
<%! // 3
	// 1부터 n 까지의 합을 구하는 함수
	public int allSum(int number) {
	
		int sum = 0;
		for(int i = 1; i <= number; i++){
			sum += i;
		}
		
		return sum;
	
    }	
	
%>
	<h3>1에서 50까지의 합은 <%= allSum(50) %></h3>	
	
<% // 4
	String birthDay = "20010820";
	
	String yearString = birthDay.substring(0, 4);
	int year = Integer.parseInt(yearString);
	
	int age = 2022 - year + 1;
%>	
	<h3><%= birthDay %>의 나이는 <%= age %> 살 입니다.</h3>
	
	
	
	
	
	
	

</body>
</html>