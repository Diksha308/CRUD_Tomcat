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
<b>UPDATE</b>
</div>
<% HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("userinfo");
if(ui==null)
{
	response.sendRedirect("/edwell/jsp/static/designerpg.jsp");
}
else
{
%>
Hi!  <%=ui %>
<div id="div1" name="div1" style="top: 30%;left: 2%;height: 40%;width: 55%;position: absolute;">
<form action="/edwell/Designerupdate" method="post">
<%
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
con=CrudOperation.createConnection();
try{
	String strsql="select * from designer where desid=?";
	ps=con.prepareStatement(strsql);
	ps.setString(1,ui);
rs=ps.executeQuery();
if(rs.next())
{
%>
<div style="top:40%;left:10px;width:500px;height:300px;position:absolute">
<form action="/edwell/Designerupdate" method="post">
<table>
<tr>
<th>User id</th>
<td><input type="text" value="<%=rs.getString("desid")%>"readonly name="txtuserid"></td>
</tr>
<tr>
<td colspan=2><input type="hidden" name="txthidden" value="<%=rs.getString("desid")%>">
</td>
</tr>

<tr>
<th>Email</th>
<td><input type="text" value="<%=rs.getString("email")%>" name="emaily"></td>
</tr>

<tr>
<th>Address</th>
<td><input type="text" value="<%=rs.getString("address")%>" name="addy"></td>
</tr>
<tr>
<th>Phone No</th>
<td><input type="number" value="<%=rs.getString("phoneno")%>" name="phoneno"></td>
</tr>
<tr>
<th>Experience</th>
<td><input type="text" value="<%=rs.getString("experience")%>" name="expy"></td>
</tr>
<tr>
<th>About me</th>
<td><input type="text" value="<%=rs.getString("aboutme")%>" name="abty"></td>
</tr>
<tr>
<th>Gender</th>
<td>
<select name="gendy">
<option value="<%=rs.getString("gender")%>"><%=rs.getString("gender")%></option>
<option value="male">male</option>
<option value="female">female</option>
</select>
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

}
%>
</form>
</div>
</div>
<div style="top:100%;left:1%;width:10%;height:10%;position:absolute"><a href="/edwell/jsp/static/designerpg.jsp">BACK</a></div>

</body>
</html>