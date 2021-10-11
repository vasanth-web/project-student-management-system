package com.springboot.app;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DataController {
	
	@Autowired
	LoginLogoutService service;
	
	@RequestMapping(value="/upload",method = RequestMethod.POST)
	public String uploadData(HttpServletRequest request, HttpSession session) {
		
		SubjectMarks subject = new SubjectMarks(
					Integer.parseInt(request.getParameter("english1")), Integer.parseInt(request.getParameter("english2")),
					Integer.parseInt(request.getParameter("tamil1")),Integer.parseInt(request.getParameter("tamil2")),
					Integer.parseInt(request.getParameter("maths")),Integer.parseInt(request.getParameter("physics")),
					Integer.parseInt(request.getParameter("chemistry")),Integer.parseInt(request.getParameter("compBio"))
				);
		
		StudentUser user = (StudentUser) session.getAttribute("user");
		
		Database database = Database.getInstance();
		
		if(database.isValidMarks(Integer.parseInt(request.getParameter("english1")), Integer.parseInt(request.getParameter("english2")),
					Integer.parseInt(request.getParameter("tamil1")),Integer.parseInt(request.getParameter("tamil2")),
					Integer.parseInt(request.getParameter("maths")),Integer.parseInt(request.getParameter("physics")),
					Integer.parseInt(request.getParameter("chemistry")),Integer.parseInt(request.getParameter("compBio")))) {
			
			user.getMarks().clear();
			user.getMarks().put(user.username, subject);

			session.removeAttribute("marks");
			session.setAttribute("marks", subject);
			
			StaffUser staff = (StaffUser) session.getAttribute("staff");
			
			if(staff != null) return "enterMarksStaffPage";
			return "enterStudentMarksPage";
		}
		else {
			String message = "Enter valid values!";
			
			session.setAttribute("message", message);
			return "dataPage";
		}
	}
	
}
