<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.springboot.app.StaffUser" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    		<li class="sidenav__list-item selected"><a href="/profileStaffPage">Profile</a></li>
      	  	<li class="sidenav__list-item"><a href="/timetableStaffPage">Time Table</a></li>
      		<li class="sidenav__list-item"><a href="/enterMarksStaff">Student Marks</a></li>
      		<li class="sidenav__list-item"><a href="/staffAttendance">Student Attendance</a></li>
    	</ul>
  	</aside>
  	
  	<% 
  		StaffUser staff = (StaffUser) session.getAttribute("staff");
  	%>
  	
  	<main class="main">
    <div class="main-header">
      <div class="main-header__heading">Hello ${staff.getFirstName()} - Staff!
		  <p>Here are the staff details!</p>
		  <div class="flex-container main__list">
		  	<div class="values one">
			<ul>
				<li class="main__list-item">Email</li>
				<li class="main__list-item">Password</li>
				<li class="main__list-item">First Name</li>
				<li class="main__list-item">Last Name</li>
				<li class="main__list-item">Age</li>
				<li class="main__list-item">Permanant <br>Address</li>
				<li class="main__list-item">Employee ID</li>
				<li class="main__list-item">Phone Number</li>		
			</ul>
			</div>
	        <div class="values two">
			<ul>
				<li class="main__list-item">: ${staff.getUsername()}</li>
				<li class="main__list-item">: ${staff.getPassword()}</li>
				<li class="main__list-item">: ${staff.getFirstName()}</li>
				<li class="main__list-item">: ${staff.getLastName()}</li>
				<li class="main__list-item">: ${staff.getAge()}</li>
				<li class="main__list-item">: ${staff.getAddress()}</li><br>
				<li class="main__list-item">: ${staff.getEmployeeID()}</li>
				<li class="main__list-item">: ${staff.getPhoneNumber()}</li>
			</ul>
			</div>	
		  </div>
	  </div>
	</div>
  </main>
</div>
</body>
</html>