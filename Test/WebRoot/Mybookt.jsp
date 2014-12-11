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
    
    <title>My JSP 'Mybook.jsp' starting page</title>
    
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
BODY {background-image: URL(image/snowgirl.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>
  <div style="margin:0 auto;width:700px;">
  <p><font color=yellow size=50 ><strong>我的空档</strong></font><p>
  <br>
  <table class="table" >
  <thead>
  <tr class="success">
  <th>日期</th>
  <th>时间</th>
  <th>事件</th>
  <th>总人数</th>
  <th>已预约人数</th>
  <th>取消预约</th>
  <th>查看预约</v>
  </tr>
  </thead>
    <%
     dbconnection d = new dbconnection();
     Connection t = d.getConnection();
	 Statement stmt,stmt1,stmt2;
	 stmt=null;
	 	try {
			stmt = t.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 Teacher te=(Teacher)request.getSession().getAttribute("teacher");
	 String teacherid=te.getTeacherid();
	 ResultSet rs=null;
	 ResultSet rs1=null;
	  ResultSet rs2=null;
	 String sql="select * from teachertime where teacherid=\""+teacherid+"\";";
		try {
		rs=stmt.executeQuery(sql);
		while(rs.next())
		{
		%>
		<tr class="warning">
		<td><%=rs.getString(8)+rs.getString(9)+rs.getString(2)%></td>
		<td><%=rs.getString(6)%></td>
		
		<td><%if(rs.getString(7)==null) {
		if(rs.getString(10)!=null) {
		out.print(rs.getString(10));
		}else {
		out.print("未设定");
		}
		} else {
		out.print(rs.getString(7));
		}
		%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><a href="Mybooktdele.jsp?name=<%=rs.getString(1)%>"> 取消</a> </td> 
		<td><a href="Mybooktview.jsp?name=<%=rs.getString(1)%>"> 查看</a> </td> 
		<% 
		}
		}catch (Exception E) {
		E.printStackTrace();	
	     }
	     %>
	     </table><br>
	     </div>
	     <div style="margin:10 auto;width: 297px;">
	     <input type="button" value="返回" class="btn btn-log btn-primary" onclick="window.location.href='successt.jsp'" style="width: 256px; ">
	     </div>
	     	
  </body>
</html>
