<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- Featured Slider  -->
<script type="text/javascript" src="layout/scripts/jquery-s3slider.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#featured_slide_").s3Slider({
		timeOut:2500 
	});
});
</script>

</head>
<body>
<div class="wrapper row3">
  <div id="featured_slide_">
    <ul id="featured_slide_Content">
      <li class="featured_slide_Image"><a href="#"><img src="/edwell/images/barcelona_flat_living_room_rectangle.jpg" alt="" /></a>
        <div class="introtext">
          <h2>Template Details</h2>
          <p>This is a W3C compliant free website template from <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a>. This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>. You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>
        </div>
      </li>
      <li class="featured_slide_Image"><a href="#"><img src="/edwell/images/easy_edge_wiggle_chair_double_seat-rectangle.jpg" alt="" /></a>
        <div class="introtext">
          <h2>Catchy Title 2</h2>
          <p>For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>. Convallisvivamus nam loborta tellus vitae pendrerit justo donec justo pellenterdum nam. Convallisquismod orci quis ipsum alique orci sed morbi diculis et dapien. Semperultrices vitae pede enim pulvinare gravida est justo hendimente pellentum lacing.</p>
        </div>
      </li>
      <li class="featured_slide_Image"><a href="#"><img src="/edwell/images/feltmark-sconce-rectangle.jpg" alt="" /></a>
        <div class="introtext">
          <h2>Catchy Title 3</h2>
          <p>Curabiturpiscingillaenim justo augue gravida senean nec sed id suscinia dui estie. Parturnibh nec donec praesenean tellentesque quis arcu phasellus nec laoreet cumsan. Quissce hend tincidunt sem nunc dui aucibulum ris sceleifendrerisque tor orci.</p>
        </div>
      </li>
      <li class="clear featured_slide_Image"><!-- Important - Leave This Empty --></li>
    </ul>
  </div>
  </div>

</body>
</html>