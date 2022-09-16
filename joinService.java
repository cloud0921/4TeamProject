package com.smhrd.controller;

import java.io.IOException;

import java.io.PrintWriter;

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
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		//1. 데이터 가져오기
		String userid = request.getParameter("id_hidden");
		int hidden_id=Integer.parseInt(request.getParameter("hidden_num"));
		
		String pwd = request.getParameter("checked_pwd");
		int hidden_pwd=Integer.parseInt(request.getParameter("pwd_num"));
		
		String name = request.getParameter("name");
		
		String idnum1=request.getParameter("hidden_mem_num1");
		String idnum2=request.getParameter("hidden_mem_num2");
		String idnum=idnum1+"-"+idnum2;
		int disabled=Integer.parseInt(request.getParameter("hidden"));
		
		String phone1 = request.getParameter("phone_num1");
		String phone2 = request.getParameter("phone_num2");
		String phone3 = request.getParameter("phone_num3");
		String phone = phone1+"-"+phone2+"-"+phone3;
		
		String email_name=request.getParameter("mem_name");
		String email_domain= request.getParameter("mem_email_domain");
		String email=email_name+"@"+email_domain;
		
		String admin = request.getParameter("admin");
		PrintWriter out=response.getWriter();
		
		MemberVO vo=new MemberVO(userid,pwd,name,idnum,phone,email,admin);
		DAO dao = new DAO();
		if (disabled==0 || hidden_id==0 || hidden_pwd==0) {
			response.sendRedirect("joinFail.jsp");
		}else {
			int result=dao.join(vo); 
			if(result==1) {
			   response.sendRedirect("joinSuccess.jsp");
			}else {
			   response.sendRedirect("joinFail.jsp");
			}
		}
		
		
	  }
	}

