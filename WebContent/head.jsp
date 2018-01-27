<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1 style="color:red;">网页头部</h1>
<%
String title = request.getParameter("name");
out.write(title);
%>