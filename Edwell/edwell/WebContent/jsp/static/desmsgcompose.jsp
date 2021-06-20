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

<form method="post"action="/edwell/Compose">
<div style="top:220px;left:300px;width:1000px;height:450px;position: absolute;">
<table  style="font-style:normal; ;font-weight: bold;font-size:20;color:cyan;background-color: black">
<tr><th>Receiver id</th>
<td><input type="text" value="<%=rs.getString("desid")%>"readonly name="txtuid" id="txtuid"></td>
</tr>

<tr>
<td colspan=2><input type="hidden" name="txthidden" value="<%=rs.getString("desid")%>">
</td>
</tr>
<tr><th>Subject</th><td><input type="text" size=70 name="sub"  id="sub"></td></tr>
<tr>
<th>Message</th><td><textarea rows=8 cols=70  name="msg"></textarea></td>
</tr>
<tr><td colspan=2 align="center"><input type="submit" value="submit"></td></tr>

</table></div>
</form> 
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