package com.chendy.servlet;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

@WebServlet(name="Demo01", urlPatterns="/demo01", initParams={
		@WebInitParam(name="name", value="chendaoyan"),
		@WebInitParam(name="sex", value="boy")
})
public class ServletDemo01 implements Servlet {
	
	private ServletConfig config;

	@Override
	public void destroy() {
		
	}

	@Override
	public ServletConfig getServletConfig() {
		return this.config;
	}

	@Override
	public String getServletInfo() {
		return null;
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		this.config = arg0;
		System.out.println(arg0.getInitParameter("name"));
		System.out.println(arg0.getInitParameter("sex"));
	}

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		System.out.println("service :" + config.getInitParameter("name"));
		System.out.println(1111);
	}

}
