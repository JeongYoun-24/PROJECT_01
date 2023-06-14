package com.ex02.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ex02.dto.LoginDTO;
import com.ex02.service.LoginService;


@WebServlet("/main/*")
public class Controller extends HttpServlet{
	LoginService serviceCall = LoginService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandler(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandler(req, resp);
	}
	protected void doHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getPathInfo();
		String page = "";
		if(path.equals("/loginpage.do")) {
			page = "/Page/LoginPage.jsp";
			
		}else if(path.equals("/logintry.do")) {
			String user_id = req.getParameter("user_id");
			String user_pw = req.getParameter("user_pw");
			LoginDTO dto = LoginDTO.builder()
					.user_id(user_id)
					.user_pw(user_pw)
					.build();
			
			serviceCall = LoginService.INSTANCE;
			int r = serviceCall.LoginCheck(dto);
			if(r == 1) {
				HttpSession session = req.getSession();
				session.setAttribute("loginCheck", "true");
				req.setAttribute("user_id", dto.getUser_id());
				page = "/Page/MainPage.jsp";
			}else {
				
				req.setAttribute("error", "아이디 혹은 비밀번호가 맞지 않습니다.");
				page = "/Page/LoginPage.jsp";
				
				
			}
		}else if(path.equals("/golist.do")) {
			page = "/Page/List.jsp";
		}else if(path.equals("/searchid.do")) {
			String user_name = req.getParameter("user_name");
			String user_age = req.getParameter("user_age");
			
			LoginDTO dto = LoginDTO.builder()
					.user_name(user_name)
					.user_age(user_age)
					.build();
			String user_id = serviceCall.SearchId(dto);
			req.setAttribute("find_id", user_id);
			page = "/Page/SearchID.jsp";
		}else if(path.equals("/searchpw.do")) {
			String user_id = req.getParameter("user_id");
			String user_name = req.getParameter("user_name");
			String user_age = req.getParameter("user_age");
			
			LoginDTO dto = LoginDTO.builder()
					.user_id(user_id)
					.user_name(user_name)
					.user_age(user_age)
					.build();
			String user_pw = serviceCall.Searchpw(dto);
			
			req.setAttribute("find_pw", user_pw);
			page = "/Page/SearchPW.jsp";
			
		}else if(path.equals("/logout.do")) {
			HttpSession session = req.getSession();
			session.removeAttribute("loginCheck");
			session.invalidate();
			
			page = "/Page/MainPage.jsp";
		}
		req.getRequestDispatcher(page).forward(req, resp);
	}
}
