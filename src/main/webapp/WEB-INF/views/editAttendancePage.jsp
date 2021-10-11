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

<link href="/css/attendancePageStyle.css" rel="stylesheet"> 
<script> 
	function CheckStatus(val){
		var element=document.getElementById('status');
		if(val=='Leave')
			element.style.display='block';
		else  
			element.style.display='none';
	}
</script>

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
		StudentUser user = (StudentUser) session.getAttribute("user"); 
	%>
	
  	<main class="main">
    <div class="main-header">
      <div class="main-header__heading"><p>Enter the attendance details of ${user.getFirstName()}</p>
		
		<ul>
			<%	Database database = Database.getInstance();
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
		  
		<form action="addAttendanceData" method="post">
			
			<label>Status :</label>
			<select class="status" name="status" onchange='CheckStatus(this.value);'>  
    			<option value="Present">Present</option>
    			<option value="Leave">Leave</option>
  			</select>
  			
			<div id="status" style='display:none;'>
			<label>Reason :</label>
			<input type="text" class="reasonField" placeholder="Enter the reason for your leave" name="reason">
			</div>
			
  			<label for="date">Select date :</label>
  			<input type="date" id="date" class="dateField" name="date" required>
  			
  			<%!private static String message = "";%>
			<%
				 try {
				 	message = session.getAttribute("message").toString();
				 } catch (NullPointerException np) {
					message="";
				 	session.setAttribute("message", "");
				 }
				 if (!message.equals("")) {
					 out.write("<div class=\"message\">");
				        out.write("<span>");
					 	out.write(message);
					 	out.write("</span>");
						out.write("</div>");
					
				 	message = "";
				 	session.setAttribute("message", "");
				 }
			 %>
  			
			<input class="button" type="submit" value="Add">
		</form>
	  </div>
	</div>
	</main>
	</div>
</body>
</html>