<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.springboot.app.StudentUser" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student DBMS</title>
<link href="/css/dataPageStyle.css" rel="stylesheet"> 
</head>
	<body> 
		<div class="container">

    <div class="title">Data Page</div>
    <div class="content">
      <form action="/upload" method="post">
        <div class="user-details">
        
          <div class="input-box">
            <span class="details">English 1</span>
            <input type="text" name = "english1" placeholder="Enter your mark" required>
          </div>
          
          <div class="input-box">
            <span class="details">English 2</span>
            <input type="text" name="english2" placeholder="Enter your mark" required>
          </div>
          
          <div class="input-box">
            <span class="details">Tamil 1</span>
            <input type="text" name="tamil1" placeholder="Enter your mark" required>
          </div>
          
          <div class="input-box">
            <span class="details">Tamil 2</span>
            <input type="text" name="tamil2" placeholder="Enter your mark" required>
          </div>
          
          <div class="input-box">
            <span class="details">Mathematics</span>
            <input type="text" name="maths" placeholder="Enter your mark" required>
          </div>
          
          <div class="input-box">
            <span class="details">Physics</span>
            <input type="text" name="physics" placeholder="Enter your mark" required>
          </div>
          
          <div class="input-box">
            <span class="details">Chemistry</span>
            <input type="text" name="chemistry" placeholder="Enter your mark" required>
          </div>
          
          <div class="input-box">
			  <span class="details">Computer Science / Biology</span>
            <input type="text" name="compBio" placeholder="Enter your mark" required>
          </div>
        </div>      
        
        <%! private static String message = ""; %>
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
          <input type="submit" value="Upload">
        </div>
      </form>
    </div>
  </div>		
</body>
</html>