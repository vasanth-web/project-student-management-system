<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.springboot.app.StudentUser" %>
<%@ page import="com.springboot.app.Database" %>
<%@ page import="com.springboot.app.AttendanceData" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student DBMS</title>
<link href="/css/attendancePageHomeStyle.css" rel="stylesheet">
</head>
<body>
	<div class="grid-container">
   
  	<header class="header">
    	<div class="header__search header-name">Student Management System</div>
	  	<div class="header__search button"><a href="/logout"><button>Log out</button></a></div>
  	</header>

  	<aside class="sidenav">	
	    <ul class="sidenav__list">
    		<li class="sidenav__list-item"><a href="/profileStaffPage">Profile</a></li>
      	  	<li class="sidenav__list-item"><a href="/timetableStaffPage">Time Table</a></li>
      		<li class="sidenav__list-item"><a href="/enterMarksStaff">Student Marks</a></li>
      		<li class="sidenav__list-item selected"><a href="/staffAttendance">Student Attendance</a></li>
    	</ul>
  	</aside>
	
	<%
		Database database = Database.getInstance();
	%>
	
  	<main class="main">
    	<div class="main-header">
      		<div class="main-header__heading">Hello there! Enter student username to enter attendance details.
      		
      		<ul>
			<%
				if(!database.getStudentList().isEmpty()) {
					for(Map.Entry<String, StudentUser> entry : database.getStudentList().entrySet()) {
						
						String username = entry.getKey();
						StudentUser student = entry.getValue();
						
						out.write("<span><li>");
				 		out.write("Staff Name: "+student.getFirstName()+" "+student.getLastName()+"; Username: "+student.getUsername()+".");
				 		out.write("</span></li>");				
					}
				}
				else {
					out.write("<span><li>");
			 		out.write("No entries so far!");
			 		out.write("</span></li>");
				}
			%>
		  </ul>
      		
			<div>
				<form action="/addAttendance" class="field-sub">
					<input type="text" placeholder="Enter username" class="extraField" name="email" required/><br>
					<input class="button" value="Open" type="submit"/>
				</form>
			</div>
		</div>
		</div>
	</main>
  	</div>
</body>
</html>