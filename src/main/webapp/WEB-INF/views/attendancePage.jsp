<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.springboot.app.StudentUser" %>
<%@ page import="com.springboot.app.SubjectMarks" %>
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
   <div class="menu-icon">
    <i class="fas fa-bars header__menu"></i>
  </div>
   
  <header class="header">
    <div class="header__search header-name">Student Management System</div>
	  <div class="header__search button"><a href="/logout"><button>Log out</button></a></div>
  </header>

  <aside class="sidenav">
    <ul class="sidenav__list">
      <li class="sidenav__list-item"><a href="/profilePage">Profile</a></li>
      <li class="sidenav__list-item"><a href="/timetable">Time Table</a></li>
      <li class="sidenav__list-item"><a href="/marks">Marks</a></li>
      <li class="sidenav__list-item selected"><a href="/attendance">Attendance</a></li>
    </ul>
  </aside>
  
	<% 
		StudentUser user = (StudentUser) session.getAttribute("user"); 
	%>
	
  	<main class="main">
    <div class="main-header">
      <div class="main-header__heading"><p>Hello ${user.getFirstName()} - Student!</p>

		  <ul>
				<%
				if(!user.getAttendanceList().isEmpty()) {
					for(Map.Entry<Date, AttendanceData> entry:user.getAttendanceList().entrySet()) {
						
						Date date = entry.getKey();
						AttendanceData object = entry.getValue();
						
						DateFormat destDf = new SimpleDateFormat("dd-MM-yyyy");
			            String dateStr = destDf.format(date);
						
						String reason, status;
						status = object.getStatus();
						if(status.equals("Present")) {
							out.write("<span><li>");
					 		out.write(status+" on "+dateStr+".");
					 		out.write("</span></li>");
						}
						else {
							reason = object.getReason();
							
							out.write("<span><li>");
					 		out.write(status+" on "+dateStr+" due to "+reason+".");
					 		out.write("</span></li>");
						}
					}
				}
				else {
					out.write("<span><li>");
			 		out.write("No entries so far!");
			 		out.write("</span></li>");
				}
			%>
			</ul>
		  
	  </div>
	</div>
  </main>	
  </div>
</body>
</html>