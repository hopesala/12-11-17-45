<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="java.sql.*"%>
<%@ page import="com.ht.servlet.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>已添加空档</title>

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
	<%

  String thing = request.getParameter("thing");
  
  
   byte b[]=thing.getBytes("ISO-8859-1");
  thing=new String(b,"UTF-8");
  System.out.println("thing="+thing);
  Student st=(Student)request.getSession().getAttribute("account");
  String tti=(String)request.getSession().getAttribute("tti");
  System.out.println("teachertimeid="+tti);
  dbconnection d = new dbconnection();
  Connection t = d.getConnection();
  int numed=1;
	Statement stmt;
	stmt=null;

		stmt = t.createStatement();
	
	String sql="update  teachertime set  thingsec=\""+thing+"\",timeed=\""+numed+"\" where teachertimeid=\""+tti+"\"";
	stmt.executeUpdate(sql);
	sql="insert into studenttime values(\""+st.getStudentid()+"\", \""+tti+"\")";
	stmt.executeUpdate(sql);
	t.close();
	 response.sendRedirect("Mybook.jsp");
%>
	<jsp:include page="Mybook.jsp" />

</body>
</html>
