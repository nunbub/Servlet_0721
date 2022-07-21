package com.nunbub.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고, 이름과 나이를 html 출력
		String name = request.getParameter("name");
		String birthDay = request.getParameter("birthday");
		
		// 20010312
		String yearString = birthDay.substring(0, 4);
		
		int year = Integer.parseInt(yearString);
		int age = 2022 - year + 1;
		
//		out.println("<html><head><title>get Method</title></head><body>");
//		
//		out.println("<h2> 이름 : " + name + "</h2>");
//		out.println("<h3> 나이 : " + age + "</h3>");
//		
//		out.println("</body></html>");
		
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
		
		
		
		
		
	}
}
