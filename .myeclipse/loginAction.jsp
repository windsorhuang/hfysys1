<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="ch2.service.UserService" %>
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户登录</title> 
  </head>  
  <body >
  <center>
  <%
  	String uid=request.getParameter("uid");
  	String password=request.getParameter("password");
  	UserService userService=new UserService();
  	if(userService.login(uid,password)){
	  	session.setAttribute("uid",uid);
  %>
  		<font color="blue">你已登录成功！</font>
  <%}else{ %>
  		<font color="red">用户名或密码错误!</font>
  <%}%>
  <a href="#" onclick="history.back();">返回</a>
  </center>
  </body>
</html>
