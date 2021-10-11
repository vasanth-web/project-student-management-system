<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student DBMS - Admin</title>
<link href="/css/timetableStyle.css" rel="stylesheet"> 
</head>
<body>
	<div class="grid-container">
   
  	<header class="header">
    	<div class="header__search header-name">Student Management System - Admin Panel</div>
	  	<div class="header__search button"><a href="/logout"><button>Log out</button></a></div>
  	</header>

  	<aside class="sidenav">	
	    <ul class="sidenav__list">
    		<li class="sidenav__list-item"><a href="/staffProfile">Staff Data</a></li>
      	  	<li class="sidenav__list-item"><a href="/studentProfile">Student Data</a></li>
      		<li class="sidenav__list-item selected"><a href="/viewAdminTimetable">Time Table</a></li>
      		<li class="sidenav__list-item"><a href="/enterMarks">Marks</a></li>
    	</ul>
  	</aside>
  	
  	<main class="main">
    	<div class="main-header">
      		<div class="main-header__heading">Hello Admin! Enter the new timetable.
				<div class="main-main main-sub" id="time-table">
					<p class="table-header">TIME TABLE</p>
					<form action="/uploadTimetable" method="post"><table>
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
						  <td><input type="text" class="table-box" name="monday-1" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="monday-2" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="monday-3" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="monday-4" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="monday-5" placeholder="Enter subject" required/></td>
					  </tr>
					  <tr>
					    <td><b>Tuesday</b></td>
						  <td><input type="text" class="table-box" name="tuesday-1" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="tuesday-2" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="tuesday-3" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="tuesday-4" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="tuesday-5" placeholder="Enter subject" required/></td>
					  </tr>
					  <tr>
					    <td><b>Wednesday</b></td>
						  <td><input type="text" class="table-box" name="wednesday-1" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="wednesday-2" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="wednesday-3" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="wednesday-4" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="wednesday-5" placeholder="Enter subject" required/></td>
					  </tr>
					  <tr>
					    <td><b>Thursday</b></td>
						  <td><input type="text" class="table-box" name="thursday-1" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="thursday-2" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="thursday-3" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="thursday-4" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="thursday-5" placeholder="Enter subject" required/></td>
					  </tr>
					  <tr>
					    <td><b>Friday</b></td>
						  <td><input type="text" class="table-box" name="friday-1" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="friday-2" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="friday-3" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="friday-4" placeholder="Enter subject" required/></td>
						  <td><input type="text" class="table-box" name="friday-5" placeholder="Enter subject" required/></td>
					  </tr>
					  </table>
				      <input class="button-bottom" type="submit" value="Upload"/></form>
				</div>
			</div>
		</div>
	</main>

	</div>
</body>
</html>