<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
<title>学生登录</title>
  </head>
  
<body>
  <jsp:include  page="MyJsp.jsp"/>
    <STYLE TYPE="text/css">
<!-- 
BODY {background-image: URL(image/book.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>
  <%
    Teacher te=(Teacher)request.getSession().getAttribute("teacher");
    Student st=(Student)request.getSession().getAttribute("account");
     if(te!=null)
	 {
	 %>

<div id="myAlert" class="alert alert-warning">
   <a href="#" class="close" data-dismiss="alert">&times;</a>
   <strong>警告！</strong>教师端已经登陆。
</div>
<% 
	 }
	 else if(st!=null)
	 {
	 	 %>

<div id="myAlert" class="alert alert-warning">
   <a href="#" class="close" data-dismiss="alert">&times;</a>
   <strong>警告！</strong>学生端已经登陆。
</div>
<%
}
else
{

 %>
 

<hr>
<div style="margin:0 auto;width:200px;">
<span class="glyphicon glyphicon-user" style="color: rgb(300, 200, 200); font-size: 35px;">学生登录</span>
</div>   
<hr>


    <form action="login1" name="form1" method="post" onsubmit="return check()">
    <div style="margin:0 auto;width:300px;">
    <span class="glyphicon glyphicon-log-in" style="color: rgb(55, 200, 200); font-size: 22px;">用户名</span>
             <input type="text" name="username"><br>
    <span class="glyphicon glyphicon-lock" style="color: rgb(55, 160, 189); font-size: 22px;">密       码</span>
             <input type="password" name="pwd"><br>
             </div>
           


<div style="margin:0 auto;width:300px;">
	
    <br>
<button type="submit"   class="btn btn-success" style="width: 133px; ">登录</button>
<button type="button" class="btn btn-info" onclick="window.history.go(-1)" style="width: 133px; ">返回</button>

</div>

<br>
    
  <%} %>  
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
