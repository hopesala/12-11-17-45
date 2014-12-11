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
 
<title>用户登陆</title>
  </head>
  
<body>
  <%
  Teacher teacher = new Teacher();
  String username = request.getParameter("username");
  String pwd = request.getParameter("pwd");
  teacher.setPassword(pwd);
  teacher.setUsername(username);
  teacher.check();
  if(teacher.isLogin())
   {
    System.out.println("success");
    session.setAttribute("teacher", teacher);
   %>
   <jsp:forward page="successt.jsp" />
   <% 
   }
  %>
   <jsp:forward page="logintfa.jsp" />
  </body>
</html>  
