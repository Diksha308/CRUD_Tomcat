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
<body bgcolor="orange">
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
<div>
<form action="/edwell/updatedes" method="post">
<table>
<tr>
<th>User id</th>
<td><input type="text" value="<%=rs.getString("desid")%>"readonly name="txtuserid"></td>
</tr>

<tr>
<td colspan=2><input type="hidden" name="txthidden" value="<%=rs.getString("desid")%>">
</td>

<tr>
<th>name</th>
<td><input type="text" value="<%=rs.getString("name")%>" name="nany"></td>
</tr>
<tr>

<tr>
<th>Adress</th>
<td><input type="text" value="<%=rs.getString("address")%>" name="txtaddress"></td>
</tr>
<tr>

<tr>
<th>Email</th>
<td><input type="text" value="<%=rs.getString("email")%>" name="emaily"></td>
</tr>
<%-- 

<tr>
<th>University Name</th>
<td><input type="text" value="<%=rs.getString("uniname")%>" name="clnm"></td>
</tr>


<tr>
<th>University Enrollment no.</th>
<td><input type="text" value="<%=rs.getString("enrlno")%>" name="enrol"></td>
</tr>
<tr>
 --%>

<tr>
<th>Phone No</th>
<td><input type="number" value="<%=rs.getString("phoneno")%>" name="phoneno"></td>
</tr>
</table>
<input type="submit" value="SUBMIT">
</form></div>	
<%
}
	
}
catch(SQLException se)
{
	System.out.println(se);
}

%>
</body>
</html>