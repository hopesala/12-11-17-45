<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'registerpage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <%
  Teacher teacher = new Teacher();
  String username = request.getParameter("username");
  String pwd = request.getParameter("pwd");
  String name = request.getParameter("name");
    String email = request.getParameter("email");
  String phone = request.getParameter("phone");
  byte b[]=name.getBytes("ISO-8859-1");
  
  name=new String(b,"UTF-8");
  teacher.setName(name);
  teacher.setPassword(pwd);
  teacher.setUsername(username);
  teacher.setEmail(email);
  teacher.setPhone(username);
  teacher.setupcheck();
  if(teacher.isIsexi()==false)
   {
    System.out.println("success");
   %>
   <jsp:forward page="successt.jsp" />
   <% 
   }
  %>

   <jsp:forward page="registertpage.jsp" />
  </body>
</html>
