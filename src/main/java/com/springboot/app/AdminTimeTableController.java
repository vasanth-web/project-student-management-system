package com.springboot.app;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminTimeTableController {
	
	Database database = Database.getInstance();
	
	@RequestMapping(value="/uploadTimetable", method=RequestMethod.POST)
	public String uploadTimetable(HttpServletRequest request) {
		
		database.getTimetable().clear();
		
		//Monday
		database.getMondayList().add(request.getParameter("monday-1"));
		database.getMondayList().add(request.getParameter("monday-2"));
		database.getMondayList().add(request.getParameter("monday-3"));
		database.getMondayList().add(request.getParameter("monday-4"));
		database.getMondayList().add(request.getParameter("monday-5"));
		
		//Tuesday
		database.getTuesdayList().add(request.getParameter("tuesday-1"));
		database.getTuesdayList().add(request.getParameter("tuesday-2"));
		database.getTuesdayList().add(request.getParameter("tuesday-3"));
		database.getTuesdayList().add(request.getParameter("tuesday-4"));
		database.getTuesdayList().add(request.getParameter("tuesday-5"));
		
		//Wednesday
		database.getWednesdayList().add(request.getParameter("wednesday-1"));
		database.getWednesdayList().add(request.getParameter("wednesday-2"));
		database.getWednesdayList().add(request.getParameter("wednesday-3"));
		database.getWednesdayList().add(request.getParameter("wednesday-4"));
		database.getWednesdayList().add(request.getParameter("wednesday-5"));
		
		//Thursday
		database.getThursdayList().add(request.getParameter("thursday-1"));
		database.getThursdayList().add(request.getParameter("thursday-2"));
		database.getThursdayList().add(request.getParameter("thursday-3"));
		database.getThursdayList().add(request.getParameter("thursday-4"));
		database.getThursdayList().add(request.getParameter("thursday-5"));
		
		//Friday
		database.getFridayList().add(request.getParameter("friday-1"));
		database.getFridayList().add(request.getParameter("friday-2"));
		database.getFridayList().add(request.getParameter("friday-3"));
		database.getFridayList().add(request.getParameter("friday-4"));
		database.getFridayList().add(request.getParameter("friday-5"));
		
		database.initializeTimeTable();
		
		return "viewTimeTablePage";
	}
}
