package com.springboot.app;

import java.util.*;

import org.springframework.stereotype.Controller;

@Controller
public class Database {
	
	public HashMap<String, StudentUser> studentList = new HashMap<String, StudentUser>();
	public HashMap<String, StaffUser> staffList = new HashMap<String, StaffUser>();

	static Database instance = null;
	
	public Database() {}

	//Time table list
	public ArrayList<ArrayList<String>> timetable = new ArrayList<ArrayList<String>>(5);
	ArrayList<String> mondayList = new ArrayList<String>(5);
	ArrayList<String> tuesdayList = new ArrayList<String>(5);
	ArrayList<String> wednesdayList = new ArrayList<String>(5);
	ArrayList<String> thursdayList = new ArrayList<String>(5);
	ArrayList<String> fridayList = new ArrayList<String>(5);
	
	public static Database getInstance() {
		if(instance == null) {
			instance =  new Database();
		}
		return instance;
	}	
	public void initializeTimeTable() {
		timetable.add(getMondayList());
		timetable.add(getTuesdayList());
		timetable.add(getWednesdayList());
		timetable.add(getThursdayList());
		timetable.add(getFridayList());
	}
	public String getSubject(int day, int period) {
		try {
			return timetable.get(day).get(period);
		}
		catch (Exception exception) {
			return "    Nil   ";
		}
	}
	public boolean isValidLoginAccount(String username, String password) {
		if(studentList.get(username).getPassword().equals(password)) { 
			return true;
		}
		else { 
			return false;
		}
	}
	
	public boolean isValidSigninAccount(String username) {
		if(studentList.containsKey(username)) return false;
		else return true;
	}
	
	public boolean isValidMarks(int english1, int english2,	int tamil1,	int tamil2,	int maths,	
			int physics, int chemistry,	int compBio) {
			if(english1<=100 && english1 >=0 && english2<=100 && english2 >=0 &&
				tamil1<=100 && tamil1 >=0 && tamil2<=100 && tamil2 >=0 &&
				maths<=100 && maths >=0 && physics<=100 && physics >=0 &&
				chemistry<=100 && chemistry >=0 && compBio<=100 && compBio >=0 ) {
					return true;
					}
			else return false;
	}
	public ArrayList<String> getMondayList() {
		return mondayList;
	}

	public void setMondayList(ArrayList<String> mondayList) {
		this.mondayList = mondayList;
	}

	public ArrayList<String> getTuesdayList() {
		return tuesdayList;
	}

	public void setTuesdayList(ArrayList<String> tuesdayList) {
		this.tuesdayList = tuesdayList;
	}

	public ArrayList<String> getWednesdayList() {
		return wednesdayList;
	}

	public void setWednesdayList(ArrayList<String> wednesdayList) {
		this.wednesdayList = wednesdayList;
	}

	public ArrayList<String> getThursdayList() {
		return thursdayList;
	}

	public void setThursdayList(ArrayList<String> thursdayList) {
		this.thursdayList = thursdayList;
	}

	public ArrayList<String> getFridayList() {
		return fridayList;
	}

	public void setFridayList(ArrayList<String> fridayList) {
		this.fridayList = fridayList;
	}

	public ArrayList<ArrayList<String>> getTimetable() {
		return timetable;
	}

	public void setTimetable(ArrayList<ArrayList<String>> timetable) {
		this.timetable = timetable;
	}
		
	public HashMap<String, StudentUser> getStudentList() {
		return studentList;
	}

	public HashMap<String, StaffUser> getStaffList() {
		return staffList;
	}

	public void setStaffList(HashMap<String, StaffUser> staffList) {
		this.staffList = staffList;
	}

	public void setStudentList(HashMap<String, StudentUser> studentList) {
		this.studentList = studentList;
	}
}
