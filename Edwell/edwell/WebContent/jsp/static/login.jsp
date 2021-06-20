<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
 --%> <%@ page import="java.util.*,java.sql.*" %>
    <%@page import="comc.dbutil.CrudOperation"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/final/css/style.css">
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
<script src="/srmgpc/js/validation.js"></script>
<script> 
function Main()
{
var ui=document.getElementById("textuserid").value;

if(checkEmpty(ui)==false)
   {
	alert("enter user id");
	document.getElementById("textuserid").focus();
	return false;
	}
var upass=document.getElementById("textuserpassword").value;	
if(checkEmpty(upass)==false)
	{
	alert("enter user password");
	document.getElementById("textuserpassword").focus();
	return false;
	}
}
var imgarr= new Array(5);
imgarr[0]="/edwell/images/login7.png";
imgarr[1]="/edwell/images/login8.png";
imgarr[2]="/edwell/images/login9.png";
imgarr[3]="/edwell/images/login10.png";
imgarr[4]="/edwell/images/login12.jpg";

cnt=0;

function changePic(){
	
document.getElementById("img1").src=imgarr[cnt];
cnt++;
if (cnt>4)
	{
	cnt=0;
	}
setTimeout("changePic()",3000);
}

	
</script>
</head>
<body background="/edwell/images/img2.jpg" onload="changePic(this.value)">

<c:import url="/html/header.html"></c:import>
<c:import url="/html/footer.html"></c:import>

<div id="DIV1" style="top: 35%;left:9%;height: 30%;width: 20%;position: absolute;">
<img id="img1" style="height: 150px;width: 590px">
</div>

<div id="DIV1" style="top:35%;left:55%;height: 30%;width: 88%;position: absolute;background-color: ;">
<img src="/edwell/images/login4.png" style="width:300px;height: 200px">
</div>
<div id="1" style="top:75%;left: 10%;height:70%;width:70%;position:absolute;">
<div id="3" style="top:3%;left: 0%;height:90%;width:80%;position:absolute;padding: 5%;background-image: url('/edwell/images/z34.jpg');">
<form action="/edwell/login" method="post" >  
<table>
<tr>
<td style="font-size:30px;font-family:Times new roman;color: navy;">USER ID</td>
<td><input type="text" name="textuserid" id="textuserid" style="height: 30px;width: 210px;" required="required"></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr>
<td style="font-size:30px;font-family:Times new roman;color: navy;">USER PASSWORD</td>
<td><input type="password" name="textuserpass" id="textuserpass" style="height: 30px;width: 210px;" required="required"></td>
</tr>
<tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr>
<td></td>


<td colspan="3" align="center" style="font-color:white;">
<input type="submit" value="submit" style="text-decoration: blink;background-color:navy;height: 40px;width: 210px;font-size:30px;font-family:algerian;font-color:white;">
</td>
</tr>
</table>
</form>

<div  id="DIV12" style="top:60%;left: 60%;height:29%;width:25%;position:absolute;border-radius: 50px;background-color: navy;">
<h3 style="font-family:ANDALUS;font-size: 35px;color:white;text-align: center;">NEW USER ? <br>
<a href="/edwell/jsp/static/registration.jsp">Sign Up</a></h3>
</div>



<div id="1" style="top:2%;left: 65%;height:30%;width:30%;position:absolute;">
<img src="/final/images/login2.png" style="height: 180px;width: 250px;">
</div>
</div>
</div>
</body>
</html>