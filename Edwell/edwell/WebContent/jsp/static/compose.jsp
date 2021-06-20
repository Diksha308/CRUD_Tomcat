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
<title>OUTBOX</title>
</head>
<body background="/edwell/images/img2.jpg">
<c:import url="/html/alldesigner.html"></c:import>
<c:import url="/html/header1.html"></c:import>
<c:import url="/html/footer1.html"></c:import>
<div id="div15" style="top:67%;left: 10%;height:90%;width: 80%;position: absolute;background-image: url('/edwell/images/ha.jpg');border-radius:75px;">
<div id="div12" style="top: 5%;left: 18%;height: 15%;width: 60%;position: absolute;font-size:50px;font-family:Andalus;text-decoration: underline;background-color: silver;color: navy;text-align: center;border-radius:50px;">
<b>OUTBOX</b>
</div>

<div id="div1" name="div1" style="top: 5%;left: 2%;height: 40%;width: 55%;position: absolute;"><form method="post" action="/edwell/Deletemsg">
<form method="post"action="/edwell/Compose">
<div style="top:220px;left:300px;width:1000px;height:450px;position: absolute;">
<table  style="font-style:normal; ;font-weight: bold;font-size:20;color:cyan;background-color: black">
<tr><th>Reciever id</th><td><input type="text" name="txtuid"  id="txtuid"></td></tr>
<tr><th>Subject</th><td><input type="text" size=70 name="sub"  id="sub"></td></tr>
<tr>
<th>Message</th><td><textarea rows=8 cols=70  name="msg"></textarea></td>
</tr>
<tr><td colspan=2 align="center"><input type="submit" value="submit"></td></tr>
<div style="top:80%;left:10%;width:10%;height:10%;position:absolute"><a href="/edwell/jsp/staic/communication.jsp" style="background-color: black;color:yellow" >BACK</a></div>
</table></div>
</form> 
</form>
</div>
</div>
<div id="divfoot" name="foot" style="top: 230%;left: 4%;height:8%;width: 20%;;position: absolute;">
<a href="/edwell/jsp/static/Admin.jsp"> <b style="font-family: cursive;font-size: 25px;color: white;">BACK</b></a>
</div>


</body>
</html>