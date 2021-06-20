<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*,java.sql.*" %>
    <%@page import="comc.dbutil.CrudOperation"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function showDesigner(did)
{
	var x;
	if(XMLHttpRequest)
		{
			x=new XMLHttpRequest();
		}
	else
		{
			x= new ActiveXObject("Microsoft.XMLHTTP");
		}
	x.onreadystatechange=function()
	{
			if(x.readyState==4 && x.status==200)
				{
					var info=x.responseText;
					document.getElementById("div1").innerHTML=info;
				}
		}
	x.open("GET","/edwell/jsp/static/showDesigner.jsp?dmid="+did,"true");
	x.send();
}
</script>

</head>
<body bgcolor="orange">
<div style="top:32%;left:1%;width:30px;height:30px;position:absolute">

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
		<select name="des" onchange="showDesigner(this.value)">
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
</div>	
	<div id="div1" style="top:40%;left:10%;width:50%;height:50%;position:absolute"></div>

<div style="top:80%;left:1%;width:10%;height:10%;position:absolute"><a href="/edwell/jsp/static/user.jsp">BACK</a></div>

</body>
</html>