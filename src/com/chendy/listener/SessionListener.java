package com.chendy.listener;

import java.util.concurrent.atomic.AtomicInteger;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionListener implements HttpSessionListener, ServletContextListener, HttpSessionAttributeListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext servletContext = sce.getServletContext();
		servletContext.setAttribute("userCount", new AtomicInteger());
		
	}

	@Override
	public void sessionCreated(HttpSessionEvent hse) {
		HttpSession httpSession = hse.getSession();
		ServletContext servletContext = httpSession.getServletContext();
		AtomicInteger userCount = (AtomicInteger) servletContext.getAttribute("userCount");
		int userCountTotal = userCount.incrementAndGet();
		System.out.println("incre automic to " + userCountTotal);
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent hse) {
		HttpSession httpSession = hse.getSession();
		ServletContext servletContext = httpSession.getServletContext();
		AtomicInteger userCount = (AtomicInteger) servletContext.getAttribute("userCount");
		Integer userCountTotal = userCount.decrementAndGet();
		System.out.println("decre automic to " + userCountTotal);
		
	}

	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
		System.out.println("session added");
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		System.out.println("session removed");
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		System.out.println("session replaced");
	}

}
