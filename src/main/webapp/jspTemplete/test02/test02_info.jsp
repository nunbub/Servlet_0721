<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>test02 MusicInfo</title>
</head>
<body>
	
	<%@ include file="musicData.jsp" %>  <!-- 정적 템플릿 -->
<%
    
    String musicIdString = request.getParameter("id");
    
    int musicId = 0;
    if(musicIdString != null){
    	musicId = Integer.parseInt(musicIdString);
    }
    
    String musicTitle = request.getParameter("title");
        
%>
	
	
	
	
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		
		<section>
		
			<%for(Map<String, Object> music : musicList){ 
				int id = (Integer)music.get("id");
				if((musicIdString != null && musicId == id) || 
						(musicTitle != null && musicTitle.equals(music.get("title")))){	
					int time = (Integer)music.get("time");
				%>
			<h2 class="mt-3">곡 정보</h2>
			
			<div class="artist-box d-flex border border-success p-3">
			
				<div>
					<image width="180" src="<%= music.get("thumbnail") %>">
				</div>
				
				<div class="ml-3">
				
					<div class="display-4"><%= music.get("title") %></div>
					
					<div class="font-weight-bold text-success"><%= music.get("singer") %></div>
					
					<div class="small mt-3">
						<div>앨범 : <%= music.get("album") %></div>
						<div>재생시간 : <%= time/ 60 %> : <%= time % 60 %></div>
						<div>작곡가 : <%= music.get("composer") %></div>
						<div>작사가 : <%= music.get("lyricist") %></div>
					</div>
					
				</div>	
				
			</div>
			
			<h2 class="mt-3">가사</h2>
			<hr>
			<div>가사 정보 없음</div>
				<%}
			}%>
		</section>
		
		<jsp:include page="footer.jsp" />
		
	</div>
</body>
</html>