package com.springboot.app;

public class StaffUser {
	String username;
	String password;
	
	String firstName;
	String lastName;
	
	int age;
	String address;
	
	String employeeID;
	String phoneNumber;
	@Override
	public String toString() {
		return "StaffUser [username=" + username + ", password=" + password + ", firstName=" + firstName + ", lastName="
				+ lastName + ", age=" + age + ", employeeID=" + employeeID + ", address=" + address
				+ ", phoneNumber=" + phoneNumber + "]";
	}
	public String getUsername() {
		return username;
	}
	public StaffUser(String username, String password, String firstName, String lastName, int age,
			String address, String employeeID, String phoneNumber) {
		super();
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.employeeID = employeeID;
		this.address = address;
		this.phoneNumber = phoneNumber;
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
	public String getEmployeeID() {
		return employeeID;
	}
	public void setEmployeeID(String employeeID) {
		this.employeeID = employeeID;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
}
