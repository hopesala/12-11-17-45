<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap.min.css" 

rel="stylesheet">

<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap-

theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生注册</title>
    
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
BODY {background-image: URL(image/book.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>
  <div style="margin:0 auto;width:300px;">
    <form action="registerpage.jsp" style="width: 669px; ">
    <br>
         <span class="glyphicon glyphicon-log-in" style="color: rgb(55, 160, 189); font-size: 30px;">用户名:<input type="text" name="username"></span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(55, 160, 189); font-size: 30px;">密  码:<input type="password" name="pwd"></span><br><br>
         <span class="glyphicon glyphicon-user" style="color: rgb(55, 160, 189); font-size: 30px;">姓 名:<input type="text" name="name"></span><br>
            <br>
             <input type="submit" class="btn btn-success" value="注册" style="width: 458px; ">

    </form>
    </div>
  </body>
</html>
