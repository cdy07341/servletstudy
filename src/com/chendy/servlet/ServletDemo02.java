package com.chendy.servlet;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/demo02")
public class ServletDemo02 extends GenericServlet {
	public void sayHi(String str){
		System.out.println(Thread.currentThread().getName()+":"+str);
	}
	@Override
	public void init() throws ServletException {
		sayHi("init");
	}
	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		sayHi("service");
	}
	@Override
	public void destroy() {
		sayHi("destroy");
	}
}
