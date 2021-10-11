<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.springboot.app.StaffUser" %>
<%@ page import="com.springboot.app.Database" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student DBMS - Admin</title>

<link href="/css/attendancePageHomeStyle.css" rel="stylesheet">

<script type="text/javascript">
function addText()
{
	var div1 = document.getElementById("extraText");
    div1.innerHTML = "<input class='extraField' name='username' placeholder='Enter the username to be deleted' type='text'/>";
}
</script>
 
</head>
<body>
	<div class="grid-container">
   
  	<header class="header">
    	<div class="header__search header-name">Student Management System - Admin Panel</div>
	  	<div class="header__search button"><a href="/logout"><button>Log out</button></a></div>
  	</header>

  	<aside class="sidenav">	
	    <ul class="sidenav__list">
    		<li class="sidenav__list-item selected"><a href="/staffProfile">Staff Data</a></li>
      	  	<li class="sidenav__list-item"><a href="/studentProfile">Student Data</a></li>
      		<li class="sidenav__list-item"><a href="/viewAdminTimetable">Time Table</a></li>
      		<li class="sidenav__list-item"><a href="/enterMarks">Marks</a></li>
    	</ul>
  	</aside>
  	
  	<%
  		Database database = Database.getInstance();
  	%>
  	
  	<main class="main">
    <div class="main-header">
      <div class="main-header__heading"><p>Hello Admin!</p>
		  <form action="addStaff">
			  <input class="button button-top" type="submit" value="Add Staff">
		  </form>
		  
		  <form action="deleteStaff" method="post"> 
          		<input type="button"  class="button button-top" id="btnok" onclick="addText();" value="Delete Staff"/>
          		<div id="extraText"></div>
          		<input type="submit" class="button button-top" value="Delete">
          </form>
		  
		  <ul>
			<%
				if(!database.getStaffList().isEmpty()) {
					for(Map.Entry<String, StaffUser> entry : database.getStaffList().entrySet()) {
						
						String username = entry.getKey();
						StaffUser staff = entry.getValue();
						
						out.write("<span><li>");
				 		out.write("Staff Name: "+staff.getFirstName()+" "+staff.getLastName()+"; Username: "+staff.getUsername()+".");
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