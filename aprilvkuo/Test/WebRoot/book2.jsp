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
    
    <title>My JSP 'book2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<form  method="POST" action="Book2">
  <%
  String tti=request.getParameter("tti"); 
  System.out.println("tti"+tti);
  Student st=(Student)session.getAttribute("account");  
  System.out.println("studentid="+st.getStudentid());
  dbconnection d = new dbconnection();
  Connection t = d.getConnection();
	Statement stmt;
	stmt=null;

	stmt = t.createStatement();
	String sql1="select * from  studenttime  where teachertimeid=\""+tti+"\"and  studentid=\""+st.getStudentid()+"\";";
	ResultSet rs=null;
	rs=stmt.executeQuery(sql1);
	if(rs.next())
	{
	    System.out.println("error");

	   response.sendRedirect("Mybookfa.jsp");
	}
	else
	{
	String sql="update  teachertime set timeed=timeed+1 where teachertimeid=\""+tti+"\";";
	stmt.executeUpdate(sql);
	sql="insert into studenttime values(\""+st.getStudentid()+"\", \""+tti+"\")";
	stmt.executeUpdate(sql);
	t.close();
	 response.sendRedirect("Mybook.jsp");
	 }
	 	    %>
	   
	
   </form>
</html>
