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

<title>HONG당무 마켓 input</title>
</head>
<body>
<% 
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String query = "SELECT * FROM `seller`;";
	
	ResultSet resultSet = mysqlService.select(query);
	

%>
	
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		<section>
			<div class="m-4"><h2>물건 올리기</h2></div>
			<div>
				<div class="d-flex justify-content-between">
					<div class="col-4">
						<select class="form-control">
							<option>-아이디 선택-</option>
							<% while(resultSet.next()){ %>
							<option><%= resultSet.getString("nickname") %></option>
							<%} %>
						</select>
					</div>
					
					
					<input type="text" placeholder="제목" class="col-5">
					<div class="input-group col-3">
						<input type="text" placeholder="가격" class="form-control">
						<div class="input-group-append">
							<span class="input-group-text">원</span>
						</div>	
					</div>					
				</div>
				
				<div>
					<textarea rows="7" cols="90" class="form-control mt-3"></textarea>					
				</div>
				
				<div class="input-group mt-3">
					<div class="input-group-prepend">
						<span class="input-group-text">이미지 url</span>
					</div>
					<input type="text" class="form-control">
				</div>
				<button type="submit" class="btn btn-secondary form-control mt-3">저장</button>
			</div>
		
		</section>
	
		<jsp:include page="footer.jsp" />
	</div>
	
	
	
</body>
</html>