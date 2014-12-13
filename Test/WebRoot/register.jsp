<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap.min.css" 

rel="stylesheet">

<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap-

theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生注册</title>
    
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
    <form action="registerpage.jsp"  onsubmit="return check()" name="form1" style="width: 1000px; ">
    <br>
         <span class="glyphicon glyphicon-log-in" style="color: rgb(55, 160, 189); font-size: 25px;">用户名:<input type="text" name="username" style="width: 158px; "><font size=3 color=red>请输入英文字符</font></span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(55, 160, 189); font-size: 25px;">密  码:<input type="password" name="pwd" style="width: 158px; "><font size=3 color=red>密码长度至少为4</font></span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(55, 160, 189); font-size: 25px;">确认密码:<input type="password" name="pwd1" style="width: 132px; "></span><br><br>
         <span class="glyphicon glyphicon-user" style="color: rgb(55, 160, 189); font-size: 25px;">真实姓名:<input type="text" name="name" style="width: 132px; "></span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(55, 160, 189); font-size: 25px;">手机:<input type="text" name="phone" style="width: 182px; "><br></span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(55, 160, 189); font-size: 25px;">邮箱:<input type="text" name="email" style="width: 182px; "></span><br><br>
            <br>
             <input type="submit" class="btn btn-success" value="注册" style="width: 458px; ">

    </form>
    </div>
       <script LANGUAGE="javascript">
function check(){ 
var name = document.form1.username; 
var password= document.form1.pwd; 
var password1= document.form1.pwd1; 
var truename= document.form1.name;


if(name.value.length==0){ 
alert("请输入用户名"); 
name.focus(); 
return false; 
}
else if(password.value.length==0) {
alert("密码不能为空"); 
password.select(); 
return false;
}
else if(password.value.length==0) {
alert("密码不能为空"); 
password.select(); 
return false;
}
else if(password.value.length<6||password.value.length>16) {
alert("密码长度必须在6到16个字符之间"); 
password.select(); 
return false;
}
else if(password.value!=password1.value) {
alert("确认密码与密码输入不一致"); 
password1.select(); 
return false;
}
else if(truename.value.length==0) {
alert("真实姓名不能为空"); 
truename.select(); 
return false;
}
}
 //--></script>  
  </body>
</html>
