package com.springboot.app;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/profilePage")
	public String gotoProfile() {
		return "profilePage";
	}
	@RequestMapping("/timetable")
	public String gotoTimeTable() {
		return "timetablePage";
	}
	@RequestMapping("/marks")
	public String gotoMarks() {
		return "marksPage";
	}
	@RequestMapping("/attendance")
	public String gotoAttendance() {
		return "attendancePage";
	}
	@RequestMapping("/addAttendance")
	public String gotoEditAttendancePage(HttpServletRequest request, HttpSession session) {
		Database database = Database.getInstance();
		String username = request.getParameter("email");
		
		if(database.getStudentList().containsKey(username)) {
			session.removeAttribute("user");
			session.setAttribute("user", database.getStudentList().get(username));
			return "editAttendancePage";
		}
		return "staffAttendancePage";
	}
	@RequestMapping("/addStaff")
	public String gotoEditStaffData() {
		return "signupStaffPage";
	}
	@RequestMapping("/staffProfile")
	public String gotoStaffProfile() {
		return "adminProfilePage";
	}
	@RequestMapping("/studentProfile")
	public String gotoStudentProfile() {
		return "studentProfile";
	}
	@RequestMapping("/viewAdminTimetable")
	public String gotoAdminTimeTable(HttpSession session) {	
		Database database = Database.getInstance();
		
		if(database.getTimetable().isEmpty()) return "adminTimeTablePage";
		else return "viewTimeTablePage";
	}
	@RequestMapping("/editTimetable")
	public String gotoEditTimeTable() {
		return "adminTimeTablePage";
	}
	@RequestMapping("/enterMarks")
	public String gotoEnterMarks() {
		return "enterStudentMarksPage";
	}
	@RequestMapping("/takeToMarks")
	public String gotoStudentMarks(HttpServletRequest request, HttpSession session) {
		Database database = Database.getInstance();
		String username = request.getParameter("email");
		if(database.getStudentList().containsKey(username)) {
			StudentUser user = database.getStudentList().get(username); 
			
			session.setAttribute("user", user);
			return "dataPage";
		}
		return "enterStudentMarksPage";

	}
	@RequestMapping("/profileStaffPage")
	public String profileStaff() {
		return "profileStaffPage";
	}
	@RequestMapping("/timetableStaffPage")
	public String timetableStaff() {
		return "timetableStaffPage";
	}
	@RequestMapping("/enterMarksStaff")
	public String gotoMarksStaff() {
		return "enterMarksStaffPage";
	}
	@RequestMapping("/takeToMarksStaff")
	public String enterMarksStaffPage(HttpServletRequest request, HttpSession session) {
		Database database = Database.getInstance();
		String username = request.getParameter("email");
		if(database.getStudentList().containsKey(username)) {
			StudentUser student = database.getStudentList().get(username); 
			
			session.setAttribute("user", student);
			return "dataPage";
		}
		return "enterMarksStaffPage";
	}
	@RequestMapping("/staffAttendance")
	public String staffAttendance() {
		return "staffAttendancePage";
	}
}
