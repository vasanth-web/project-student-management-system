<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.springboot.app.StudentUser" %>
<%@ page import="com.springboot.app.SubjectMarks" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student DBMS</title>
<link href="/css/profilePageStyle.css" rel="stylesheet"> 
</head>
<body>
	<div class="grid-container">
   	
  	<header class="header">
    <div class="header__search header-name">Student Management System</div>
	  <div class="header__search button"><a href="/logout"><button>Log out</button></a></div>
  	</header>

  	<aside class="sidenav">
    <ul class="sidenav__list">
      <li class="sidenav__list-item selected"><a href="/profilePage">Profile</a></li>
      <li class="sidenav__list-item"><a href="/timetable">Time Table</a></li>
      <li class="sidenav__list-item"><a href="/marks">Marks</a></li>
      <li class="sidenav__list-item"><a href="/attendance">Attendance</a></li>
    </ul>
  	</aside>
  
	<% StudentUser user = (StudentUser) session.getAttribute("user"); %>
  
  	<main class="main">
    <div class="main-header">
      <div class="main-header__heading">Hello ${user.getFirstName()} - Student!
		  <p>Here are the user details!</p>
		  <div class="flex-container main__list">
		  	<div class="values one">
			<ul>
				<li class="main__list-item">Email</li>
				<li class="main__list-item">Password</li>
				<li class="main__list-item">First Name</li>
				<li class="main__list-item">Last Name</li>
				<li class="main__list-item">Age</li>
				<li class="main__list-item">Permanant <br>Address</li>
				<li class="main__list-item">Register Number</li>
				<li class="main__list-item">Phone Number</li>		
			</ul>
			</div>
	        <div class="values two">
			<ul>
				<li class="main__list-item">: ${user.username}</li>
				<li class="main__list-item">: ${user.password}</li>
				<li class="main__list-item">: ${user.firstName}</li>
				<li class="main__list-item">: ${user.lastName}</li>
				<li class="main__list-item">: ${user.age}</li>
				<li class="main__list-item">: ${user.address}</li><br>
				<li class="main__list-item">: ${user.registerNumber}</li>
				<li class="main__list-item">: ${user.phoneNumber}</li>
			</ul>
			</div>	
		  </div>
	  </div>
	</div>
  </main>
</div>
</body>
</html> 
