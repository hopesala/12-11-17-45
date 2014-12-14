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
    
    <title>My JSP 'book1.jsp' starting page</title>
    
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
      <jsp:include  page="MyJsp.jsp"/>
<STYLE TYPE="text/css">
<!-- 
BODY {background-image: URL(image/spring.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>
  <form method="POST" action="Book1">
  <%
  request.setCharacterEncoding("UTF-8");
  String tti=request.getParameter("tti"); 
  session.setAttribute("tti",request.getParameter("tti"));
  String name=request.getParameter("name"); 
  
  byte b[]=name.getBytes("ISO-8859-1");
  name=new String(b,"UTF-8");
  
  String time=request.getParameter("time");
  String week=request.getParameter("week");
 %>
<div class="container">
   
   <p class="text-center">可以设定预约事件</p><br><br>
   
    <p class="text-center">预约时间：<%=time %></p><br><br>
     <p class="text-center"> 教师名字：<%=name %></p><br><br>
      
      <br><span class="glyphicon glyphicon-user" style="color: rgb(255, 140, 60); font-size: 35px;">人预约事件:<input type="text" name="thing" style="width: 183px; "></span><br>

 </div>
    <input type="submit" value="预约">
    </form>
    <input type="button" value="返回" onclick="window.location.href='success.jsp'"  style="background:White;width:400px;height:40px;font-size:20px;">
  </body>
</html>
