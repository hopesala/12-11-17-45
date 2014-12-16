<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>Aboutus</title>
	<style>
a {text-decoration:overline;}
</style>
	

  </head>
  
  <body>
  <jsp:include  page="MyJsp.jsp"/>
  <br>
  <br>
   <h1 style="text-align:center;font-family:arial;color:red;font-size:50px;">Special Thanks to <strong class="text-success">郭洪杰、林羿成、曹城华</strong ></h1>

   <p style="text-align:center"><font size=200px>Github主页 <a href="http://www.github.com/hopesala"><img src="image/git.png" alt="HTML 教程" width="189" height="126"></a>
   
    
    
    
    
    <a href="http://www.github.com/hopesala">http://www.github.com/hopesala</a></font>
</p>
  </body>
</html>

