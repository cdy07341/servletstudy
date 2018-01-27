package com.chendy.filter;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;

@WebFilter(filterName="loggingfilter", urlPatterns={"/*"},
			initParams={
					@WebInitParam(name="logFileName", value="log.txt"),
					@WebInitParam(name="prefix", value="session zhujie")
			}
		)
public class LoggingFilter implements Filter {
//	private FilterConfig config;
	private String prefix;
	private PrintWriter logger;

	@Override
	public void destroy() {
		System.out.println("destroy filter");
		if (null != logger) {
			logger.close();
		}
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain fc) throws IOException, ServletException {
		System.out.println("doFilter");
		HttpServletRequest httpServletRequest = (HttpServletRequest) req;
		logger.println(new Date() + " " + prefix + httpServletRequest.getRequestURI());
		logger.flush();
		fc.doFilter(req, resp);
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
//		this.config = config;
		this.prefix = config.getInitParameter("prefix");
		String fileName = config.getInitParameter("logFileName");
		String appPath = config.getServletContext().getRealPath("/");
		System.out.println("LogFileName : " + fileName + "|" + appPath);
		
		try {
			this.logger = new PrintWriter(new File(appPath, fileName));
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException();
		}
	}

}
