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
  <link href="css/bootstrap.min.css" rel="stylesheet">

<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="css/bootstrap-theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="js/bootstrap.min.js"></script>
<!--

//-->

  <body>
    <jsp:include  page="MyJsp.jsp"/>

  
<STYLE TYPE="text/css">
<!-- 
BODY {background-image: URL(image/spring.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>
<hr><br>
<%  Teacher te=(Teacher)request.getSession().getAttribute("teacher");
  if(te==null)
	 {
	 %>
	  <p> 教师端未登录<p>
	 <input type=button value=后退 onclick="window.history.go(-1)">
	 <%
	 }
	 else
	 {
	 %>
<div style="margin:0 auto;width:600px;">
 <form action="MybooktAdd.jsp">
 <span class="glyphicon glyphicon-calendar" style="color: rgb(255, 140, 60); font-size: 35px;">日  期:<input type="text" id="d245" name="time" onfocus="WdatePicker({skin:'whyGreen',minDate:'%y-%M-{%d}'})" class="Wdate" style="width: 306px; height: 52px"/>
 </span><br>
 

<br><span class="glyphicon glyphicon-user" style="color: rgb(255, 140, 60); font-size: 35px;">人  数:<input type="text" name="num" style="width: 183px; "></span><br>
   <br> <span class="glyphicon glyphicon-play" style="color: rgb(255, 140, 60); font-size: 35px;">开始时间:<input id="d5221" name="stime" class="Wdate" type="text" onFocus="var d5222=$dp.$('d5222');WdatePicker({onpicked:function(){d5222.focus();},dateFmt:'H:mm',maxDate:'#F{$dp.$D(\'d5222\')}'})" style="width: 147px; height: 46px"/></span>
   <br> <span class="glyphicon glyphicon-stop" style="color: rgb(255, 140, 60); font-size: 35px;">结束时间:<input id="d5222" name="etime" class="Wdate" type="text" onFocus="WdatePicker({dateFmt:'H:mm',minDate:'#F{$dp.$D(\'d5221\')}'})" style="width: 147px; height: 46px"/></span>
      <br>    <br> <span class="glyphicon glyphicon-info-sign" style="color: rgb(255, 140, 60); font-size: 35px;">事件[选填]:<input type="text" name="thing" style="width: 253px; "></span><br>

    
    </span>
    <div style="margin:0 auto;width:200px;"><br>
   <button type="submit" class="btn btn-primary btn-lg" onclick="window.location.href='Mybookt.jsp'" style="width: 216px; ">
      提交
   </button>
   </div>
    </form>
    </div>
    <div class="clearfix"  style="background: #f8D8D8;border: 0px solid #000;padding: 20px;"></div>
    <div class="clearfix"  style="background: #e8D8D8;border: 0px solid #000;padding: 20px;"></div>
    <div class="clearfix"  style="background: #d8D8D8;border: 0px solid #000;padding: 20px;"></div>
    <div class="clearfix"  style="background: #c8D8D8;border: 0px solid #000;padding: 20px;"></div>
    <div class="clearfix"  style="background: #b8D8D8;border: 0px solid #000;padding: 20px;"></div>
    <div class="clearfix"  style="background: #a8D8D8;border: 0px solid #000;padding: 20px;"></div>
    <div class="clearfix"  style="background: #98D8D8;border: 0px solid #000;padding: 20px;"></div>
    <div class="clearfix"  style="background: #88D8D8;border: 0px solid #000;padding: 20px;"></div>
    <div class="clearfix"  style="background: #78D8D8;border: 0px solid #000;padding: 20px;"></div>
    <div class="clearfix"  style="background: #68D8D8;border: 0px solid #000;padding: 20px;"></div>
    <%} %>
  </body>
</html>
