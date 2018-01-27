<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		Map map = new HashMap();
		map.put("one", "杨贵妃");
		map.put("two-two", "貂蝉");
		map.put("three", "西施");
		map.put("four", "王昭君");
		session.setAttribute("mapppp", map);
	%>
	${mapppp.one }
	<c:forEach var="entry" items="${mapppp }">  
	    ${ entry.key}  :${entry.value}<br>  
	</c:forEach>  
	
	
	${headerValues["Accept-Encoding"][0] }
</body>
</html>