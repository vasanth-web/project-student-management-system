<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student DBMS</title>
</head>
<link href="/css/signupPageStyle.css" rel="stylesheet">  
<body>
  <div class="container">
  	<div class="primary">Student Management System</div>
    <div class="title">Staff Sign up</div>
    <div class="content">
    
      <form action="/staffSignup" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Email Address</span>
            <input type="text" name = "username" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="text" name="password" placeholder="Enter your password" required>
          </div>
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" name="firstName" placeholder="Enter your first name" required>
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" name="lastName" placeholder="Enter your last name" required>
          </div>
          <div class="input-box">
            <span class="details">Age</span>
            <input type="text" name="age" placeholder="Enter your age" required>
          </div>
          <div class="input-box">
            <span class="details">Address</span>
            <input type="text" name="address" placeholder="Enter your address" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phoneNumber" placeholder="Enter your phone number" required>
          </div>
          <div class="input-box">
            <span class="details">Employee ID</span>
            <input type="text" name="employeeId" placeholder="Enter your employee id" required>
          </div>
        </div>
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
        
        <div class="button">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </div>
</body>
</html>