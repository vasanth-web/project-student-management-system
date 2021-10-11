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
      <li class="sidenav__list-item selected"><a href="/marks">Marks</a></li>
      <li class="sidenav__list-item"><a href="/attendance">Attendance</a></li>
    </ul>
  </aside>
  
  	<% 
  		StudentUser user = (StudentUser) session.getAttribute("user"); 
	 	SubjectMarks mark = (SubjectMarks) session.getAttribute("marks"); 
	%>
  
  	<main class="main">
    <div class="main-header">
      <div class="main-header__heading">Hello ${user.getFirstName()} - Student!
		  <p>Here are the user's marks!</p>
		<div class="flex-container">
		
		 <div class="values one">
			<ul>
				<li class="main__list-item">English 1</li>
				<li class="main__list-item">English 2</li>
				<li class="main__list-item">Tamil 1</li>
				<li class="main__list-item">Tamil 2</li>
				<li class="main__list-item">Mathematics</li>
				<li class="main__list-item">Physics</li>
				<li class="main__list-item">Chemistry</li>
				<li class="main__list-item">Comp. Science/Biology</li>		
			</ul>
			</div>
	    	<div class="values two">
			<ul>
				<li class="main__list-item">: <%= mark.getEnglish1() %></li>
				<li class="main__list-item">: <%= mark.getEnglish2() %></li>
				<li class="main__list-item">: <%= mark.getTamil1() %></li>
				<li class="main__list-item">: <%= mark.getTamil2() %></li>
				<li class="main__list-item">: <%= mark.getMaths() %></li>
				<li class="main__list-item">: <%= mark.getPhysics() %></li>
				<li class="main__list-item">: <%= mark.getChemistry() %></li>
				<li class="main__list-item">: <%= mark.getCompBio() %></li>
			</ul>
				<p>**-1 means not yet uploaded.</p>
			</div>
		 
		 </div>
	  </div>
	</div>
  </main>
</div>
</body>
</html>