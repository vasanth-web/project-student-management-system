package com.springboot.app;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {

		session.removeAttribute("user");
		session.removeAttribute("marks");
		session.removeAttribute("staff");
		
		String message = "Successfully Logged out!";
		
		session.setAttribute("message", message);
		return "index";
	}
}
