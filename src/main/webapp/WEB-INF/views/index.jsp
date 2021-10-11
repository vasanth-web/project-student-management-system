<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student DBMS</title>
<link href="/css/indexPageStyle.css" rel="stylesheet">  
</head>
<body>
		<div class="container">
    		
    		<div class="primary">Student Management System</div>
    		
			<div class="title">Login</div>
    
			<div class="content">
		      <form action="/login" method="post">
		        <div class="user-details">
					<div class="input-box">
		            	<span class="details">Username</span>
		            	<input type="text" placeholder="Enter your username" name="username" required>
		          	</div>          
					<div class="input-box">
		            	<span class="details">Password</span>
		            	<input type="password" placeholder="Enter your password" name="password" required>
		          	</div>
		        </div>
		        
		        <%!private static String message = "";%>
				<%
					 try {
					 	message = session.getAttribute("message").toString();
					 } 
					 catch (NullPointerException np) {
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
		     	 	<input type="submit" value="Login">
		      	</div>
		      	
		      	<div class="bottom">Create a new Account? <a href="/signupPage">Sign up <span>&#8594</span></a></div>  	
		      	
		      </form>
		    </div>
	  	</div>
	</body>
</html>