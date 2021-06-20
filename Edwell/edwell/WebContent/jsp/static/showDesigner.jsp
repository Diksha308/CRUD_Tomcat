<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,java.sql.*" %>
    <%@page import="comc.dbutil.CrudOperation"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null; 
%>


<table border=2>
<tr>
<th>Designer name</th>
<th>Designer ID</th>
<th>Email</th>
<th>Phone no</th>
<th>Experience</th>
<th>Designer</th>
</tr>
<%
String id=request.getParameter("dmid");
System.out.println(id);
String strsql="select * from designer where cityid=?";
con=CrudOperation.createConnection();
try{
	ps=con.prepareStatement(strsql);
	ps.setString(1,id);
	rs=ps.executeQuery();
	while(rs.next())
	{
%>		
	<tr>
	<td><%=rs.getString("name")%></td>
	<td><%=rs.getString("desid") %></td>
	<td><%=rs.getString("email")%></td>
	<td><%=rs.getLong("phoneno")%></td>
	<td><%=rs.getString("experience")%></td>
	<td><%=rs.getString("usertype")%></td>
	</tr>
	<%
	}
	}
catch(SQLException se)
{
System.out.println(se);
}
%>
</table>


</body>
</html>