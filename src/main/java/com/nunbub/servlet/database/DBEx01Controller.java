package com.nunbub.servlet.database;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/db/ex01")
public class DBEx01Controller extends HttpServlet {

	
	
	 @Override
	 public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		 response.setContentType("text/plain");
		 
		 PrintWriter out = response.getWriter();
		 
		 try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 접속 주소, 아이디, 패스워드
			String url = "jdbc:mysql://localhost:3306/dulumary_0707";
			String userId = "root";
			String password= "Dldkgus77!";
			
			Connection connection = DriverManager.getConnection(url, userId, password);
			Statement statement = connection.createStatement();
			
			// used_goods
			String selectQuery = "SELECT * FROM `used_goods`;";
			ResultSet resultSet = statement.executeQuery(selectQuery);
			
			while(resultSet.next()) {
				
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("제목 : " + title + " 가격 : " + price);
				
			}
			
			String insertQuery = "INSERT INTO `used_goods`\r\n"
					+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
					+ "VALUE\r\n"
					+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 까탈스러워서 안먹어요', NULL, now(), now());";
			
			// insert, update, delete
			// 실행된 행의 개수 리턴
			// insert = 삽입된 행의 개수 / update = 수정된 행의 개수 / delete = 삭제된 행의 개수
			int count =  statement.executeUpdate(insertQuery);
			out.println("삽입 결과 : " + count);
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	 }
}
