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
     <div style="margin:0 auto;width: 500px; height: 300px">
    <form action="Mybookadd2.jsp"  style="width: 600px; ">
 
  <%
  String tti=request.getParameter("tti"); 
  session.setAttribute("tti",request.getParameter("tti"));
  String name=request.getParameter("name"); 
  byte b[]=name.getBytes("ISO-8859-1");
  name=new String(b,"UTF-8");
  String time=request.getParameter("time");
  String week=request.getParameter("week");
 %>
<div class="well well-lg">
    <span style="color: rgb(0, 0, 0); font-size: 25px;"> 可以设定预约事件</span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(0, 0, 0); font-size: 25px;">预约时间:</span> 
         <span  style="color: rgb(50, 100, 100); font-size: 25px;"><%=time %>  </span><br><br>
         <span class="glyphicon glyphicon-user" style="color: rgb(0, 0, 0); font-size: 25px;">教师名字:</span> 
         <span  style="color: rgb(50, 100, 100); font-size: 25px;"><%=name %>  </span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(0, 0, 0); font-size: 25px;">预约事件和地点:<br><br><input type="text" name="thing" style="width: 300px; "></span><br><br>
           <input type="submit" class="btn btn-success btn-lg" value="预约" >
           <a class="btn btn-default btn-lg" href="success.jsp" role="button" >返回</a>
 

</div>
    </form>
    </div>
   
  </body>
</html>
