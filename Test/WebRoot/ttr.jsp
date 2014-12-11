<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
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
    
    <title>查询预约</title>
    
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
  <br><br>
  <form action="" method="post">
<% Teachertime[] tt=(Teachertime[])session.getAttribute("tt");
   TeacherTimeWeek ttw=(TeacherTimeWeek)session.getAttribute("ttw");
   int num=ttw.getNum();
 %>
 <div style="margin:0 auto;width:900px;">

 <span class="glyphicon glyphicon-info-sign" style="color: rgb(216, 104, 141); font-size: 35px;"> 
 该教师可预约的日期有<%=ttw.getNum()%>天 <select name="time">
 <%
 for (int i = 1; i <= ttw.getNum();) {
   String time=ttw.getTime();
   %>
    <option value="<%=time %>" ><%=time %></option>
    <%
   }
   ttw.setNum(num);
   %>
 </select>
 </span>
 <br><br>
 <button type="submit" class="btn btn-success" style="width: 370px; height: 53px">查询</button>
 <button type="button" class="btn btn-large btn-primary"  onclick="window.location.href='success.jsp'" style="width: 370px; height: 51px">返回</button>
 
 
 </div>
 </form>
 <%
String time=request.getParameter("time");
if(time==null)
time="";
int Num=Integer.valueOf((String)session.getAttribute("j"));
 %>
 <div style="margin:0 auto;width:900px;">
 
 
 <table class="table">
   <caption><font color="red" size="50">查询结果</font></caption>
   <thead>
      <tr>
        <th>日期</th>
 		<th>教师名字</th>
 		<th>具体时间</th>
	 	<th>可预约总人数</th>
	 	<th>已经预约人数</th>
	 	<th>预约时间</th>
	 	<th>预约</th>
      </tr>
   </thead>
   <tbody>
      <%for(int i=0;i<Num;i++) 
 	{

 	if(time.equals(tt[i].getYear()+','+tt[i].getMonth()+','+tt[i].getDay()))
 	{%>
 	<tr class="success">
 	<td><%=time %></td>
 	<td><%=tt[i].getName() %></td>
    <td><%=tt[i].getStime() %></td>
    
      <td><%=tt[i].getTime() %></td>
        <td><%=tt[i].getTimeed() %></td>
        <%if(tt[i].getThing()==null){
        if ( tt[i].getThingsec() == null) {
        %>
    <td>未设定</td>
    <td><a href="book1.jsp?tti=<%=tt[i].getTeachertimeid()%> &name=<%=tt[i].getName()%>&time=<%=tt[i].getStime()%>&week=<%=tt[i].getDay()%>"> 可设定预约</a> </td> 
    <%}else {
       %>
          <td><%=tt[i].getThingsec() %></td>
          <%if(Integer.valueOf(tt[i].getTime())>Integer.valueOf(tt[i].getTimeed())) { %>
          <td><a href="book2.jsp?name=<%=tt[i].getTeachertimeid()%>"> 可预约</a> </td> 
          <% } else {%>
          <td>不可预约</td>
          <%}
          }
          }
         else {
          %>
          <td><%=tt[i].getThing() %></td>
          <%if(Integer.valueOf(tt[i].getTime())>Integer.valueOf(tt[i].getTimeed())) { %>
          <td><a href="book2.jsp?name=<%=tt[i].getTeachertimeid()%>"> 可预约</a> </td> 
          <% } else {%>
          <td>不可预约</td>
          <%
         }}}}%>
    </tr>
   </tbody>
</table>



</div>
 	
	
  </body>
</html>
