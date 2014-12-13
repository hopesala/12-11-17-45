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
<!DOCTYPE html>
<html>
<head>
   <title>Bootstrap 实例 - 默认的导航栏</title>
   <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
   
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
   <div class="navbar-header">
      <a class="navbar-brand" href="#">校园预约</a>
   </div>
   <div>
      <ul class="nav navbar-nav">
         <li class="active"><a href="index.jsp">主页</a></li>
         
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               学生端 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="Login.jsp">登录</a></li>
               <li><a href="Mybook.jsp">我的预约</a></li>
               <li><a href="Search.jsp">查询预约</a></li>
               <li class="divider"></li>
               <li><a href="#">分离的链接</a></li>
               <li class="divider"></li>
               <li><a href="#">另一个分离的链接</a></li>
            </ul>
         </li>
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               教师端 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="Logint.jsp">登录</a></li>
               <li><a href="Mybookt.jsp">我的预约</a></li>
               <li><a href="Addbook.jsp">添加预约</a></li>
               <li class="divider"></li>
               <li><a href="#">分离的链接</a></li>
               <li class="divider"></li>
               <li><a href="#">另一个分离的链接</a></li>
            </ul>
         </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               About us
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="poster.jsp">宣传海报</a></li>
               <li><a href="video.jsp">宣传视频</a></li><li><a href="video.jsp">宣传视频</a></li>
               
            </ul>
         </li>
      </ul>
   </div>
</nav>

</body>
</html>			
	