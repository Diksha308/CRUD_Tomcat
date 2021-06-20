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
<title>Verify Designers</title>
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
<b>DESIGNERS</b>
</div>

<div id="div1" name="div1" style="top: 30%;left: 2%;height: 40%;width: 55%;position: absolute;">
		<form action="/edwell/jsp/static/verify.jsp" method="post">
<div style="left:40%;top:0%;width:30%;height:50;position:absolute">
<table>
<tr>
<th style="font-family:jokerman;font-size:25px">User ID</th>
<th style="font-family:jokerman;font-size:25px">University Name</th>
<th style="font-family:jokerman;font-size:25px">University roll no.</th>
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
				<td>
				<%=rs.getString("uniname") %>
				</td>
				<td>
				<%=rs.getString("enrlno") %>
			
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
		<div style="top:60%;left:1%;width:10%;height:10%;position:absolute"><a href="/edwell/jsp/static/Admin.jsp">BACK</a></div>
		
</body>
</html>