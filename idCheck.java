package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DuplicateDAO;


@WebServlet("/idCheck")
public class idCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String chk_userid = request.getParameter("chk_userid");
		
		DuplicateDAO dup=new DuplicateDAO();
		int id_result=dup.confirmID(chk_userid);
		if (id_result==1) {
			request.setAttribute("comment", " 는 이미 사용중인 ID입니다.");
			request.setAttribute("chk_userid", chk_userid);
			RequestDispatcher dispatcher=request.getRequestDispatcher("ImPossibleID.jsp");
			dispatcher.forward(request,response);
		}else if(id_result==-1) {
			request.setAttribute("comment", " 는 사용 가능한 ID입니다.");
			request.setAttribute("chk_userid", chk_userid);
			RequestDispatcher dispatcher=request.getRequestDispatcher("PossibleID.jsp");
			dispatcher.forward(request,response);
		}	
	}
}
