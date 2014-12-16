<%@ page contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的主页</title>
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

    <%  Student st=(Student)request.getSession().getAttribute("account");
  if(st==null)
	 {
	 %>
	 <div id="myAlert" class="alert alert-warning">
   <a href="#" class="close" data-dismiss="alert">&times;</a>
   <strong>警告！</strong>学生端未登录
   </div>
	 
	 <input type=button value=后退 onclick="window.history.go(-1)">
	 <%
	 }
	 else
	 {
	 %>
  <hr>
  <div style="margin:0 auto;width:800px;">
  <span class="glyphicon glyphicon-hand-right" style="color: rgb(200, 200, 200); font-size: 50px;"> 欢迎，<%=st.getName() %></span>
   </div>
   <hr>
   
   <div style="margin:0 auto;width:400px;">
   <span class="glyphicon glyphicon-plus" style="color: rgb(200, 160, 189); font-size: 40px;"></span>
    <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='Search.jsp'" style="width: 230px; ">
      我要预约
   </button>
   <br>
   <span class="glyphicon glyphicon-list-alt" style="color: rgb(300, 104, 141); font-size: 40px;"></span>
   <button type="button" class="btn btn-success btn-lg" onclick="window.location.href='Mybook.jsp'" style="width: 230px; ">
      我的预约
   </button>
   <br>
   <span class="glyphicon glyphicon-chevron-left" style="color: rgb(400, 200, 141); font-size: 40px;"></span>
   <button type="button" class="btn btn-warning btn-lg" onclick="window.location.href=-1" style="width: 230px; ">
      返回
   </button>
   
   </div>
   <br>
<%} %>
  </body>
  </body>
</html>
