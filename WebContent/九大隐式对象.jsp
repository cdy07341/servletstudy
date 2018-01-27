<%@ page language="java" contentType="text/html; charset=UTF-8" isThreadSafe="false"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//request.getAttribute(arg0)
		//response.getWriter().write("aaa");
		//session.getAttribute("aaa");
		//application.getAttribute("aaa");
		//Writer w = response.getWriter();
		//out.write("aaa");//out = w+缓冲区8KB
		//page = this;当前servlet对象
		//exception.getStackTrace();   //isErrorPage="true"才有
		//config对象：获取web.xml配置数据
		/*  
		  <context-param>
		  	<param-name>haha</param-name>
		  	<param-value>haha</param-value>
		  </context-param>
	  	  config.getInitParameter("haha");
	  */
		pageContext.setAttribute("name", "马蓉");
		request.setAttribute("name", "罗玉凤");
		session.setAttribute("name", "芙蓉");
		//从域中根据name找value,寻找顺序为:pageContext->request->session->servletContext
		//Object obj = pageContext.findAttribute("name");//效率较低
		Object obj = pageContext.getAttribute("name",PageContext.REQUEST_SCOPE);
		out.print(obj);
		/* 1 PageContext.APPLICATION_SCOPE
		2 PageContext.SESSION_SCOPE
		3 PageContext.REQUEST_SCOPE
		4 PageContext.PAGE_SCOPE  */
	%>
</body>
</html>







