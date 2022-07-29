<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex py-3">
			<div class="col-2">
				<h2 class="text-success">Melong</h2>
			</div>
			<div class="col-4 d-flex align-items-center">
				<form method="get" action="/jspTemplete/test02/test02_info.jsp"> 
					<div class="input-group">
				  		<input type="text" class="form-control" name="title">
				  		<div class="input-group-append">
				    		<button class="btn btn-success" type="button submit">검색</button>
				  		</div>
			  		</div>
		  		</form>
			</div>
		</header>