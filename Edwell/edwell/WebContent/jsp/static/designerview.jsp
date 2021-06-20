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
if(ui==null)
{
	response.sendRedirect("/edesign1/jsp/WelcomeDesigner.jsp");
}
else
{
%>
Hi!  <%=ui %>

<% Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
con=CrudOperation.createConnection();
try
{
	String strsql="select * from designer where desid=?";
	ps=con.prepareStatement(strsql);
	ps.setString(1,ui);
	rs=ps.executeQuery();
	rs.next();
	{
		%>
		
<div id="div1" name="div1" style="top: 30%;left: 2%;height: 40%;width: 55%;position: absolute;">
<form action="#" method="post">
<table border="5" style=" font: large;background-color: silver;color: navy;" align="center">
<tr>
<th>UserID</th>
<td><%=rs.getString("desid")%></td>
</tr>
<tr>
<th>Name</th>
<td><%=rs.getString("name")%></td>
</tr>
<tr>
<th>Address</th>
<td><%=rs.getString("address") %></td>
</tr>
<tr>
<th>Experience</th>
<td><%=rs.getString("experience") %></td>
</tr>
<tr>
<th>About Me</th>
<td><%=rs.getString("aboutme") %></td>
</tr>

<tr>
<th>Email</th>
<td><%=rs.getString("email") %></td>
</tr>
<tr>
<tr>
<th>Gender</th>
<td><%=rs.getString("gender") %></td>

	</tr>

<%}}
	catch(SQLException se)
	{
		System.out.println(se);
	}}%>
</table>
</form>
</div>
<div style="top:80%;left:1%;width:10%;height:10%;position:absolute"><a href="/edwell/jsp/static/designerpg.jsp">BACK</a></div>

</body>
</html>