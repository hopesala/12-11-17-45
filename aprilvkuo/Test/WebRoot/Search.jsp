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
    
    <title>预约教师</title>
    
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

  <%  Student st=(Student)request.getSession().getAttribute("account");
  if(st==null)
	 {
	 %>
	  <p> 学生端未登录<p>
	 <input type=button value=后退 onclick="window.history.go(-1)">
	 <%
	 }
	 else
	 {
	 %>


输入您想要预约的教师的名字:


	<input type="text" name="name" style="width: 265px; height: 42px">	  
	 <button type="submit" class="btn btn-primary btn-lg" style="width: 264px; height: 50px ">查找</button>
	



      
	  
	

 


 <form method="POST" action="search" class="well form-search">
<div style="margin:0 auto;width:600px;">
<span class="glyphicon glyphicon-user" style="color: rgb(216, 104, 141); font-size: 25px;">
可选老师列表[可点击老师姓名立即预约]：<br>
 <%
 int teacher[];
 teacher=new int [5];
 int i=0;
 byte flag='1';
 int teacherid;
 dbconnection d = new dbconnection();
  Connection t = d.getConnection();
	Statement stmt;
	stmt=null;
	try {
		stmt = t.createStatement();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    String sql1="select * from  teachertime ;";
	ResultSet rs=null;
	rs=stmt.executeQuery(sql1);
	while(rs.next())
	{
	    if(i==5)
	    break;
	    teacherid=Integer.valueOf(rs.getString(3));
	    if(Integer.valueOf(rs.getString(4))>Integer.valueOf(rs.getString(5))) {
	    for(int j=0;j<=i;j++)
	    {
	    flag='1';
	    if(teacherid==teacher[j])
	    {
	    flag='0';
	    break;	    
	    }
	    }
	    if(flag=='1')
	    {teacher[i++]=teacherid;
	    }
	    }
	}
    
    for(int j=0;j<i;j++)
    {
    teacherid=teacher[j];
    String sql="select * from  teacher  where teacherid=\""+teacherid+"\";";
    ResultSet rs1=null;
	rs1=stmt.executeQuery(sql);

	while(rs1.next())
	{
	%>
	<a href="search?name=<%=rs1.getString(4)%>"><%=rs1.getString(4) %></a> 
	<% 
	  
	}
	}
	
%>
<hr>
</span>
</div>







 <hr>
 

<%} %>


 </form>
 
 
</body>

</html>
