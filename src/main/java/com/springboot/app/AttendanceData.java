package com.springboot.app;

public class AttendanceData {
	String status;
	String reason;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	@Override
	public String toString() {
		if(this.reason == "") return "AttendanceData [status=" + status + "]";
		else return "AttendanceData [status=" + status + ", reason=" + reason + "]";
	}
	public AttendanceData(String status, String reason) {
		super();
		this.status = status;
		this.reason = reason;
	}
	
}
