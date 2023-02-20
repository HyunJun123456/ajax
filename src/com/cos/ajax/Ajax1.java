package com.cos.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ajax1
 */
@WebServlet("/ajax1")
public class Ajax1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax1() {
        super();
        // TODO Auto-generated constructor stub
    }
// 왜 못찾았을까? 버그일 수도...
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println("username: "+ username);
		System.out.println("password: "+ password);
		
		// 응답하면!! PrintWriter 내용이 result로 들어가게됨
		PrintWriter out = response.getWriter();
		out.print("ok");
		out.flush();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// String contentType = request.getContentType();
		// 어떤 데이터로 들어오는지 모를때는 위에꺼를 해줘야함
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println("username: "+ username);
		System.out.println("password: "+ password);
		
		String jsonData = "{\"username\" : \"ssar\", \"password\" : \"1234\"}";
		
		// response.setContentType("application/json"); 브라우저가 받는 경우 알려줘야함
		// dataType을 안적으면 ContentType 보고 알아서 json으로 바꿔줌
		PrintWriter out = response.getWriter();
		out.print(jsonData); // 개발자인 내가 받음
		out.flush();
	}

}
