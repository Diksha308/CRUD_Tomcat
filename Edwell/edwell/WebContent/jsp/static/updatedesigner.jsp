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
<%
Connection con=null;
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
<b>UPDATE DESIGNERS</b>
</div>
<div style="left:40%;top:20%;width:30%;height:50;position:absolute">
<form action="/edwell/jsp/static/updated.jsp" method="post">

<table>
<tr>
<th style="font-family:jokerman;font-size:25px">User ID</th>
</tr>
		<%
		while(rs.next())
			{
				%>
				<tr>
				<td>
				<input type="radio" name="rduserid" value="<%=rs.getString("desid")%>">
				<%=rs.getString("desid") %>
				</td>
			
			</tr>
				
				<%
			}
			%>
			<tr>
			<td>
			<input type="submit" value="SUBMIT">
			</td>
			</tr>
			</table>	
			
			</form>
			</div>
			</div>
		<%
	} 
catch(SQLException se)
	{
		System.out.println(se);
	}

		%>
<div id="divfoot" name="foot" style="top: 230%;left: 4%;height:8%;width: 20%;;position: absolute;">
<a href="/edwell/jsp/static/Admin.jsp"> <b style="font-family: cursive;font-size: 25px;color: white;">BACK</b></a>
</div>
		
</body>
</html>