package com.ex02.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/main/*")
public class LoginFilter extends HttpFilter implements Filter {
       
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		
		String path = req.getPathInfo();
		
		 HttpSession session = req.getSession();
		 
		 if(session.getAttribute("loginCheck") != null) {
			 chain.doFilter(request, response);
		 }
		 
		 if(path.equals("/logintry.do")) {
			 chain.doFilter(request, response);
		 }
		 
		 if(path.equals("/searchid.do")) {
			 chain.doFilter(request, response);
		 }
		 
		 if(path.equals("/searchpw.do")) {
			 chain.doFilter(request, response);
		 }
		 
		 resp.sendRedirect("/web02/Page/LoginPage.jsp");
		
	}

}
