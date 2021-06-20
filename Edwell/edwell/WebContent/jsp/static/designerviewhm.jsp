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
String strsql="select * from logindetail where status=? and usertype=?";
try
	{
		ps=con.prepareStatement(strsql);
		ps.setString(1,"true");
		ps.setString(2,"designer");
		
		
		rs=ps.executeQuery();
		%>
<div style="left:30%;top:40%;width:30%;height:50%;position:absolute;border-radius:25px; background-image: url('/edwell/images/image4.jpg');">
<form action="/edwell/jsp/static/designervw.jsp" method="post">
<h2 style="font-family:Snap ITC;font-size:50px;text-align:center;">User ID</h2>
<table>
<tr>
</tr>
		<%
		while(rs.next())
			{
				%>
				<tr>
				<td></td>
			<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
				<td style="padding-left:40 px;font-family: monospace;font-size: xx-large;">
				<input type="radio" name="rduserid" value="<%=rs.getString("id")%>" >
				<%=rs.getString("id") %>
				</td>
			
			</tr>
				
				<%
			}
			%>
			<tr>
			<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>
			<input type="submit" value="SUBMIT" style="border-radius: 25px; size:50px;padding-left:40 px;">
			</td>
			</tr>
			</table>	
			</form>
			
		<%
	} 
catch(SQLException se)
	{
		System.out.println(se);
	}

		%>
</div>
</body>
</html>