<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@page import="comc.dbutil.CrudOperation"%>
    <%@ page import="java.util.*,java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Designers</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
</head>
<body background="/edwell/images/img2.jpg">
<c:import url="/html/header.html"></c:import>
<c:import url="/html/footer.html"></c:import>

<%
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
con=CrudOperation.createConnection();
String Userid=request.getParameter("rduserid");

String strsql="select * from designer where desid=?";
try{
	ps=con.prepareStatement(strsql);
	ps.setString(1,Userid);
rs=ps.executeQuery();
if(rs.next())
{
%>
<div style="left:30%;top:40%;width:50%;height:80%;position:absolute;border-radius:25px; background-image: url('/edwell/images/image4.jpg');">
<form action="#" method="post">
<table style="padding: 5%;">

<tr>
<th style="font-family: Andalus;font-size: xx-large;color:purple;">UserID</th>
<td style="font-family: Andalus;font-size: xx-large;color:black;"><%=rs.getString("desid")%></td>
</tr>
<tr>
<th style="font-family: Andalus;font-size: xx-large;color:purple;">NAME</th>
<td style="font-family: Andalus;font-size: xx-large;color:black;"><%=rs.getString("name")%></td>
</tr>
<tr>
<th style="font-family: Andalus;font-size: xx-large;color:purple;">ADDRESS</th>
<td style="font-family: Andalus;font-size: xx-large;color:black;"><%=rs.getString("address") %></td>
</tr>
<tr>
<th style="font-family: Andalus;font-size: xx-large;color:purple;">EXPERIENCE</th>
<td style="font-family: Andalus;font-size: xx-large;color:black;"><%=rs.getString("experience") %></td>
</tr>
<tr>
<th style="font-family: Andalus;font-size: xx-large;color:purple;">ABOUT ME</th>
<td style="font-family: Andalus;font-size: xx-large;color:black;"><%=rs.getString("aboutme") %></td>
</tr>

<tr>
<th style="font-family: Andalus;font-size: xx-large;color:purple;">EMAIL</th>
<td style="font-family: Andalus;font-size: xx-large;color:black;"><%=rs.getString("email") %></td>
</tr>
<tr>
<tr>
<th style="font-family: Andalus;font-size: xx-large;color:purple;">GENDER</th>
<td style="font-family: Andalus;font-size: xx-large;color:black;"><%=rs.getString("gender") %></td>

	</tr>

<%}}
	catch(SQLException se)
	{
		System.out.println(se);
	}%>
</table>
</form>
</div>
</body>
</html>