package com.smhrd.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;


@WebServlet("/joinService")
public class joinService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 데이터 받기, 한글 포함될 경우 인코딩 방식 지정
		request.setCharacterEncoding("utf-8");
		
		
		String name =request.getParameter("name");
		String pwd =request.getParameter("pwd");
		String email =request.getParameter("email");
		String userid =request.getParameter("userid");
		String phone =request.getParameter("phone");
		int admin =Integer.parseInt(request.getParameter("admin"));
		
		
		//2. 전송된 회원 데이터를 객체에 담기
		MemberVO member=new MemberVO(userid, pwd,name,email,phone,admin);
		DAO dao = new DAO();
		int result = dao.join(member);
		//3. request 객체 속성값에 member 등록하고 데이터를 View로 전달
		if(result>0) {
			//insert 성공
			request.setAttribute("userid", userid);//session을 requset로 바꿈 교수님은
			request.setAttribute("message", "회원가입 성공");
			String url="mainpage.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}else {
			//insert 실패
			response.sendRedirect("main.jsp");
		}
		
	}
}
