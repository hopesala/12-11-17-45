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
    
    <title>我的预约</title>
    
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
	 if(te==null)
	 {
	 %>
	  	<div id="myAlert" class="alert alert-warning">
   <a href="#" class="close" data-dismiss="alert">&times;</a>
   <strong>警告！</strong>教师端未登录
   </div>
	 <input type=button value=后退 onclick="window.history.go(-1)">
	 <%
	 String url=request.getHeader("Referer"); 
	 System.out.println(url);
	 }
	 else
	 {
	 %>
	 <hr>
  <div style="margin:0 auto;width:600px;">
  
  <p>我的空挡<p>
  <table class="table" >
  <tr>
  <th>日期</th>
  <th>时间</th>
  <th>事件</th>
  <th>总人数</th>
  <th>已预约人数</th>
  <th>取消预约</th>
  <th>查看预约</th>
  </tr>
	 <% 
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
		<tr>
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
	          </table>
	     <div style="margin:0 auto;width:200px;">
	      <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='successt.jsp'" style="width: 216px; ">
      返回
   </button>
   </div>
  	</div>
  	<%} %>
	    
	     
	
  </body>
</html>
