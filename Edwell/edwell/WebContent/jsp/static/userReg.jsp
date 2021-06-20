<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*,java.sql.*" %>
    <%@page import="comc.dbutil.CrudOperation"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
<script type="text/javascript">
var imgarr= new Array(7);
imgarr[0]="/edwell/images/Register8.png";
imgarr[1]="/edwell/images/register9.png";
imgarr[2]="/edwell/images/register10.png";
imgarr[3]="/edwell/images/register11.jpg";
imgarr[4]="/edwell/images/register12.gif";
imgarr[5]="/edwell/images/register13.png";
imgarr[6]="/edwell/images/register14.png";

cnt=0;

function changePic(){
	
document.getElementById("img1").src=imgarr[cnt];
cnt++;
if (cnt>6)
	{
	cnt=0;
	}
setTimeout("changePic()",3000);
}
</script>
</head>
<body background="/edwell/images/img2.jpg" onload="changePic(this.value) ">
<c:import url="/html/header.html"></c:import>

<c:import url="/html/footer.html"></c:import>

<div id="DIV1" style="top: 34%;left:4%;height: 30%;width: 20%;position: absolute;">
<img src="/edwell/images/img20.png" style="width:300px;height: 200px">
</div>

<div id="DIV1" style="top: 34%;left:30%;height: 30%;width: 88%;position: absolute;background-color: ;">
<img id="img1" style="height: 150px;width: 590px">
</div>
<div id="DIV1" style="top: 34%;left:74%;height: 30%;width: 20%;position: absolute;">
<img src="/edwell/images/img19.png" style="width:300px;height: 200px">
</div>

<div id="DIV1" style="top: 70%;left:8%;height: 30%;width: 81%;position: absolute;background-image:url('/edwell/images/ha.jpg');border-radius: 50px;padding-left: 1.1%;">
<h3 style="font-family: Andalus;font-size: 35px;color:white;padding-left: 3%;">Welcome to our registration panel.<br>
Get registered with us .</h3>
</div>
<div id="3" style="top:110%;left: 8%;height:95%;width:50%;position:absolute;padding: 5%;border-radius: 50px;background-image:url('/edwell/images/ha.jpg');padding-left: 5%;">


<form action="/edwell/UserRegister" method="post" onsubmit="return main()">
<table>
<tr>
<th style="font-family: Andalus;font-size: 30px;color:white;">User id</th><td><input type="text" size="50" value="enter id" name="txtuid" id="txtuid" style="width: 400px;height:30px; required="required"></td>
</tr>
<tr>
<th style="font-family: Andalus;font-size: 30px;color:white;">Name</th><td><input type="text" size="50" value="enter name" name="namy" id="namy" style="width: 400px;height:30px; required="required"></td>
</tr>

<tr>
<th style="font-family: Andalus;font-size: 30px;color:white;">Password</th><td><input type="password" size="50"  name="txtupass" id="txtupass" style="width: 400px;height:30px; required="required"></td>
</tr>
<tr>
<th style="font-family: Andalus;font-size: 30px;color:white;">Address</th><td><textarea rows=10 cols=100  name="txtaddress" style="width: 400px;height:30px; required="required"></textarea></td>
</tr>

<tr>
<th style="font-family: Andalus;font-size: 30px;color:white;">Email</th><td><input type="text"size="50" value="enter ur email id" name="emaily" id="emaily" style="width: 400px;height:30px; required="required"></td>
</tr>
<tr>
<th style="font-family: Andalus;font-size: 30px;color:white;">Gender</th>
<td style="font-family: Andalus;font-size: 30px;color:white;">Male:<input type="radio"name="gender"value="male" style="width: 40px;height: 15px;" required="required">
Female:<input type="radio"name="gender"value="female" style="width: 40px;height: 15px;" required="required"></td>
</tr>

<tr>
<th style="font-family: Andalus;font-size: 30px;color:white;">Phone no.</th><td><input type="number" size="50" value="phone no."name="phony" id="phony" style="width: 400px;height:30px; required="required"></td>
</tr>
<tr>
<th colspan="2"><input type="submit"value="submit" style="width: 200px;height: 40px;background-color: white;font-family: Andalus;font-size: 30px;color:purple;border-color: purple;"></th>
</tr>
</table>
</form>
</div>
</body>
</html>