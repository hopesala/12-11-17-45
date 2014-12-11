<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
<script>
function show(){
var date = new Date(); //日期对象
var now = "";
now = "欢迎您访问在线预约首页！现在是" + date.getFullYear()+"年"; //读英文就行了
now = now + (date.getMonth()+1)+"月"; //取月的时候取的是当前月-1如果想取当前月+1就可以了
now = now + date.getDate()+"日";
now = now + date.getHours()+"时";
now = now + date.getMinutes()+"分";
now = now + date.getSeconds()+"秒";
document.getElementById("nowDiv").innerHTML = "<h3><font color=yellow>" + now + "</font></h3>";
setTimeout("show()",1000); //设置过1000毫秒就是1秒，调用show方法
}
</script>
<body onload="show()"> <!-- 网页加载时调用一次 以后就自动调用了-->
<div id="nowDiv"></div>
<span id="time"></span>
<script language="javascript">showtime();</script>

   <div style="margin:0 auto;width:200px;">
	
</div>  

<ul id="myTab" class="nav nav-tabs">
   <li class="active"><a href="#home" data-toggle="tab">
      主         页</a></li>
   <li><a href="#ios" data-toggle="tab">宣传视频</a></li>
  
</ul>
<div id="myTabContent" class="tab-content">
   <div class="tab-pane fade in active" id="home">
      <p>W3Cschoool菜鸟教程是一个提供最新的web技术站点，本站免费提供了建站相关的技术文档，帮助广大web技术爱好者快速入门并建立自己的网站。菜鸟先飞早入行——学的不仅是技术，更是梦想。</p>
   </div>
   <div class="tab-pane fade" id="ios">
   		<embed src="http://player.youku.com/player.php/sid/XNzQ4MDgwMTgw/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
      <p>本视频由HOpesala团队倾情奉献</p>
   </div>
</div>

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
         <img src="image/green1.png" alt="First slide">
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
   
   
    <br>
     
<div style="margin:0 auto;width:500px;">
<p>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='registert.jsp'" style="width: 172px; ">
      教师注册
   </button>
   <button type="button" class="btn btn-success" onclick="window.location.href='Logint.jsp'" style="width: 172px; height: 46px">
      教师登录
   </button>
   
</p>


<br>


<p>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='register.jsp'" style="width: 172px; ">
      学生注册
   </button>
   <button type="button" class="btn btn-success" onclick="window.location.href='Login.jsp'" style="width: 172px; height: 46px">
      学生登录
   </button>
   
</p>

</div>
<hr>

<div id="blink"><font size=4>永远相信美好的事情即将发生？永远相信美好的事情就在眼前？</font></div> 
<script language="javascript"> 
function changeColor(){ 
var color="#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray"; 
color=color.split("|"); 
document.getElementById("blink").style.color=color[parseInt(Math.random() * color.length)]; 
} 
setInterval("changeColor()",200); 

</script>
<br>
<p align=center><marquee Hspace=4 scrollamount=4 width=1300 height=36 bgcolor=black scrolldelay=3><font color=#b8860b size=5pt>哈尔滨工业大学   计算机科学与技术学院   规格严格 功夫到家   特别感谢：郭洪杰、林弈成、曹城华  网站： www.gitub.com/hopesala</marquee></p>
<img alt="140x140" src="image/snowgirl.jpg" class="img-circle"  style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/snowtree.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/spring.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/sky.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/HIT.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/snowgirl.jpg" class="img-circle"  style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/snowtree.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/spring.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/sky.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/HIT.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/snowgirl.jpg" class="img-circle"  style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/snowtree.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/spring.jpg" class="img-circle" style="height: 66px; width: 92px; "/>
<img alt="140x140" src="image/sky.jpg" class="img-circle" style="height: 66px; width: 92px; "/>

  </body>	
</html>
