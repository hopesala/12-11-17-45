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
 
<title>学生登录</title>
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
<hr>
<div style="margin:0 auto;width:200px;">
<span class="glyphicon glyphicon-user" style="color: rgb(55, 160, 189); font-size: 35px;">学生登录</span>
</div>   
<hr>

<div style="margin:0 auto;width:300px;">
    <form action="login1" name="form1" method="post" onsubmit="return check()">
    <span class="glyphicon glyphicon-log-in" style="color: rgb(255, 140, 60); font-size: 22px;">用户名</span>
             <input type="text" name="username"><br>
    <span class="glyphicon glyphicon-lock" style="color: rgb(55, 160, 189); font-size: 22px;">密       码</span>
             <input type="password" name="pwd"><br>


<div style="margin:0 auto;width:300px;">
	
    <!-- 表示一个成功的或积极的动作 -->
    <br>
<button type="submit"   class="btn btn-success" style="width: 133px; ">登录</button>

<!-- 信息警告消息的上下文按钮 -->
<button type="button" class="btn btn-info" onclick="window.location.href='index.jsp'" style="width: 133px; ">返回</button>

</div>

<br>
    
    
   </form>
    <script LANGUAGE="javascript">
function check(){ 
var name = document.form1.username; 
var password= document.form1.pwd; 
if(name.value.length==0){ 
alert("请输入用户名"); 
name.focus(); 
return false; 
}
else if(password.value.length==0) {
alert("密码不能为空"); 
password.focus(); 
return false;
}
}
 //--></script>   
 
  </body>
</html>  
