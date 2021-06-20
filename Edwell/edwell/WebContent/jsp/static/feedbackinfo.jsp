<%@ page language="java" contentType="text/html; charset6=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
     <%@page import="comc.dbutil.CrudOperation"%>
    <%@ page import="java.util.*,java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
</head>
<body background="/edwell/images/img2.jpg" >
<c:import url="/html/header.html"></c:import>
<c:import url="/html/footer.html"></c:import>
<% Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
con=CrudOperation.createConnection();
try
{
	String strsql="select * from feedback";
	ps=con.prepareStatement(strsql);
	rs=ps.executeQuery();
	
		%>
		
<div id="div1" name="div1" style="top: 30%;left: 2%;height: 40%;width: 55%;position: absolute;">
<form action="#" method="post">
<table border="5" style=" font: large;color:white;" align="center">
<tr>
<th>UserID</th><th>FEEDBACK</th>
</tr>

	<%
		while(rs.next())
			{
				%>
	<tr>
<td><%=rs.getString("id")%></td>
<td><%=rs.getString("fbdesc")%></td>
</tr>

<%}}
	catch(SQLException se)
	{
		System.out.println(se);
	}%>
</table></form></div>
</body>
</html>