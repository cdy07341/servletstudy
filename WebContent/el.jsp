<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <!-- 网络地址访问不了   用本地库：jstl.jar   standard.jar -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
${initParam.username }
	<%-- <%
		request.setAttribute("name", "罗玉凤");
	%>
	<!-- 通过el从域中获取数据 -->
	${name} --%>   <!-- 类似pageContext.findAttribute("name") -->
	
	<!-- //在requert域中存入一个带有数据的fix对象
	//并尝试着通过el表达式,获取fix对象的参数值 -->
	<%-- <%
		Fix fix = new Fix("HH", "陈冠希", "3845692734", "香港", "2008", "电脑坏了");
		request.setAttribute("heihei", fix);
	%>
	<!-- 通过el表达式获取对象的属性 -->
	${heihei.name} --%>
	<%-- 
		el获取list数据
	<%
		List list = new ArrayList();
		for(int i = 0;i<150;i++){
			Fix fix = new Fix("HH", "陈冠希"+i, "3845692734", "香港", "2008", "电脑坏了");
			list.add(fix);
		}
		request.setAttribute("heihei", list);
	%>
	<%for(int i = 0;i<5;i++){ %>
		${heihei[0]}
	<%}%>
	<!-- for(Fix fix:list){} -->
	<!-- 类似加强for循环:var=fix items=list -->
	<!-- 注意:items中必须是要迭代的变量对象 -->
	<c:forEach var="fix" items="${heihei}">
		<!-- 循环体 -->
		${fix.name},${fix.addr}<br/>
	</c:forEach> --%>
	
	<!-- el获取map数据 -->
	<%-- <%
		Map map = new HashMap();
		map.put("one", "杨贵妃");
		map.put("two-two", "貂蝉");
		map.put("three", "西施");
		map.put("four", "王昭君");
		session.setAttribute("mapppp", map);
	%>
	${mapppp["two-two"]}
	${mapppp.two-two}
	<c:forEach var="temp" items="${mapppp}">
		${temp.key}=${temp.value}<br/>
	</c:forEach> --%>
	
	<!-- el执行运算符 -->
	<%-- <%
		Fix fix = new Fix("HH", "陈冠希", "3845692734", "香港", "2008", "电脑坏了");
		request.setAttribute("fix", fix);
	%> --%>
	<!-- 如果域中有fix对象,则打印输出.没有则显示 罗玉凤 -->
	<%-- ${fix!=null?fix:'罗玉凤'}<br/> --%>
	<%-- ${empty fix}
	${fix==null} --%>
	
	<%
		/* request.setAttribute("name", "罗玉凤"); */
		session.setAttribute("name", "芙蓉");	
	%>
	
	<%-- ${sessionScope.name} --%>
	
	<!-- pageScope
	requestScope
	sessionScope
	applicationScope
	
	param
	paramValues
	
	header 
	headerValues
	
	cookie
	
	initParam
	
	pageContext
	-->
	
	<%-- ${paramValues.hobby[1]}
	http://localhost:8888/Day07/el.jsp?hobby=aaa&hobby=bbb --%>
	<%-- ${initParam}
	<%
	request.setAttribute("a", 100);
	%>
	${a }
	<c:if test="${a >= 100 }" var="paramsddd" scope="page">
	dsfdsfdsf
	
	</c:if>
	${paramsddd } --%>
	
	<c:forTokens items="1*2*3*4*5*6*7" 
                delims="*" 
                begin="1" 
                end="3" 
                var="n" 
                varStatus="s">
                 <c:out value="${n}" />的四种属性：<br>
                  &nbsp;&nbsp;&nbsp;&nbsp;所在位置，即索引：<c:out value="${s.index}" /><br>
                  &nbsp;&nbsp;&nbsp;&nbsp;总共已迭代的次数：<c:out value="${s.count}" /><br>
                  &nbsp;&nbsp;&nbsp;&nbsp;是否为第一个位置：<c:out value="${s.first}" /><br>
                  &nbsp;&nbsp;&nbsp;&nbsp;是否为最后一个位置：<c:out value="${s.last}" /><br>
    </c:forTokens>
	
</body>
</html>











