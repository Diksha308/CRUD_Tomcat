<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Communication</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
</head>
<body bgcolor="orange">
<form method="post"action="/edwell/composeadm">
<div style="top:220px;left:300px;width:1000px;height:450px;position: absolute;">
<table  style="font-style:normal; ;font-weight: bold;font-size:20;color:cyan;background-color: black">
<tr><th>Subject</th><td><input type="text" size=70 name="sub"  id="sub"></td></tr>
<tr>
<th>Message</th><td><textarea rows=8 cols=70  name="msg"></textarea></td>
</tr>
<tr><td colspan=2 align="center"><input type="submit" value="submit"></td></tr>
<div style="top:80%;left:10%;width:10%;height:10%;position:absolute"><a href="/edwell/jsp/staic/communication.jsp" style="background-color: black;color:yellow" >BACK</a></div>
</table></div>
</form> 



</body>
</html>