package com.springboot.app;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@Autowired
	LoginLogoutService service;
	
	@RequestMapping(value="/")
	public String login(HttpSession session) {
		
		if((session.getAttribute("user") != null && session.getAttribute("marks") != null)) {
			return "profilePage";
		}
		if(session.getAttribute("staff") != null) return "profileStaffPage";
		return "index";
	}
		
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String validLogin(@RequestParam("username") String username, @RequestParam("password") String password, 
			HttpSession session, Model model) {
		
		Database database = Database.getInstance();
		
		if(username.equals("admin") && password.equals("admin@123")) {
			return "adminProfilePage";
		}
		else if(service.isValidLoginAccount(username, password)) {
			
			StudentUser user = database.getStudentList().get(username);
			SubjectMarks marks = user.getMarks().get(username);
			
			session.setAttribute("user", user);
			session.setAttribute("marks", marks);
			
			return "profilePage";
		}
		else if(service.isValidStaffLogin(username, password)) {
			StaffUser staff = database.getStaffList().get(username);
			session.setAttribute("staff", staff);
			
			return "profileStaffPage";
		}
		else if(database.getStaffList().containsKey(username) || database.getStudentList().containsKey(username)) {
			String message = "Enter the correct password and try again!";

			session.setAttribute("message", message);
			return "index";
		}
		else {
			String message = "Account does not exist!. Please create a new account.";
			
			session.setAttribute("message", message);
			return "signupPage";
		}
	}
}
