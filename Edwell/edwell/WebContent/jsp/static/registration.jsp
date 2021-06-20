<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTER YOURSELF</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">

<script type="text/javascript">
var imgarr=new Array(10);
imgarr[0]="/edwell/images/register_yourself.png";
imgarr[1]="/edwell/images/decorating-with-pink-2012-1-23-5-23-36.jpg";
imgarr[2]="/edwell/images/Online-Registration.jpg";
imgarr[3]="/edwell/images/Modern-Beach-House-Furniture.jpg";
imgarr[4]="/edwell/images/reg3.png";
imgarr[5]="/edwell/images/home-decor-blogs-I-love-cupcakepedia.jpg";
imgarr[6]="/edwell/images/register-top.jpg";
imgarr[7]="/edwell/images/childrens_bed_cupboard___kitchann_style.jpg";
imgarr[8]="/edwell/images/reg1.jpg";

var cnt=0;

function changePic()
{
	
document.getElementById("img1").src=imgarr[cnt];
cnt++;
if (cnt>8)
	{
	cnt=0;
	}
setTimeout("changePic()",2000);
}
</script>

</head>
<body background="/edwell/images/img2.jpg"  onload="changePic()">
<c:import url="/html/header.html"></c:import>
<c:import url="/html/footer.html"></c:import>

<div style="top:30%;left:8%;width:86%;height:40%;position:absolute">
<img src="/edesign1/images/img/fg.jpg" id="img1" style="width: 100%;height: 100%">
</div>



<div style="left: 5%;top: 80%;width: 30%;height: 60%;position: absolute;background-color: blue">
<a href="/edwell/jsp/static/designerReg.jsp">
<img src="/edwell/images/designer.jpg" style="width: 100%;height: 100%;position: absolute;"/>
</a>
</div>

<div style="left: 60%;top: 80%;width: 30%;height: 60%;position: absolute;background-color: blue">
<a href="/edwell/jsp/static/userReg.jsp">
<img src="/edwell/images/user.jpg" style="width: 100%;height: 100%;position: absolute;"/>
</a>
</div>

</body>
</html>