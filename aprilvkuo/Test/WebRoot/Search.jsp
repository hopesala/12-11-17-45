<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
<%@ page import="java.sql.*"%>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">

<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap-theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/js/bootstrap.min.js"></script>
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
 teacher:
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
	    out.print(rs1.getString(4));
	}
	}
%>


<STYLE TYPE="text/css">
<!-- 
BODY {background-image: URL(image/snow.jpg); 
background-position: center; 
background-repeat: no-repeat; 
background-attachment: fixed;} 
--> 
</STYLE>




 <form method="POST" action="search" class="well form-search">
 <hr>
<div style="margin:0 auto;width:700px;">
<span class="glyphicon glyphicon-search" style="color: rgb(216, 104, 141); font-size: 35px;"> 输入您想要预约的教师的名字:
<br><br>

	<input type="text" name="name" style="width: 265px; height: 42px">	  
	 <button type="submit" class="btn btn-primary btn-lg" style="width: 264px; height: 50px ">查找</button>
	 <footer>
        <p>&copy; hopesala 2014</p>
      </footer>  
	 </div> 
	 

 
</span>



 </form>
 
 
</body>

</html>
