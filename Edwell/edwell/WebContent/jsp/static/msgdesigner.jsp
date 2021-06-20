<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="comc.dbutil.CrudOperation"%>
    <%@ page import="java.util.*,java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="orange">
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
		<form action="/edwell/jsp/static/desmsgcompose.jsp" method="post">
<div style="left:10%;top:0%;width:30%;height:50;position:absolute">
<table>
<tr>
<th style="font-family:arial;font-size:25px">DESIGNER_ID</th>
<th style="font-family:arial;font-size:25px">NAME  </th>
<th style="font-family:arial;font-size:25px">EMAIL  </th>
<th style="font-family:arial;font-size:25px">EXPERIENCE   </th>
<th style="font-family:arial;font-size:25px">GENDER    </th>
<th style="font-family:arial;font-size:25px">DESIGNER   </th>

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
				<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("experience") %></td>
			<td><%=rs.getString("gender") %></td>
			<td><%=rs.getString("usertype") %></td>
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
			</div>
			</form>
			
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