package com.nunbub.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nunbub.servlet.common.MysqlService;

@WebServlet("/db/test02/delete")
public class DBTest02DeleteController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `website` WHERE `id` = " + id + ";";
		
		int count = mysqlService.update(query);
		
		mysqlService.disConnect();
		
		response.sendRedirect("/db/test02.jsp");
		
		
	}
	
}
