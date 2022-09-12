package org.ncu.Spring_E_Library_Project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.validation.Valid;
import org.ncu.Spring_E_Library_Project.dao.RegistrationDao;
import org.ncu.Spring_E_Library_Project.entity.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuthenticationController {
	
	@Autowired
	private RegistrationDao regDao;

	@ModelAttribute("regUser")
	public Authentication getRegistration(HttpServletRequest request) {
		return new Authentication();
	}
	
	
	
	@PostMapping("/registerPage")
	public String showUserLoginForm(@Valid @ModelAttribute("regUser") Authentication authUser,BindingResult br) {
		if(br.hasErrors()) {
		System.out.println(br.getAllErrors());
		JOptionPane.showMessageDialog(null,"Username should be 4 characters long. \nPassword should be minimum 8 characters long.", "INVALID CREDENTIALS" ,JOptionPane.ERROR_MESSAGE);
		return "home";
	    }
		
		else {
			int r = regDao.addEntry(authUser);
			if (r==1) {
				System.out.println("Successfully registered");
			    return "options";
			}
			
			else if (r==-1){
				System.out.println("User already registered");
				JOptionPane.showMessageDialog(null,"You are already registered. \nTry to login!!", "REGISTERED USER" ,JOptionPane.ERROR_MESSAGE);
			    return "home";
			}
			else {
				System.out.println("Error in registering");
			    return "home";
			}
		}
	}
	
	@PostMapping("/loginPage")
	public String loginProcess(@ModelAttribute("regUser") Authentication authUser) {

			int userLogin = regDao.login(authUser);

			if(userLogin==1) {
				System.out.println("Successful login");
				return "options";
			}
			else if(userLogin==2){
				JOptionPane.showMessageDialog(null,"You are not registered. \nPlease register yourself!!", "UNREGISTERED USER" ,JOptionPane.ERROR_MESSAGE);
				return "home";

			}
			else {
				System.out.println("Wrong Password");    
			    JOptionPane.showMessageDialog(null,"Incorrect password. \nRe-enter the details!!", "WRONG PASSWORD" ,JOptionPane.ERROR_MESSAGE);
				return "home";
		}
	}
	
	@RequestMapping(value="/loggingOut", method=RequestMethod.GET)
	public String logOut(HttpServletRequest request) {
		
	    HttpSession ses1 = request.getSession(false);
	    System.out.println("Session 1: " + ses1.getId());
	    ses1.invalidate();
	    
	    System.out.println("Session 2: " + ses1.getId());
		return "home";
	}
	

}

