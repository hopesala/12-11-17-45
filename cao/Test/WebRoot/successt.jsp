<%@ page contentType="text/html;charset=utf-8"%>
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
    
    <title>My JSP 'index.jsp' starting page</title>
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
BODY {background-image: URL(image/snow.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>
<hr>
     <%Teacher te=(Teacher)session.getAttribute("teacher");%>

     <div style="margin:0 auto;width:600px;">
  <span class="glyphicon glyphicon-hand-right" style="color: rgb(55, 160, 189); font-size: 50px;"> 欢迎您【<%=te.getName() %>】</span>
   </div>
     <hr>
   <br>
   <div style="margin:0 auto;width:400px;">
   <span class="glyphicon glyphicon-plus" style="color: rgb(55, 160, 189); font-size: 35px;"></span>
    <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='Addbook.jsp'" style="width: 216px; ">
      添加空挡
   </button>
   <br>
   <span class="glyphicon glyphicon-list-alt" style="color: rgb(55, 104, 141); font-size: 35px;"></span>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='Mybookt.jsp'" style="width: 216px; ">
      我的空挡
   </button>
   <br>
   <span class="glyphicon glyphicon-chevron-left" style="color: rgb(55, 104, 141); font-size: 35px;"></span>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='Logint.jsp'" style="width: 216px; ">
      返回
   </button>

   </div>
   
 
  </body>
  </body>
</html>
