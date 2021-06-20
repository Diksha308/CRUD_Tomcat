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
<b>UPDATE PROFILE</b>
</div>
<% HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("userinfo");
if(ui==null)
{
	response.sendRedirect("/edwell/jsp/static/user.jsp");
}
else
{
%>

Hi!  <%=ui %>

<%
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
con=CrudOperation.createConnection();
String strsql="select * from userdetail where userid=?";
try{
	ps=con.prepareStatement(strsql);
	ps.setString(1,ui);
rs=ps.executeQuery();
if(rs.next())
{
%>
<div style="top:40%;left:10px;width:500px;height:300px;position:absolute;background-color:silver">
<form action="/edwell/userupdate" method="post">
<table>
<tr>
<th>User id</th>
<td><input type="text" value="<%=rs.getString("userid")%>"readonly name="txtuserid"></td>
</tr>
<tr>
<td colspan=2><input type="hidden" name="txthidden" value="<%=rs.getString("userid")%>">
</td>

<tr>
<th>Email</th>
<td><input type="text" value="<%=rs.getString("email")%>" name="emaily"></td>
</tr>
<tr>
<th>Phone No</th>
<td><input type="number" value="<%=rs.getString("phoneno")%>" name="phoneno"></td>
</tr>
<tr>
<th>Address</th>
<td><input type="text" value="<%=rs.getString("adress")%>" name="adress"></td>
</tr>
<tr>
<th>gender</th>
<td><input type="text" value="<%=rs.getString("gender")%>" name="gender"></td>
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


</body>
</html>