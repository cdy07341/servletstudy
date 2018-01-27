package com.chendy.servlet;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/session")
public class SessionServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		Cookie cookie = new Cookie("name", "chendaoyan");
//		resp.addCookie(cookie);
		
		Cookie[] cookies = req.getCookies();
		if (null != cookies) {
			for (Cookie cookie : cookies) {
				//System.out.println(cookie.getName() + "====" + cookie.getValue());
			}
		}
		
		HttpSession session = req.getSession();
//		System.out.println(session.getId());
		
		session.setAttribute("sex", "boy");
		System.out.println(session.getAttribute("sex"));
//		session.invalidate();
//		System.out.println(session.getAttribute("sex"));
		
	}

}
