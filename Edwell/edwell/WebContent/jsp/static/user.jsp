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
<div id="su" style="top:1%;left: 85%;height:95%;width:13%;position: absolute;">
<a href="/edwell/jsp/static/login.jsp"><b style="font-family:cursive;font-size: 25px;color: white;">LOGOUT</b></a>
</div>
<div id="div15" style="top:67%;left: 10%;height:90%;width: 80%;position: absolute;background-image: url('/edwell/images/ha.jpg');border-radius:75px;">
<div id="div12" style="top: 5%;left: 18%;height: 15%;width: 60%;position: absolute;font-size:50px;font-family:Andalus;text-decoration: underline;background-color: silver;color: navy;text-align: center;border-radius:50px;">
<b>YOUR PROFILE</b>
</div>
<div id="3" style="top:67%;left: 54%;height:10%;width:30%;position:absolute;border-radius: 50px;">
<TABLE border="4" bordercolor="white" style="background-image: url('/edwell/images/ha.jpg');">
<tr>
<td>
<h2 style="font-family: Andalus;font-size: 20px;color:white;">INBOX 
<a href="/edwell/jsp/static/inbox.jsp"><img src="/edwell/images/inbox.png"></a></h2>
</td>
<td>
<h2 style="font-family: Andalus;font-size: 15px;color:white;">
OUTBOX <a href="/edwell/jsp/static/sentitems.jsp"><img src="/edwell/images/outbox1.jpg"></a></h2>
</td>
<td>
<h2 style="font-family: Andalus;font-size: 15px;color:white;">
COMPOSE <a href="/edwell/jsp/static/msgdesigner.jsp"><img src="/edwell/images/compose.png"></a></h2>
</td>
</tr>
</table>
</div>
<div id="div1" name="div1" style="top: 30%;left: 2%;height: 40%;width: 55%;position: absolute;">
<form action="#" method="post">
<table border="5" style=" font: large;background-color: silver;color: navy;" align="center">
<tr>

<a href="/edwell/jsp/static/userview.jsp">
<h2>View details</h2></a>
</tr>
<tr>
<a href="/edwell/jsp/static/userupdate.jsp">
<h2>update details</h2></a>
</tr>
<tr>
<a href="/edwell/jsp/static/searchdesigner.jsp">
<h2>search designer</h2></a>
</tr>

<tr>
<a href="/edwell/jsp/static/communicateadmin.jsp">
<h2>contact admin</h2></a>
</tr>

<tr>
<a href="/edwell/jsp/static/designdes.jsp">
<h2>view uploaded designs</h2></a>
</tr>

</table>
</form>
</div>
</div>


</body>
</html>