<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>Aboutus</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=gb2312">
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>


  </head>
  
  <body> 
    <jsp:include  page="MyJsp.jsp"/>
       <div class="row">
    <div class="col-md-3" style="background-color: #dedef8;box-shadow: 
         inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
    <p><font size=30 >Special Thanks to 郭洪杰、林弈成、曹城华</font></p>
     </div>
     
        
         <h4>第二列 - 分为四个盒子</h4>
         <div class="row">
            <div class="col-md-6" style="background-color: #B18904;
               box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
               <p>Consectetur art party Tonx culpa semiotics. Pinterest 
                  assumenda minim organic quis.
               </p>
            </div>
            <div class="col-md-6" style="background-color: #B18904;
               box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
               <p> sed do eiusmod tempor incididunt ut labore et dolore magna 
                  aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
                  ullamco laboris nisi ut aliquip ex ea commodo consequat.
               </p>
            </div>
         </div>

         <div class="row">
            <div class="col-md-6" style="background-color: #B18904;
               box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
               <p>quis nostrud exercitation ullamco laboris nisi ut 
                  aliquip ex ea commodo consequat.
               </p>
            </div>   
            <div class="col-md-6" style="background-color: #B18904;
               box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
                  sed do eiusmod tempor incididunt ut labore et dolore magna 
                  aliqua. Ut enim ad minim.</p>
            </div>
         </div>

      </div>

   </div>

</div>

     
     
     
    <a href="http://www.github.com/hopesala" target="_blank"><font size=50>Github主页</font></a>
    <a href="http://www.github.com/hopesala"><font size=200px>http://www.github.com/hopesala</font></a>
   
  </body>
</html>

