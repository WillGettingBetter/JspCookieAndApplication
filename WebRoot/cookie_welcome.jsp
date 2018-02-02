<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Cookie Test Welcome~~~~~</h1>
	<h1>
		<%
			if (request.getCookies() != null) {
				Cookie[] cookies = request.getCookies();
				if (cookies.length > 0) {
					for (int i = 0; i < cookies.length; i++) {
						//到Cookie中找到了用户信息
						if (cookies[i].getName().equals("user")) {
							out.println(cookies[i].getValue());
						}
					}
				}
			}
		%>
	</h1>
</body>
</html>