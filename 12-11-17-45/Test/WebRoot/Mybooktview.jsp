<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查询预约学生</title>
    
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
    <hr>
    <div class="panel panel-info" style="margin:0 auto;width:400px;">
   <div class="panel-heading"><b>查询结果</b></div>
      <table class="table" >
    <tr>
    <th><strong>姓名</strong></th>
    <th><strong>电话</strong></th>
    <th><strong>邮箱</strong></th>
    
     <%
     dbconnection d = new dbconnection();
     Connection t = d.getConnection();
	 Statement stmt,stmt1;
	 stmt=null;
	 stmt1=null;
	 	try {
			stmt = t.createStatement();
			stmt1 = t.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 String teachertimeid=request.getParameter("name"); 
	 %>
	
	 <%
	 ResultSet rs,rs1=null;
	 String sql="select * from studenttime where teachertimeid=\""+teachertimeid+"\";";
		rs=stmt.executeQuery(sql);
		while(rs.next())
		{
		String studentid=rs.getString(1);
		%>
		<tr>
		
		<%
		String sql1="select * from student where studentid=\""+studentid+"\";";
		rs1=stmt1.executeQuery(sql1);
		while(rs1.next())
		{
		String name=rs1.getString(3);
		String number=rs1.getString(5);
		String mail=rs1.getString(6);
		%>
		<td>
		<%=name %>
		</td>
		
		<td><%=number %>
		</td>
		<td><%=mail %></td>
</tr>
		<%
		}
		}
	
	     %>
	     
	     </table>
	     </div>
	    
  
  <hr>
  <div style="margin:0 auto;width:200px;">
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='Mybookt.jsp'" style="width: 216px; ">
      返回
   </button>
   </div>
  </body>
</html>
