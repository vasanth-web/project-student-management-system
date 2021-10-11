<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.springboot.app.StudentUser" %>
<%@ page import="com.springboot.app.Database" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student DBMS</title>
<link href="/css/timetableStyle.css" rel="stylesheet"> 
</head>
<body> 
	<div class="grid-container">
	<header class="header">
    	<div class="header__search header-name">Student Management System</div>
  		<div class="header__search button"><a href="/logout"><button>Log out</button></a></div>
  	</header>	
  	
  	<aside class="sidenav">
    	<ul class="sidenav__list">
      		<li class="sidenav__list-item"><a href="/profilePage">Profile</a></li>
      		<li class="sidenav__list-item selected"><a href="/timetable">Time Table</a></li>
      		<li class="sidenav__list-item"><a href="/marks">Marks</a></li>
      		<li class="sidenav__list-item"><a href="/attendance">Attendance</a></li>
    	</ul>
  	</aside>
	<% 
		StudentUser user = (StudentUser) session.getAttribute("user"); 
		Database database = Database.getInstance();
	%>
	<main class="main">
    	<div class="main-header">
      		<div class="main-header__heading">Hello ${user.getFirstName()} - Student!
				<div class="main-main" id="time-table">
					<p class="table-header">TIME TABLE</p>

					<table>
					  <tr>
					    <th><b>Days/Periods</b></th>
					    <th>1</th>
					    <th>2</th>
					    <th>3</th>
					    <th>4</th>
					    <th>5</th>
					  </tr>
					  <tr>
					    <td><b>Monday</b></td>
					    <td><%= database.getSubject(0, 0) %></td>
					    <td><%= database.getSubject(0, 1) %></td>
					    <td><%= database.getSubject(0, 2) %></td>
					    <td><%= database.getSubject(0, 3) %></td>
					    <td><%= database.getSubject(0, 4) %></td>
					  </tr>
					  <tr>
					    <td><b>Tuesday</b></td>
					    <td><%= database.getSubject(1, 0) %></td>
					    <td><%= database.getSubject(1, 1) %></td>
					    <td><%= database.getSubject(1, 2) %></td>
					    <td><%= database.getSubject(1, 3) %></td>
					    <td><%= database.getSubject(1, 4) %></td>
					  </tr>
					  <tr>
					    <td><b>Wednesday</b></td>
					    <td><%= database.getSubject(2, 0) %></td>
					    <td><%= database.getSubject(2, 1) %></td>
					    <td><%= database.getSubject(2, 2) %></td>
					    <td><%= database.getSubject(2, 3) %></td>
					    <td><%= database.getSubject(2, 4) %></td>
					  </tr>
					  <tr>
					    <td><b>Thursday</b></td>
					    <td><%= database.getSubject(3, 0) %></td>
					    <td><%= database.getSubject(3, 1) %></td>
					    <td><%= database.getSubject(3, 2) %></td>
					    <td><%= database.getSubject(3, 3) %></td>
					    <td><%= database.getSubject(3, 4) %></td>
					  </tr>
					  <tr>
					    <td><b>Friday</b></td>
					    <td><%= database.getSubject(4, 0) %></td>
					    <td><%= database.getSubject(4, 1) %></td>
					    <td><%= database.getSubject(4, 2) %></td>
					    <td><%= database.getSubject(4, 3) %></td>
					    <td><%= database.getSubject(4, 4) %></td>
					  </tr>
					</table>
				</div>
			</div>
		</div>
	</main>
</div>	
</body>
</html>