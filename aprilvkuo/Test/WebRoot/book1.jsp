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
    
    <title>添加预约信息</title>
    
 <meta http-equiv="pragma" content="no-cache">
 <meta http-equiv="cache-control" content="no-cache">
 <meta http-equiv="expires" content="0">    
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
 <meta http-equiv="description" content="This is my page">
 <!--
 <link rel="stylesheet" type="text/css" href="styles.css">
 -->
 <link href="css/bootstrap.min.css" rel="stylesheet">
<script src="css/bootstrap-theme.min.css"></script>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>


  </head>
  
  <body>
<<<<<<< HEAD
  <jsp:include  page="MyJsp.jsp"/>

=======
>>>>>>> parent of 7c09c06... 界面优化
  <form method="POST" action="Book1">
  <%
  request.setCharacterEncoding("UTF-8");
  String tti=request.getParameter("tti"); 
  session.setAttribute("tti",request.getParameter("tti"));
  String name = new String(request.getParameter("name").getBytes("ISO8859-1"), "GBK");

  out.print(name);

  
  String time=request.getParameter("time");
  String week=request.getParameter("week");
 %>
<<<<<<< HEAD
<div class="container">
   <div style="margin:0 auto;width:600px;">
   <hr>
   <span class="glyphicon glyphicon-calendar" style="color: rgb(55, 160, 189); font-size: 35px;">
        可以设定预约事件
    预约时间：<%=time %>
      教师名字：<%=name %>
预约事件:<input type="text" name="thing" style="width: 285px; "><br>

 <button type="submit" class="btn  btn-success" style="width: 197px; height: 50px " >预约</button>
 <button type="button" class="btn  btn-info" style="width: 203px; height: 50px " onclick="window.location.href='success.jsp'" >返回</button>
    
     

    </span>
    </div>
    </div>
    
=======

  <p>可以设定预约事件<p>
    <p>预约时间：<%=time %><p>
      <p>教师名字：<%=name %><p>
 <p>预约事件:<input type="text" name="thing"><br><p>
 
    <input type="submit" value="预约">
>>>>>>> parent of 7c09c06... 界面优化
    </form>
    
   
  </body>
</html>
