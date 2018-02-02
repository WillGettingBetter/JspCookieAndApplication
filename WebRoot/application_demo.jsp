<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 统计访问人数 -->
	<%
		int count = 1;
		if (application.getAttribute("count") != null) {
			count = Integer.parseInt(application.getAttribute("count").toString());
			count+=1;
			application.setAttribute("count", count);
		}else{
			application.setAttribute("count", 1);
		}
	%>
	<h1>目前访问该网站的人数是：<%=count %></h1>
</body>
</html>