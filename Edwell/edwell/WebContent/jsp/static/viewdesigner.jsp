<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="comc.dbutil.CrudOperation"%>
    <%@ page import="java.util.*,java.sql.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="/edwell/images/img2.jpg">
<c:import url="/html/alldesigner.html"></c:import>
<c:import url="/html/header1.html"></c:import>
<c:import url="/html/footer1.html"></c:import>
<% Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
con=CrudOperation.createConnection();
String strsql="select * from designer";
try
{
	ps=con.prepareStatement(strsql);
	rs=ps.executeQuery();
	%>
	
<div id="div15" style="top:67%;left: 10%;height:90%;width: 80%;position: absolute;background-image: url('/edwell/images/ha.jpg');border-radius:75px;">
<div id="div12" style="top: 5%;left: 18%;height: 15%;width: 60%;position: absolute;font-size:50px;font-family:Andalus;text-decoration: underline;background-color: silver;color: navy;text-align: center;border-radius:50px;">
<b>REGISTERED DESIGNERS</b>
</div>

<div id="div1" name="div1" style="top: 30%;left: 2%;height: 40%;width: 55%;position: absolute;">
<form action="#" method="post">
<table border="5" style=" font: large;background-color: silver;color: navy;" align="center">
	

<tr>
<th>UserID</th>
<th>NAME</th>
<th>ADDRESS</th>
<th>EMAIL</th>
<th>PHONE NO.</th>
<th>EXPERIENCE</th>
<th>UNIVERSITY NAME</th>
<th>GENDER</th>
<th>DESIGNER IS</th>

<th>UNIVERSITY ENROLLMENT NO.</th>
</tr>
	<%
		while(rs.next())
			{
				%>
	<tr>
	<td><%=rs.getString("desid") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("phoneno") %></td>
<td><%=rs.getString("experience") %></td>
<td><%=rs.getString("uniname") %></td>
<td><%=rs.getString("gender") %></td>
<td><%=rs.getString("usertype") %></td>
<td><%=rs.getString("enrlno") %></td>

	</tr>

<%}}
	catch(SQLException se)
	{
		System.out.println(se);
	}%>
</table>
</form>
</div>
</div>
<div id="divfoot" name="foot" style="top: 230%;left: 4%;height:8%;width: 20%;;position: absolute;">
<a href="/edwell/jsp/static/Admin.jsp"> <b style="font-family: cursive;font-size: 25px;color: white;">BACK</b></a>
</div></body>
</html>