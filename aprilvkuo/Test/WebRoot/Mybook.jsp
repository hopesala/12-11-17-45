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
	<style> 
div
{
border:2px solid #a1a1a1;
padding:10px 40px; 
background:#dddddd;
width:300px;
border-radius:25px;
}
</style>

  </head>
  
  <body>
    <jsp:include  page="MyJsp.jsp"/>
<%  Student st=(Student)request.getSession().getAttribute("account");
  if(st==null)
	 {
	 %>
	<div id="myAlert" class="alert alert-warning">
   <a href="#" class="close" data-dismiss="alert">&times;</a>
   <strong>警告！</strong>学生端未登录
   </div>
	 <input type=button value=后退 onclick="window.history.go(-1)">
	 <%
	 }
	 else
	 {
	 %>
	 <div>

  <table class="table">
  <caption><font color="red" size="50">查询结果</font></caption>
  <thead>
  <tr>
  <th>日期</th>
  <th>时间</th>
  <th>事件</th>
  <th>总人数</th>
  <th>已预约人数</th>
  <th>老师姓名</th>
  <th>操作</th>
  </tr>
  </thead>
  <tbody>
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
	 stmt1=null;
	 	try {
			stmt1 = t.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 stmt2=null;
	 	try {
			stmt2 = t.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 String studentid=st.getStudentid();
	 String teachertimeid=null;
	 ResultSet rs=null;
	 ResultSet rs1=null;
	  ResultSet rs2=null;
	 String sql="select * from studenttime where studentid=\""+studentid+"\";";
		try {
		rs=stmt.executeQuery(sql);
		while(rs.next())
		{
		%>
		<tr>
		<% 
			teachertimeid=rs.getString(2);
		    String sql1="select * from teachertime where teachertimeid=\""+teachertimeid+"\";"; 
		try {
		rs1=stmt1.executeQuery(sql1);
			
		if(rs1.next())
		{	   
	        %>
	   <td><%=rs1.getString(8)+'.'+rs1.getString(9)+'.'+rs1.getString(2) %></td>
       <td><%=rs1.getString(6) %></td>
       <td><%if(rs1.getString(7)==null) {
       out.print(rs1.getString(10));
       } else {
          out.print(rs1.getString(7));
         }
         %></td>        
          <td><%=rs1.getString(4) %></td>
           <td><%=rs1.getString(5) %></td>
              
		<% 
		
		
		
		
		String sql2="select * from teacher where teacherid=\""+rs1.getString(3)+"\";"; 
		try {
		rs2=stmt2.executeQuery(sql2);
		if(rs2.next())
		{	   
	    %>		    
		 <td><%=rs2.getString(4) %></td>
		 <td><a href="Mybookdele.jsp?name=<%=teachertimeid%>"> 取消</a> </td> 
		 </tr>
		 
		<% 	
		}
		}catch (Exception E) {
		E.printStackTrace();	
	     }
		}
		}catch (Exception E) {
		E.printStackTrace();	
	     }
		}
		}catch (Exception E) {
		E.printStackTrace();	
	     }
	     }
	     %>
	   
	      </tbody>
	     </table>
	     
	
	     </div>
  </body>
</html>
