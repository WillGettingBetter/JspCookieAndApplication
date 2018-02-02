<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//设置编码方式
	request.setCharacterEncoding("UTF-8");
	String username=request.getParameter("username");
	String userpsw=request.getParameter("userpsw");
	String[] hobbies=request.getParameterValues("hobbies");
	//记住密码
	String remember=request.getParameter("remember")==null?"":request.getParameter("remember");
	if(username.equals("admin")&&userpsw.equals("123")){
		if(remember.length()>0){//说明要记住密码
			//实例化一个cookie对象
			Cookie cookie=new Cookie("user",username);
			//将cookie存入response作用域中
			response.addCookie(cookie);
			//重定向
			response.sendRedirect("cookie_welcome.jsp");
		}else{
			response.sendRedirect("cookie_welcome.jsp");
		}
	}
	
%>