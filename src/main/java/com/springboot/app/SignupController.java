package com.springboot.app;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignupController {
	
	@Autowired
	LoginLogoutService service;
	
	@RequestMapping("/signupPage")
	public String signup(HttpSession session) {
		
		if(session.getAttribute("user") != null && session.getAttribute("marks") != null) {
			return "profilePage";
		}
		if(session.getAttribute("staff") != null ) return "profileStaffPage";
		return "signupPage";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String validSignup(HttpServletRequest request, Model model) {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		
		StudentUser newStudent = new StudentUser(
												username, password,
				request.getParameter("firstName"), request.getParameter("lastName"),
				Integer.parseInt(request.getParameter("age")), request.getParameter("address"),
				request.getParameter("registerNumber"), request.getParameter("phoneNumber"));
		
		Database database = Database.getInstance();
		
		if(service.isValidUserID(username) && service.isValidEmail(username) && service.isValidPassword(password)) {
			
			database.getStudentList().put(username, newStudent);

			session.setAttribute("user", database.getStudentList().get(username));
			session.setAttribute("marks", newStudent.getMarks().get(username));
			
			return "profilePage";			
		}
		else if(service.isValidUserID(username) == false) {
			
			String message = "Email already exists. Please use a new Email!";
		
			session.setAttribute("message", message);
			return "signupPage";
		}
		else if(service.isValidEmail(username) == false) {
			
			String message = "Please enter a valid Email!";

			session.setAttribute("message", message);
			return "signupPage";
		}
		else {
			
			String message = "Enter a valid password.";
			
			session.setAttribute("message", message);
			return "signupPage";
		}
	}
}
