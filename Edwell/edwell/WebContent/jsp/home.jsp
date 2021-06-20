<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Dwell Designer</title>
<link rel="stylesheet" type="text/css" href="/edwell/css/style.css">
<link rel="stylesheet" href="/edwell/layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="/edwell/layout/scripts/jquery.min.js"></script>
<!-- Featured Slider  -->
<script type="text/javascript" src="/edwell/layout/scripts/jquery-s3slider.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#featured_slide_").s3Slider({
		timeOut:2500 
	});
});
</script>
</head>
<body background="/edwell/images/img2.jpg">
<c:import url="/html/header.html"></c:import>
<c:import url="/html/footer.html"></c:import>
<div style="top:30%;left:5%;width:70%;height:10%;position:absolute">
<img src="/edwell/images/home pic 2.jpg" width="100%" height="100%">
</div>
<div style="top:28%;left:77%;width:20%;height:20%;position:absolute">
<img src="/edwell/images/house-blue-roof_3.jpg" width="100%" height="100%">
</div>
<div style="top:50%;left:0%;width:100%;height:100%;position:absolute" class="wrapper row3">
  <div id="featured_slide_">
    <ul id="featured_slide_Content">
      <li class="featured_slide_Image"><a href="#"><img src="/edwell/images/barcelona_flat_living_room_rectangle.jpg" alt="" /></a>
        <div class="introtext">
          <h2>ARCHITECHTURE DESIGNING</h2>
          <p>Experienced Architects from all over India <a href="http://www.os-templates.com/"></a>a <a href="http://www.os-templates.com/template-terms"></a>f</p>
        </div>
      </li>
      <li class="featured_slide_Image"><a href="#"><img src="/edwell/images/easy_edge_wiggle_chair_double_seat-rectangle.jpg" alt="" /></a>
        <div class="introtext">
          <h2>INTERIOR DESIGNERS</h2>
          <p>Experienced Interior Designers from all over India <a href="http://www.os-templates.com/"></a></p>
        </div>
      </li>
      <li class="featured_slide_Image"><a href="#"><img src="/edwell/images/feltmark-sconce-rectangle.jpg" alt="" /></a>
        <div class="introtext">
          <h2>USER- DESIGNER INTRACTION</h2>
          <p>We provide a platform for interaction of user and designer</p>
        </div>
      </li>
      <li class="clear featured_slide_Image">Important - Leave This Empty</li>
    </ul>
  </div>
  <div id="hpage_featured_info" class="clear">
    <ul>
      <li><a href="#"><img src="/edwell/images/barcelona_flat_living_room_rectangle.jpg" alt="" /> <strong>DWELL</strong></a></li>
      <li><a href="#"><img src="/edwell/images/easy_edge_wiggle_chair_double_seat-rectangle.jpg" alt="" /> <strong>ON</strong></a></li>
      <li class="last"><a href="#"><img src="/edwell/images/feltmark-sconce-rectangle.jpg" alt="" /> <strong>DESIGN</strong></a></li>
    </ul>
  </div>
  </div>


<!-- 
<div style="top:50%;left:0%;width:100%;height:100%;background-color:red;position:absolute">
<img src="/edwell/images/Interior-Design-34.jpg" width="100%" height="100%">
</div>
 --></body>
</html>