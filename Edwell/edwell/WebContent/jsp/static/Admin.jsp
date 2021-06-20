<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
</head>
<body background="/edwell/images/img2.jpg" onload="changePic(this.value) ">
<c:import url="/html/header1.html"></c:import>
<c:import url="/html/footer1.html"></c:import>
<c:import url="/html/admin.html"></c:import>



<div id="dchngpic" name="div" style="top:30%;left:5%;height:30%;width:75%;position: absolute;">
<img id="img1" style="height:190px;width: 1200px;;border-radius:20px;position: absolute;">
</div>

<div id="div75" name="div" style="top:2%;left:87%;height:30%;width:13%;position: absolute;">
<img src="/edwell/images/admin.png" style="height:70px;width: 70px;">
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
COMPOSE <a href="/edwell/jsp/static/compose.jsp"><img src="/edwell/images/compose.png"></a></h2>
</td>
</tr>
</table>
</div>

<div id="3" style="top:77%;left: 8%;height:30%;width:30%;position:absolute;border-radius: 50px;background-image: url('/edwell/images/ha.jpg');padding-left: 5%;">
<h2 style="font-family: Andalus;font-size: 35px;color:white;">
View All users  
<br>DESIGNERS <a href="/edwell/jsp/static/viewdesigner.jsp"><img src="/edwell/images/view.png"></a>
<br>CLIENTS <a href="/edwell/jsp/static/viewuser.jsp"><img src="/edwell/images/view.png"></a>
</h2>
</div>
<div id="7" style="top:103%;left: 48%;height:32%;width:30%;position:absolute;border-radius: 50px;background-image: url('/edwell/images/ha.jpg');padding-left: 5%;">
<h2 style="font-family: Andalus;font-size: 35px;color:white;">
Verify Account
  
<br>DESIGNERS <a href="/edwell/jsp/static/verifydes.jsp"><img src="/edwell/images/add.png"></a>
</h2>
</div>
<div id="90" style="top:133%;left: 7%;height:30%;width:30%;position:absolute;border-radius: 50px;background-image: url('/edwell/images/ha.jpg');padding-left: 5%;">
<h2 style="font-family: Andalus;font-size: 35px;color:white;">
Update user account  
<br>DESIGNERS <a href="/edwell/jsp/static/updatedesigner.jsp"><img src="/edwell/images/update.png"></a>
<br>CLIENTS<a href="/edwell/jsp/static/updateuser.jsp"><img src="/edwell/images/update.png"></a>
</h2>
</div>
<div id="7" style="top:160%;left: 48%;height:30%;width:30%;position:absolute;border-radius: 50px;background-image: url('/edwell/images/ha.jpg');padding-left: 5%;">
<h2 style="font-family: Andalus;font-size: 35px;color:white;">
Delete user account  
<br>DESIGNERS<a href="/edwell/jsp/static/deletedesigner.jsp"><img src="/edwell/images/del.png"></a>
<br>CLIENTS<a href="/edwell/jsp/static/deleteuser.jsp"><img src="/edwell/images/del.png"></a>
</h2>
</div>
`<div id="7" style="top:198%;left:7%;height:15%;width:32%;position:absolute;border-radius: 50px;background-image: url('/edwell/images/ha.jpg');padding-left: 0.2%;">
<h2 style="font-family: Andalus;font-size: 35px;color:white;padding-left: 10%;">
 View Designs <a href="/edwell/jsp/static/designdes.jsp"><img src="/edwell/images/z4.png"></a>
</h2>
</div>

`<div id="7" style="top:198%;left:50%;height:15%;width:32%;position:absolute;border-radius: 50px;background-image: url('/edwell/images/ha.jpg');padding-left: 0.2%;">
<h2 style="font-family: Andalus;font-size: 35px;color:white;padding-left: 10%;">
 View Feedback <a href="/edwell/jsp/static/adminfd.jsp"><img src="/edwell/images/z4.png"></a>
</h2>
</div>

<div id="sub3div3" style="top:17%;left: 85%;height:95%;width:13%;position: absolute;">
<a href="/edwell/jsp/static/login.jsp"><b style="font-family:cursive;font-size: 25px;color: white;">LOGOUT</b></a>
</div>


</body>
</html>