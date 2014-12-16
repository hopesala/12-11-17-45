<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
    <jsp:include  page="MyJsp.jsp"/>
    
  <div style="margin:0 auto;width:300px;">
    <form action="registerpage.jsp"  onsubmit="return check()" name="form1" style="width: 600px; ">
    <br>
          <span class="glyphicon glyphicon-user" style="color: rgb(55, 160, 189); font-size: 35px;">学生注册</span>
          <br><br>
         <span class="glyphicon glyphicon-log-in" style="color: rgb(100, 100, 100); font-size: 25px;">用户名:<input type="text" name="username" style="width: 288px; "><font size=3 color=red>不能为中文字符</font></span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(100, 100, 100); font-size: 25px;">密  码:<input type="password" name="pwd" style="width: 288px; "><font size=3 color=red>密码长度至少为6</font></span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(100, 100, 100); font-size: 25px;">确认密码:<input type="password" name="pwd1" style="width: 262px; "></span><br><br>
         <span class="glyphicon glyphicon-user" style="color: rgb(100, 100, 100); font-size: 25px;">真实姓名:<input type="text" name="name" style="width: 262px; "></span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(100, 100, 100); font-size: 25px;">手机:<input type="text" name="phone" style="width: 312px; "><font size=3 color=red>可以不留</font></span><br><br>
         <span class="glyphicon glyphicon-lock" style="color: rgb(100, 100, 100); font-size: 25px;">邮箱:<input type="text" name="email" style="width: 312px; "><font size=3 color=red>可以不留</font></span><br><br>
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
