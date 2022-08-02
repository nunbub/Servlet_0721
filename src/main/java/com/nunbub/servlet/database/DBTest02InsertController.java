package com.nunbub.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nunbub.servlet.common.MysqlService;

@WebServlet("/db/test02/insert")
public class DBTest02InsertController extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String site = request.getParameter("site");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `website`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('" + site +"', '" + url + "', now(), now())";
		
		mysqlService.update(query);
		
		mysqlService.disConnect();
		
		response.sendRedirect("/db/test02.jsp");
	}
	
}
