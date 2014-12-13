<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="css/bootstrap.min.css" rel="stylesheet">


<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="css/bootstrap-theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="js/bootstrap.min.js"></script>
<!--

//-->
</script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fail.jsp' starting page</title>
    
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
    
<div style="margin:0 auto;width:600px;">
    <script type="text/javascript">alert("你输入的账号密码有误，请返回重新输入!")</script>
      <font size=5 color=red>你输入的账号密码有误，请返回重新输入 </font><br>
     <button type="button" class="btn  btn-info" style="width: 424px; height: 50px " onclick="window.location.href='Login.jsp'" >返回登录页面</button>
    </div>
    
  </body>
</html>
