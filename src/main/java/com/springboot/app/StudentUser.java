package com.springboot.app;

import java.util.Date;
import java.util.HashMap;

public class StudentUser {
	public String username;
	public String password;
	
	public String firstName;
	public String lastName;
	
	public int age;
	public String address;
	
	public String registerNumber;
	public String phoneNumber;
	
	HashMap<Date, AttendanceData> attendanceList = new HashMap<Date, AttendanceData>();
	HashMap<String, SubjectMarks> marks = new HashMap<String, SubjectMarks>();
	
	public HashMap<String, SubjectMarks> getMarks() {
		return marks;
	}
	public void setMarks(HashMap<String, SubjectMarks> marks) {
		this.marks = marks;
	}
	public HashMap<Date, AttendanceData> getAttendanceList() {
		return attendanceList;
	}
	public void setAttendanceList(HashMap<Date, AttendanceData> attendanceList) {
		this.attendanceList = attendanceList;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRegisterNumber() {
		return registerNumber;
	}
	public void setRegisterNumber(String registerNumber) {
		this.registerNumber = registerNumber;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public StudentUser(String username, String password, String firstName, String lastName, int age, String address,
			String registerNumber, String phoneNumber) {
		super();
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.address = address;
		this.registerNumber = registerNumber;
		this.phoneNumber = phoneNumber;
		
		SubjectMarks mark = new SubjectMarks();
		marks.put(username, mark);
	}
	@Override
	public String toString() {
		return "StudentUser [username=" + username + ", password=" + password + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", age=" + age + ", address=" + address + ", registerNumber="
				+ registerNumber + ", phoneNumber=" + phoneNumber + ", marks=" + marks + "]";
	}
	
	
}
