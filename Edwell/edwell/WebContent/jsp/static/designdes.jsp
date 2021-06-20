<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="comc.dbutil.CrudOperation"%>
    <%@ page import="java.util.*,java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
</head>
<body bgcolor="orange">

<% Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
con=CrudOperation.createConnection();
try
{
	String strsql="select * from upload";
	ps=con.prepareStatement(strsql);
	rs=ps.executeQuery();
		%>

<div>
<table>
<tr><th> USER ID</th>
<th>DESIGNS</th>
</tr>

	<%
		while(rs.next())
			{
				%>
	<tr>
<td>
<h2><%=rs.getString("id")%></h2></td>
<td> <img src="/edwell/designs/<%=rs.getString("picname")%>"></td>
</tr>
<%}}
	catch(SQLException se)
	{
		System.out.println(se);
	}%>

</table>
</div>
</body>
</html>