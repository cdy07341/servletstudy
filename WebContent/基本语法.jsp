<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- JSP表达式 out.print( "aaaa" );-->
	<%= "aaaa" %>
	<br/>
	<%= new Date().toString() %>
	<!-- JSP脚本片断(小教本) -->
	<% 
		//多行JAVA代码
		//注:单个脚本片段的java代码可以是不完整的,但多个脚本片段拼接后的java代码语法必须完整
		int a = 111;
		String b = "abc";
	%>
	<!-- JSP声明 -->
	<%! int c = 123; %>
	<br>
	<span style="font-size:30px;"><%=c %></span>
	<%! {
		int d = 1;
	} %>
	<%!
	public void show() {
			int a = 1;
	}
	%>
	
	<!-- 课堂要求:
	声明一个属性变量i=1;
	用这个属性变量在jsp页面中循环输出h1~h6的罗玉凤 -->
	<%! int i = 1; %>
	<%
		for(i = 1;i<7;i++){
	%>
		<h<%=i%>>罗玉凤<%=i %></h<%=i%>>
	<%
		}
	%>
	
	<!-- HTML注释: 可以保留到浏览器-->
	<%-- JSP注释:只出现在jsp源文件中 --%>
	<%
		//java的注释出现在翻译后的java文件中,但不显示在浏览器
		//单行注释
		/*多行注释*/
	%>
</body>
</html>











