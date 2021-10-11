package com.springboot.app;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class AttendanceController {
	
	@Autowired
	LoginLogoutService service;
	
	@RequestMapping(value="/addAttendanceData", method=RequestMethod.POST )
	public String addAttendanceData(HttpServletRequest request, HttpSession session) throws ParseException {
		
		String Date1 = request.getParameter("date");
		
		Date currentDate = new SimpleDateFormat("yyyy-MM-dd").parse(Date1); 
				
		String reason = request.getParameter("reason");
		String status = request.getParameter("status");
		
		StudentUser user = (StudentUser) session.getAttribute("user");
		
		if(service.isValidDate(user.getUsername(), currentDate)) {
			user.getAttendanceList().put(currentDate, new AttendanceData(status, reason));
		}
		else {
			String message = "Date already added. Add a new date!";
			
			session.setAttribute("message", message);
		}
		return "editAttendancePage";
	}
}
