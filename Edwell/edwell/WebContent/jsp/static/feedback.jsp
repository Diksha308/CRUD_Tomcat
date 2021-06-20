<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Opinion</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
<script type="text/javascript">
var imgarr= new Array(8);
imgarr[0]="/edwell/images/reva_feedback_banner.jpg";
imgarr[1]="/edwell/images/554.jpg";
imgarr[2]="/edwell/images/banner_feedback.png";
imgarr[3]="/edwell/images/chngpic1.jpg";
imgarr[4]="/edwell/images/3.jpg";
imgarr[5]="/edwell/images/2.jpg";
imgarr[6]="/edwell/images/4.jpg";
imgarr[7]="/edwell/images/feedback (1).jpg";
cnt=0;

function changePic(){
	
document.getElementById("img1").src=imgarr[cnt];
cnt++;
if (cnt>7)
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
<div id="DIV1" style="top: 35%;left: 6%;height: 30%;width: 88%;position: absolute;border-radius: 50px;">
<img id="img1" style="height: 90%;width: 100%;border-radius:20px;position: absolute;">
</div>


<div id="divfed" name="divfed" style="top:70%;left:7%;height:80%;width:75%;position: absolute;padding:50px;position: absolute;">
<div id="99" style="top: 10;left: 5%;height: 73%;width:47%;background-image:url('/edwell/images/Feed4.jpg');padding-top: 7%; position: absolute;">
<form action="/edwell/Feedback" method="post" onsubmit="return main()">
<table  align="center">
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr>
<tr><td>USER ID</td>
<td><input type="text" name="txtuserid" id="txtuserid" required="required"></td>
</tr>
<tr>
<td>NAME </td>
<td><input type="text" name="txtusernm" id="txtusernm" ></td>
</tr>
<tr><td rowspan="2" style="text-align: left;">FEEDBACK</td><td><textarea cols="30" rows="10" name="feedback" id="feedback" required="required"> </textarea></td></tr>
<tr><td> </td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr></tr>
<tr> <td> </td>
<td> <input type="submit" value="submit" style="background-color: green;"> </td></tr>
</table>
</form>
</div>

<div id="icons" style="top: 17%;left: 70%;height: 15%;width: 28%;position: absolute;border-radius: 50px;padding-left: 5%;padding-top: 13%;background-image:url('/edwell/images/ha.jpg');">
<h2 style="font-family: cursive;font-size: 35px;color:black;">View Feedback</h2>

<div id="divview" style="top: 1%;left: 30%;height: 100%;width: 100%;position: absolute;">
<a href="/edwell/jsp/static/feedbackinfo.jsp">
<img src="/edwell/images/feed1.png" style="width: 40%;height: 65%;position: absolute; "/>
</a>
</div>
</div>
<div id="icons" style="top: 65%;left: 76%;height: 30%;width: 30%;position: absolute;">
<img src="/edwell/images/feed.jpg" style="border-style: dotted;border-color: black;border-width: thick;">
</div>
</div>
</body>
</html>