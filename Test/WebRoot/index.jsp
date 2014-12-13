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
    
    <title>在线预约首页</title>
    
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


   <div style="margin:0 auto;width:200px;">
	
</div>  

<ul id="myTab" class="nav nav-tabs">
   <li class="active"><a href="#home" data-toggle="tab">
      主         页</a></li>
   <li><a href="#ios" data-toggle="tab">宣传视频</a></li>
   <li class="dropdown">
      <a href="poster.html" id="myTabDrop1" class="dropdown-toggle" 
         data-toggle="dropdown">
         联系我们</a>
     
   </li>
</ul>
<div id="myTabContent" class="tab-content">
   <div class="tab-pane fade in active" id="home">

   </div>
   <div class="tab-pane fade" id="ios">
   <embed src="http://player.youku.com/player.php/sid/XNzQ4MDgwMTgw/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
      <p>本视频由HOpesala团队倾情奉献</p>
   </div>

  
</div>
<ol class="breadcrumb">
  <li><a href="poster.html">宣传海报</a></li>
  <li><a href="video.html">宣传视频</a></li>
</ol>
<script>
   $(function(){
      $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
      // 获取已激活的标签页的名称
      var activeTab = $(e.target).text(); 
      // 获取前一个激活的标签页的名称
      var previousTab = $(e.relatedTarget).text(); 
      $(".active-tab span").html(activeTab);
      $(".previous-tab span").html(previousTab);
   });
});
</script>
   <div id="myCarousel" class="carousel slide">
   <!-- 轮播（Carousel）指标 -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- 轮播（Carousel）项目 -->
   <div class="carousel-inner">
      <div class="item active">
         <img src="image/xiaoyuanyuyue.png" alt="First slide">
      </div>
      <div class="item">
         <img src="image/red1.png" alt="Second slide">
      </div>
      <div class="item">
         <img src="image/blue1.png" alt="Third slide">
      </div>
   </div>
   <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>
</div> 
   
   
     <hr>
<div style="margin:0 auto;width: 273px; height: 167px">
<form class="well form-search">
<p>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='registert.jsp'" >
      教师注册
   </button>
   <button type="button" class="btn btn-lg" onclick="window.location.href='Logint.jsp'" style="width: 119px; ">
      教师登录
   </button>
</p>


<br>


<p>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='register.jsp'">
      学生注册
   </button>
   <button type="button" class="btn  btn-lg" onclick="window.location.href='Login.jsp'" style="width: 119px; ">
      学生登录
   </button>
</p>

</form>
</div>
<hr>


  </body>
</html>
