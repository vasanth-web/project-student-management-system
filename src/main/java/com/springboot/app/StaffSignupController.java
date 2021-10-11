package com.springboot.app;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StaffSignupController {
	
	@Autowired
	LoginLogoutService service;
	
	@RequestMapping(value="/staffSignup", method=RequestMethod.POST)
	public String staffSignup(HttpServletRequest request, HttpSession session) {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		StaffUser newStaff = new StaffUser(
												username, password,
				request.getParameter("firstName"), request.getParameter("lastName"),
				Integer.parseInt(request.getParameter("age")), request.getParameter("address"),
				request.getParameter("employeeId"), request.getParameter("phoneNumber"));
		
		Database database = Database.getInstance();
		
		if(service.isValidUserID(username) && service.isValidEmail(username) && service.isValidPassword(password)) {
			
			database.getStaffList().put(username, newStaff);
			
			return "adminProfilePage";
		}
		else if(service.isValidUserID(username) == false) {
			
			String message = "Email already exists. Please use a new Email!";
		
			session.setAttribute("message", message);
			return "signupStaffPage";
		}
		else if(service.isValidEmail(username) == false) {
			
			String message = "Please enter a valid Email!";

			session.setAttribute("message", message);
			return "signupStaffPage";
		}
		else {
			
			String message = "Enter a valid password.";
			
			session.setAttribute("message", message);
			return "signupStaffPage";
		}
	}
	
	@RequestMapping(value = "/deleteStaff", method=RequestMethod.POST)
	public String deleteStaff(HttpServletRequest request) {
		
		String username = request.getParameter("username");
		
		Database database = Database.getInstance();
		
		if(database.getStaffList().containsKey(username)) {
			database.getStaffList().remove(username);
		}
		return "adminProfilePage";
	}
	
}
