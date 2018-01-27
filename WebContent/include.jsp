<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oracleoaec.bean.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 	<jsp:include page="head.jsp">
		<jsp:param value="chendaoyan" name="name" />
	</jsp:include> --%>

	<jsp:useBean id="person" class="com.oracleoaec.bean.Person"></jsp:useBean>
	<%
		int a = 100;
	out.print(a);
		person.setName("chendaoyan222");
		person.setAge(30);
		person.setSex("man");
		/* request.setAttribute("name", "chendaoyan"); */
		Person p1 = new Person();
        p1.setName("马云");
        
        Person p2 = new Person();
        p2.setName("马化腾");
        
        List<Person> list = new ArrayList<Person>();
        list.add(p1);
        list.add(p2);
        
        request.setAttribute("list",list);

	%>
	<%-- ${name } --%>
	<c:forEach var="person" items="${list }">
		<%-- ${person.name } --%>
	
	</c:forEach>
</body>
</html>