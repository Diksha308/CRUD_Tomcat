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
<title>Your Opinion</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
<script type="text/javascript">


var imgarr= new Array(7);
imgarr[0]="/edwell/images/d29.jpg";
imgarr[1]="/edwell/images/d30.jpg";
imgarr[2]="/edwell/images/d32.jpg";
imgarr[3]="/edwell/images/d33.jpg";
imgarr[4]="/edwell/images/d53.jpg";
imgarr[5]="/edwell/images/d84.jpg";
imgarr[6]="/edwell/images/design5.jpg";
cnt=0;

function changePic(){
	
document.getElementById("img2").src=imgarr[cnt];
cnt++;
if (cnt>6)
	{
	cnt=0;
	}
setTimeout("changePic()",4000);
}
</script>
</head>
<body background="/edwell/images/img2.jpg" onload="changePic(this.value) ">
<c:import url="/html/header.html"></c:import>
<c:import url="/html/footer.html"></c:import>
<div id="DIV1" style="top: 35%;left: 6%;height: 30%;width: 88%;position: absolute;border-radius: 50px;">
<img src="/edwell/images/feedback-banner.png" style="height: 90%;width: 100%;border-radius:20px;position: absolute;">
</div>

<% Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
con=CrudOperation.createConnection();
try
{
	String strsql="select * from feedback";
	ps=con.prepareStatement(strsql);
	rs=ps.executeQuery();
	rs.next();
	{
		%>
<div id="divfed" name="divfed" style="top:70%;left:7%;height:80%;width:75%;position: absolute;padding:50px;position: absolute;">
<div id="99" style="top: 20%;left: 5%;height: 73%;width:47%;background-image:url('/edwell/images/Feed4.jpg');padding-top: 7%; position: absolute;">


<form action="#" method="post">
<table  style=" font: large;color: navy;padding: 10%" align="center">
<tr>
<th>UserID</th>
<td><%=rs.getString("id")%></td>
</tr>
<tr>
<th>Feedback</th>
<td><%=rs.getString("fbdesc")%></td>
</tr>
</table></form></div>
<%}}
	catch(SQLException se)
	{
		System.out.println(se);
	}%>


<div id="icons" style="top: 17%;left: 65%;height: 40%;width: 40%;position: absolute;border-radius: 50px;background-image:url('/edwell/images/ha.jpg');">
<img id="img2" style="width: 100%;height: 100%;position: absolute;border-radius:50px; "/>
</div>
<div id="icons" style="top: 65%;left: 76%;height: 30%;width: 30%;position: absolute;">
<img src="/edwell/images/feed.jpg" style="border-style: dotted;border-color: black;border-width: thick;">
</div>
</div>
</div>
</body>
</html>