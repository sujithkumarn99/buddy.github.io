<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*, com.techm.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Emp | Jobs Available</title>
</head>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

.shadowblockmenu-v {
	font: bold 14px Germand;
	width: 250px; /* width of menu */
}

.shadowblockmenu-v ul {
	border: 1px solid #eee;
	padding: 0;
	margin: 0;
	list-style: none;
}

.shadowblockmenu-v ul li {
	margin: 0;
	padding: 0;
}

.shadowblockmenu-v ul li a {
	display: block;
	text-transform: uppercase;
	color: #494949;
	padding: 20px 25px;
	text-decoration: none;
	border-bottom: 1px solid #cacaca;
	border-right: 1px solid #cacaca; /*right border between menu items*/
	-moz-box-shadow: inset 7px 0 10px rgba(114, 114, 114, 0.6);
	/* Add inset shadow to each menu item. First 3 values in (114,114,114, 0.5) specifies rgb values, last specifies opacity */
	-webkit-box-shadow: inset 7px 0 10px rgba(114, 114, 114, 0.6);
	box-shadow: inset 7px 0 10px rgba(114, 114, 114, 0.6);
	text-shadow: 0 -1px 1px #cfcfcf;
	/* CSS text shadow to give text some depth */
	-moz-transition: all 0.2s ease-in-out;
	/* Enable CSS transition between property changes */
	-webkit-transition: all 0.2s ease-in-out;
	-o-transition: all 0.2s ease-in-out;
	-ms-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
}

.shadowblockmenu-v ul li a:hover, .shadowblockmenu-v ul li a.selected {
	color: black;
	-moz-box-shadow: inset 7px 0 10px rgba(216, 89, 39, 0.5), inset 0 0 15px
		rgba(216, 89, 39, 0.6), inset 0 0 20px rgba(216, 89, 39, 0.8);
	/* Add 3 inset shadows to each menu item  */
	-webkit-box-shadow: inset 7px 0 10px rgba(216, 89, 39, 0.5), inset 0 0
		15px rgba(216, 89, 39, 0.6), inset 0 0 20px rgba(216, 89, 39, 0.8);
	box-shadow: inset 7px 0 10px rgba(216, 89, 39, 0.5), inset 0 0 15px
		rgba(216, 89, 39, 0.6), inset 0 0 20px rgba(216, 89, 39, 0.8);
}
</style>

<body bgcolor="#87CEEB">
	<%
		if (((String) session.getAttribute("session")).equals("true")) {

			session.setAttribute("username", ((String) session.getAttribute("username")));
			session.setAttribute("session", "true");
		}
	%>

	<jsp:include page="employeeHomePage.jsp"></jsp:include>

		<form action="referABuddy.jsp">
		<h3 align="center">Available Jobs ::</h3>
		<table align="center">
			<tr>
				<th>Select</th>
				<th>Jobcode</th>
				<th>Spoc Name</th>
				<th>Spoc email</th>
				<th>Skill</th>
				<th>Experience</th>
				<th>Location</th>
			</tr>
			<%
				int x = 0;

				ArrayList<Job> sp1 = (ArrayList<Job>) session.getAttribute("listOfJobs");

				for (Job i : sp1) {
			%>
			<tr>	<td><input type="radio" name="selected"
					value="<%=i.getJobcode()%>">select</td>
				<td><%=i.getJobcode()%></td>
				<td><%=i.getSpocName()%></td>
				<td><%=i.getMailId()%></td>
				<td><%=i.getSkill()%></td>
				<td><%=i.getExp()%></td>
				<td><%=i.getLocation()%></td>
			<br/>
			</tr>
			<%
				}
			%>

		</table>
		<center>
			<input type="submit" value="Refer buddy">
		</center>

	</form>
</body>
</html>