<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test05</title>
</head>
<body>
<% 
	int cm = Integer.parseInt(request.getParameter("length"));
	
	String[] types = request.getParameterValues("type");
	
	String result = "";
	for(int i = 0; i < types.length; i++){
		if(types[i].equals("inch")){
			double inch = cm * 0.39;
			result += inch + " in<br>";
		}else if(types[i].equals("yard")){
			double yard = cm * 0.010936133;
			result += yard + " yd<br>";
		}else if(types[i].equals("feet")){
			double feet = cm * 0.032808399;
			result += feet + " ft<br>";
		}else if(types[i].equals("meter")){
			double meter = cm / 100.0;
			result += meter + " m<br>";
		}
	}
	
	
%>


	<h2>변환 결과</h2>
	<h3><%= cm %> cm</h3>
	<hr>
	
	<h3><%= result %></h3>



</body>
</html>