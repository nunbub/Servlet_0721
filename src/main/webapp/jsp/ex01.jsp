<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 문법</title>
</head>
<body>

	<!-- html 주석 : 자바 코드를 포함시킨다 -->
	<%-- jsp 주석 : 자바 코드를 포함시킨다, 실행이 되면 자바코드와 함께 사라짐 --%>
	<h2>JSP 기본 문법</h2>
	
	<%
		// 자바 주석
		// 1 ~ 10 까지의 합 구하기
		int sum = 0;
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
		
	%>
	
	<h3>합계 : <%= sum %></h3>
	<input type="text" value="<%= sum %>">
	
	<%
		// 동물 이름 리스트
		List<String> animals = new ArrayList<>();
		animals.add("dog");
		animals.add("cat");
	
	%>
	
	<%-- jsp언어를 이클립스가 잘 못잡아줘서 문제가 없는데 에러를 띄우는 경우가 있음 --%>
	<h3><%= animals.get(0) %></h3>
	<h3><%= animals.get(1) %></h3>

	<%! 
		// 멤버변수
		private int number = 100;
	
		// 메소드
		// hello world를 리턴하는 메소드
		public String getHelloWorld(){
			return "hello world";
		}
	%>

	<h3><%= getHelloWorld() %></h3>





</body>
</html>