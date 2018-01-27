package com.chendy.servlet;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

@WebServlet(name="Demo02", urlPatterns="/demo02", initParams={
		@WebInitParam(name="name", value="chendaoyan"),
		@WebInitParam(name="sex", value="boy")
})
public class ServletDemo02 extends GenericServlet {
	public void sayHi(String str){
		System.out.println(Thread.currentThread().getName()+":"+str);
	}
	@Override
	public void init() throws ServletException {
		sayHi("init");
		super.init();
	}
	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		sayHi("service");
		System.out.println(getServletConfig().getInitParameter("name"));
	}
	@Override
	public void destroy() {
		sayHi("destroy");
	}
}
