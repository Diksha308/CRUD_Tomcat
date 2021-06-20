<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@ page import="java.util.*,java.sql.*" %>
    <%@page import="comc.dbutil.CrudOperation"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Designer Registration</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
<script type="text/javascript">
var imgarr= new Array(7);
imgarr[0]="/edwell/images/register1.gif";
imgarr[1]="/edwell/images/Register2.png";
imgarr[2]="/edwell/images/register3.png";
imgarr[3]="/edwell/images/register4.jpg";
imgarr[4]="/edwell/images/register5.png";
imgarr[5]="/edwell/images/register6.gif";
imgarr[6]="/edwell/images/Register7.jpg";

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
<div id="DIV1" style="top: 32%;left:4%;height: 30%;width: 20%;position: absolute;">
<img src="/edwell/images/reg.png" style="width:300px;height: 200px">
</div>

<div id="DIV1" style="top: 32%;left:30%;height: 30%;width: 67%;position: absolute;background-color: ;">
<<img id="img1" style="height: 150px;width: 590px">
</div>
<div id="DIV1" style="top: 33%;left:74%;height: 30%;width: 20%;position: absolute;">
<img src="/edwell/images/img19.png" style="width:300px;height: 200px">
</div>



<div id="DIV1" style="top: 65%;left:8%;height: 30%;width: 81%;position: absolute;background-image:url('/edwell/images/ha.jpg');border-radius: 50px;padding-left: 1.1%;">
<h3 style="font-family: Andalus;font-size: 35px;color:black;">Welcome to our registration panel.<br>
  Get registered with us and get monthly newsletters, accomodation available and great value on hostel and pg deals.</h3>
</div>
<div id="3" style="top:105%;left: 8%;height:120%;width:50%;position:absolute;padding: 5%;border-radius: 50px;background-image:url('/edwell/images/ha.jpg');padding-left: 5%;">


<form action="/edwell/DesignerRegister" method="post" onsubmit="return main()">
<table>
<tr>
<th>User id</th><td><input type="text"size="70"  name="txtuid" id="txtuid" placeholder="Enter User Id"></td>
</tr>
<tr>
<th>Name</th><td><input type="text" size="50"  name="namy" id="namy" placeholder="Enter Your Name"></td>
</tr>

<tr>
<th>Password</th><td><input type="password" size="50"  name="txtupass" id="txtupass" placeholder="Enter Password" maxlength="8"></td>
</tr>
<tr><th>Architecture/Interior Designer
</th>
<td>
<select name="tp" id="tp">
<option value="def">YOU ARE?</option>
<option>ARCHITECT</option>
<option>INTERIOR DESIGNER</option>
</select>
</td>
<tr>
<th>Address</th><td><textarea rows=5 cols=70  name="txtaddress"></textarea></td>
</tr>

<tr>
<th>Email</th><td><input type="email" size="50"  name="email" id="emaily" required="required"></td>
</tr>
<tr>
<th>Gender</th>
<td>Male:<input type="radio"name="gender"value="male">
Female:<input type="radio"name="gender"value="female"></td>
</tr>

<tr>
<th>Phone no.</th><td><input type="number" size="50"  name="phony" id="phony" required="required"></td>
</tr>
<tr>
<th>Experience</th><td><textarea rows=6 cols=70 name="txtexp" required="required"></textarea></td>
</tr>
<tr>
<th>About me</th><td><textarea rows=6 cols=70 name="txtabt" required="required"></textarea></td>
</tr>
<tr>
<th>University Enrollment No</th><td><input type="text" size="50" name="enrol" id="enrol"></td>
</tr>

<!-- <tr>
<td><select name="city"id="city" onchange="showCit(this.value)"size=1>
<option value="def">select your city</option>
<option value="lko" id="lk01">LUCKNOW</option>
<option value="vrn" id="vr01">VARANSI</option>
<option value="del" id="dl01">DELHI</option>
<option value="mum" id="mb01">MUMBAI</option>
<option value="mp" id="mp01">MP</option>
<option value="ap" id="ap01">AP</option>
<option value="guj" id="gj01">GUJRAT</option>
</select>

</td>
</tr>
 --><tr>
<th>University Full Name</th>
<td><input type="text"size="100" name="clnm" id="clnm"></td>
</table>
<%
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
con=CrudOperation.createConnection();
String strsql="select * from city";
try
	{
		ps=con.prepareStatement(strsql);
		rs=ps.executeQuery();
		%>
		<select name="ct" id="ct">
		<option value="def">select city</option>
		<%
		while(rs.next())
			{
				%>
				<option value="<%=rs.getString("cityid")%>">
	 			<%=rs.getString("cityname")%></option>
				<%
			}
			%>
			</select>
		<%
	} 
catch(SQLException se)
	{
		System.out.println(se);
	}

		%>
	<div id="div1"></div>
<table>
<tr>
<th colspan="2"><input type="submit"value="submit">
</th>
</tr>
</table>
</form>
</div>
</body>
</html>