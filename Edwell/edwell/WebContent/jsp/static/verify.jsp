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
<form action="/edwell/verifydes" method="post">
<table>
<tr>
<th>User id</th>
<th>verified</th>
</tr>
<tr>
<td><input type="text" value="<%=rs.getString("desid")%>"readonly name="txtuserid"></td>
<td><select name="ver"id="ver" onchange="showCit(this.value)"size=1>
<option value="def">select your status</option>
<option value="true" id="lk01">VERIFIED</option>
<option value="false" id="vr01">NOT VERIFIED</option>
</select>
</td>
</tr>

<tr>
<td colspan=2><input type="hidden" name="txthidden" value="<%=rs.getString("desid")%>">
</td>
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