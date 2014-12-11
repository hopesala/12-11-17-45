<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">

<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap-theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加预约</title>
    
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
    <STYLE TYPE="text/css">
<!-- 
BODY {background-image: URL(image/spring.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>
<hr><br>
<div style="margin:0 auto;width: 580px;">
      <form action="MybooktAdd.jsp">
       <span class="glyphicon glyphicon-calendar" style="color: rgb(86, 80, 100); font-size: 25px;">  日        期: <input type="text" name="time"><br>
       <div style="margin:0 auto;width: 400px;">《格式如：2012/01/01》</div>
   <br> <span class="glyphicon glyphicon-user" style="color: rgb(115, 91, 118); font-size: 25px;"></span> 人        数: <input type="text" name="num"><br><br>
         <p>   <span class="glyphicon glyphicon-play" style="color: rgb(115, 91, 118); font-size: 25px;"></span> 开始时间:
          <select name="hour1">
 <%
 for (int i = 7; i <22; i++) {      
   if(i>=7 && i<10) 
   {
   %> 
    <option value="<%='0'+String.valueOf(i) %>" ><%='0'+String.valueOf(i)%></option>
    <% 
   }else{
   %>
   <option value="<%=String.valueOf(i) %>" ><%=String.valueOf(i)%></option>
   <%}
   } %>
 </select>
 :
  <select name="min1">
 <%
 for (int i = 0; i <60; i+=10) {  
  if(i==0) {  
   %> 
   <option value="<%="00" %>" ><%="00"%></option>
   <%}else{ %>
    <option value="<%=String.valueOf(i) %>" ><%=i%></option>
    <% 
   }
   }%>
 </select>
 <p>
 <p><span class="glyphicon glyphicon-pause" style="color: rgb(115, 91, 118); font-size: 25px;"></span> 结束时间:
<select name="hour2">
 <%
 for (int i = 7; i <22; i++) {    
   if(i>=7 && i<10) 
   {
   %> 
    <option value="<%='0'+String.valueOf(i) %>" ><%='0'+String.valueOf(i)%></option>
    <% 
   }else{
   %>
   <option value="<%=String.valueOf(i) %>" ><%=String.valueOf(i)%></option>
   <%}
   } %>
 </select>
 :
  <select name="min2">
 <%
 for (int i = 0; i <60; i+=10) {    
   if(i==0) {  
   %> 
   <option value="<%="00" %>" ><%="00"%></option>
   <%}else{ %>
    <option value="<%=String.valueOf(i) %>" ><%=i%></option>
    <% 
   }
   }%>
 </select>
 <p>
           事件（选填）:<input type="text" name="thing"><br>
<hr>
    <button type="submit" class="btn btn-primary btn-lg"  style="width: 450px; ">
      提交
   </button>
    </form>
    </div>
 </span>

  </body>
</html>
