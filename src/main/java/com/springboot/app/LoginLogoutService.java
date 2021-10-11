package com.springboot.app;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Service;

@Service
public class LoginLogoutService {
	
	Database database = Database.getInstance();
	
	public boolean isValidLoginAccount(String username, String password) {
		
		if(database.getStudentList().containsKey(username) && password.equals(database.getStudentList().get(username).getPassword())) { 
			return true;
		}
		return false;
	}
	public boolean isValidStaffLogin(String username, String password) {
		
		if(database.getStaffList().containsKey(username) && password.equals(database.getStaffList().get(username).getPassword())) {
			return true;
		}
		return false;
	}
	public boolean isValidUserID(String username) {
		if(database.getStudentList().containsKey(username)) return false;
		return true;
	}
	
	public boolean isValidEmail(String email)
    {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+
                            "[a-zA-Z0-9_+&*-]+)*@" +
                            "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
                            "A-Z]{2,7}$";
                              
        Pattern pattern = Pattern.compile(emailRegex);
        
        if (email == null)
            return false;
        
        return pattern.matcher(email).matches();
    }
	
	public boolean isValidPassword(String password)
    {
        String regex = "^(?=.*[0-9])"
                       + "(?=.*[a-z])(?=.*[A-Z])"
                       + "(?=.*[@#$%^&+=])"
                       + "(?=\\S+$).{8,20}$";
        
        Pattern pattern = Pattern.compile(regex);
  
        if (password == null) {
            return false;
        }

        Matcher matcher = pattern.matcher(password);
        return matcher.matches();
    }
	
	public boolean isValidDate(String username, Date currentDate) {
		if(database.getStudentList().get(username).getAttendanceList().containsKey(currentDate)) return false;
		else return true;
	}
	
}
