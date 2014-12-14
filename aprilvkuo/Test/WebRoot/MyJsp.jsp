<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
   <title>Bootstrap 实例 - 默认的导航栏</title>
   <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
     <STYLE TYPE="text/css">
<!-- 
BODY {background-image: URL(image/book.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>

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
                   <li class="divider"></li>
               <li><a href="Mybook.jsp">我的预约</a></li>
                   <li class="divider"></li>
               <li><a href="Search.jsp">查询预约</a></li>
            
           
              
            </ul>
         </li>
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               教师端 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="Logint.jsp">登录</a></li>
               <li class="divider"></li>
               <li><a href="Mybookt.jsp">我的预约</a></li>
               <li class="divider"></li>
               <li><a href="Addbook.jsp">添加预约</a></li>
            </ul>
         </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               About us
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="poster.jsp">宣传海报</a></li>
               <li class="divider"></li>
               <li><a href="video.jsp">宣传视频</a></li>
               <li class="divider"></li>
               <li><a href="aboutus.jsp">关于我们</a></li>
               
            </ul>
         </li>
         <%
         Teacher te=(Teacher)request.getSession().getAttribute("teacher");
         Student st=(Student)request.getSession().getAttribute("account");
         String status=null;
         if(te==null && st== null)
	     {
	      status="未登录";
	       %>
         <li><a><%=status %></a></li>
         <%
	      }
	      else if(te!=null)
	      {
	      status="教师端:"+te.getName();
	       %>
         <li><a href="successt.jsp"><%=status %></a></li>
         <%
	      }
	      else if(st!=null)
	      {
	      status="学生端:"+st.getName();
	       %>
         <li><a href="success.jsp"><%=status %></a></li>
         <%
	      }
          %>
           <li><a href="logout.jsp">注销</a></li>
         
      </ul>
   </div>
</nav>
  

</body>
</html>			
	