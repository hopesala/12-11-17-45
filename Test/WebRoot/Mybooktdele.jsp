<%@ page contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
<%@ page import="java.sql.*"%>
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
    
    <title>My JSP 'Mybooktdele.jsp' starting page</title>
    
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
BODY {background-image: URL(image/spring.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>
     <%
     dbconnection d = new dbconnection();
     Connection t = d.getConnection();
	 Statement stmt,stmt1,stmt2;
	 stmt=null;
	 stmt1=null;
	 	try {
			stmt = t.createStatement();
			stmt1 = t.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 request.setCharacterEncoding("UTF-8");
     String teachertimeid=request.getParameter("name"); 
	 String sql="delete  from studenttime where teachertimeid=\""+teachertimeid+"\";";
	 String sql1="delete  from teachertime where teachertimeid=\""+teachertimeid+"\";";
		try {
	    stmt.executeUpdate(sql);
	    stmt1.executeUpdate(sql1);
		}catch (Exception E) {
		E.printStackTrace();	
	     }
	%>

    <script>
    alert("删除空档成功！")
    </script>
    <jsp:include  page="Mybookt.jsp"/>
  </body>
</html>
