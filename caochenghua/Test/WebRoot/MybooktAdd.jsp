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
		String time = request.getParameter("time");
		String num = request.getParameter("num");
		String year = time.substring(0, 4);
		String month = time.substring(5, 7);
		String day = time.substring(8, 10);

		String thing = request.getParameter("thing");
		byte b[]=thing.getBytes("ISO-8859-1");
        thing=new String(b,"UTF-8");
		String Starttime = request.getParameter("stime");
		String Endtime = request.getParameter("etime");

		String stime = Starttime + '-' + Endtime;
	
		Teacher te = (Teacher) session.getAttribute("teacher");
		String teacherid = te.getTeacherid();
			System.out.println("stime:" + stime + "   time" + time + "   thing"
				+ thing + "   num" + num+"  teacherid="+teacherid);
		dbconnection d = new dbconnection();
		Connection t = d.getConnection();
		Statement stmt;
		stmt = null;
		Statement stmt1;
		stmt1 = null;
		ResultSet rs = null;
		try {
			stmt = t.createStatement();
			stmt1 = t.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			String sql = "select * from teachertime;";
			rs = stmt.executeQuery(sql);
			int Teachertimeidint = 1;
			while (rs.next()) {
				Teachertimeidint = rs.getInt(1) + 1;
			}
			
			String sql1 = null;
			String Teachertimeid = String.valueOf(Teachertimeidint);
				System.out.println("teachertimeid:" +Teachertimeid);
			if (thing==null||thing.equals(""))
				{sql1 = "insert into teachertime values(\"" + Teachertimeid
						+ "\", \"" + day + "\",\"" + teacherid + "\", \""
						+ num + "\",0, \"" +stime + "\",null,\"" + year
						+ "\",\"" + month + "\",null)";}
			else
				sql1 = "insert into teachertime values(\"" + Teachertimeid
						+ "\", \"" + day + "\",\"" + teacherid + "\", \""
						+ num + "\",0, \"" + stime + "\",\"" + thing
						+ "\",\"" + year + "\",\"" + month + "\",null)";
			System.out.println(sql1);
			stmt1.executeUpdate(sql1);
			t.close();
		} catch (Exception E) {
			E.printStackTrace();
		}
	%>
	<jsp:include page="Mybookt.jsp" />

</body>
</html>
