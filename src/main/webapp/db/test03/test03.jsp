<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.nunbub.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<title>HONG당무 마켓</title>


</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();

	mysqlService.connect();
	
	String query = "SELECT * FROM `seller` \r\n"
				+ "JOIN `used_goods`\r\n"
				+ "ON seller.id = used_goods.sellerId \r\n"
				+ "ORDER BY seller.id DESC;\r\n";
			
	
	ResultSet resultSet = mysqlService.select(query);
	
	

%>

	<div class="container" style="width:900px">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		
		<section>
			<div class="d-flex flex-wrap">
			<% while(resultSet.next()){ %>
				<div style="border:1.5px solid #ff7f50;" class="m-3 p-2">
					<div><image width="250" src="<%= resultSet.getString("picture")%>"></div>
					<div><%= resultSet.getString("title") %></div>
					<div><%= resultSet.getInt("price") %></div>
					<div><%= resultSet.getString("nickname") %></div>
				</div>
			<%} %>
			</div>
		</section>
		
		<jsp:include page="footer.jsp" />
	</div>

</body>
</html>