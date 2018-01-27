<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="head.jspf" %>
	<h1>网页主体内容</h1>
	<%@include file="foot.jspf" %>
	<jsp:include page="index.jsp" >
		<jsp:param value="chendaoyan" name="name"/>
	</jsp:include>
</body>
</html>