<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.springboot.app.StudentUser" %>
<%@ page import="com.springboot.app.Database" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student DBMS - Admin</title>
<link href="/css/attendancePageHomeStyle.css" rel="stylesheet">
</head>
<body>
	<div class="grid-container">
   
  	<header class="header">
    	<div class="header__search header-name">Student Management System - Admin Panel</div>
	  	<div class="header__search button"><a href="/logout"><button>Log out</button></a></div>
  	</header>

  	<aside class="sidenav">	
	    <ul class="sidenav__list">
    		<li class="sidenav__list-item"><a href="staffProfile">Staff Data</a></li>
      	  	<li class="sidenav__list-item selected"><a href="studentProfile">Student Data</a></li>
      		<li class="sidenav__list-item"><a href="viewAdminTimetable">Time Table</a></li>
      		<li class="sidenav__list-item"><a href="enterMarks">Marks</a></li>
    	</ul>
  	</aside>
  	
  	<%
  		Database database = Database.getInstance();
  	%>
  	<main class="main">
    <div class="main-header">
      <div class="main-header__heading"><p>Hello Admin!</p>
		  <ul>
			<%
				if(!database.getStudentList().isEmpty()) {
					for(Map.Entry<String, StudentUser> entry : database.getStudentList().entrySet()) {
						
						String username = entry.getKey();
						StudentUser student = entry.getValue();
						
						out.write("<span><li>");
				 		out.write("Student Name: "+student.getFirstName()+" "+student.getLastName()+"; Username: "+student.getUsername()+".");
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
		  
	  </div>
	</div>
  	</main>

	</div>
</body>
</html>