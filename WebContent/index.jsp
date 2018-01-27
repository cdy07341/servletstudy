<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="doQuery">显示所有商品</a><br/>
	<jsp:include page="head.jsp"/>
	<h1>网页主体内容</h1>
	<jsp:include page="foot.jsp"/>
	<hr/>
	<%
		/* Object obj = pageContext.getAttribute("fix");
		if(obj==null){
			obj = new com.oracleoaec.entity.Fix();
		} */
		//从pageContext域中查找名为fix的值,
		//如果没有,则创建一个,并将其重新存入pageContext域中
	%>
	<jsp:useBean id="fix" class="com.oracleoaec.entity.Fix" scope="page">
	
	</jsp:useBean>
	<!-- 设置属性值 调用javaBean的setType-->
	<jsp:setProperty name="fix" property="type"  value="罗玉凤"/>
	<!-- 获取属性值 调用javaBean的getType-->
	<jsp:getProperty name="fix" property="type"/>
	
	<%-- <%=((com.oracleoaec.entity.Fix)pageContext.findAttribute("fix")).getType()%> --%>
</body>
</html>














