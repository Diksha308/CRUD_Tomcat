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
<title>INBOX</title>
</head>
<body background="/edwell/images/img2.jpg">
<c:import url="/html/alldesigner.html"></c:import>
<c:import url="/html/header1.html"></c:import>
<c:import url="/html/footer1.html"></c:import>
<% Connection con=null;PreparedStatement ps=null;ResultSet rs=null;HttpSession hs=null; %>
<div id="div15" style="top:67%;left: 10%;height:90%;width: 80%;position: absolute;background-image: url('/edwell/images/ha.jpg');border-radius:75px;">
<div id="div12" style="top: 5%;left: 18%;height: 15%;width: 60%;position: absolute;font-size:50px;font-family:Andalus;text-decoration: underline;background-color: silver;color: navy;text-align: center;border-radius:50px;">
<b>INBOX</b>
</div>

<div id="div1" name="div1" style="top: 30%;left: 2%;height: 40%;width: 55%;position: absolute;"><form method="post" action="/edwell/Deletemsg">
<table border=3>
<tr><th>Delete</th><th>Sender id</th><th>Subject</th><th>Message</th><th>Date</th></tr>
 <%  hs=request.getSession();
 String ui=(String)hs.getAttribute("userinfo");
 System.out.println(ui);
 String strsql="Select msgid,senderid,msgtext,subject,date from message where receiverid=? and Rstatus=?";
 con=CrudOperation.createConnection();
 try
 {
	 ps=con.prepareStatement(strsql);
	 ps.setString(1,ui);
	 ps.setString(2,"false");
	 rs=ps.executeQuery();
	 while(rs.next())
	 { %>
	 <tr><td><input type="checkbox" name="chkmsg" value="<%=rs.getInt("msgid") %>"></td><td><%=rs.getString("senderid") %><td><%=rs.getString("subject") %></td><td><%= rs.getString("msgtext") %></td><td><%=rs.getDate("date") %></td></tr>
	 <% } }catch(SQLException se)
 {System.out.println(se);
 }%>
 <tr><td colspan=5 align="center"><input type="submit" value="Delete"></td></tr>
</table>
 
</form>
</div>
</div>
<div id="divfoot" name="foot" style="top: 230%;left: 4%;height:8%;width: 20%;;position: absolute;">
<a href="/edwell/jsp/static/Admin.jsp"> <b style="font-family: cursive;font-size: 25px;color: white;">BACK</b></a>
</div>
</body>
</html>