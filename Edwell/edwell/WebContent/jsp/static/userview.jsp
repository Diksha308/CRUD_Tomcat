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
<c:import url="/html/headeruser.html"></c:import>
<c:import url="/html/footer1.html"></c:import>
<div id="div15" style="top:67%;left: 10%;height:90%;width: 80%;position: absolute;background-image: url('/edwell/images/ha.jpg');border-radius:75px;">
<div id="div12" style="top: 5%;left: 18%;height: 15%;width: 60%;position: absolute;font-size:50px;font-family:Andalus;text-decoration: underline;background-color: silver;color: navy;text-align: center;border-radius:50px;">
<b>YOUR PROFILE</b>
</div>
<% HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("userinfo");
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;

con=CrudOperation.createConnection();
String strsql="select * from userdetail where userid=?";
try
{
	ps=con.prepareStatement(strsql);
	 ps.setString(1,ui);
     rs=ps.executeQuery();
	%>
	<div style="top:40%;left:10px;width:500px;height:500px;position:absolute;">
	<form action="#" method="post">
	  <%@page import="comc.dbutil.CrudOperation"%>
    <%@ page import="java.util.*,java.sql.*" %>
<table border=1>
<tr>
<th>UserID</th>
<th>NAME</th>
<th>ADDRESS</th>
<th>EMAIL</th>
<th>PHONE NO.</th>
<th>GENDER</th>

</tr>
	<%
		while(rs.next())
			{
				%>
	<tr>
	<td><%=rs.getString("userid") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("adress") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("phoneno") %></td>
<td><%=rs.getString("gender") %></td>
	</tr>

<%}}
	catch(SQLException se)
	{
		System.out.println(se);
	}%>
</table>
</form>
</div>


<div style="top:90%;left:1%;width:10%;height:10%;position:absolute"><a href="/edwell/jsp/static/user.jsp">BACK</a></div>


</body>
</html>