package org.ncu.Spring_E_Library_Project.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response, HttpServletRequest request) throws IOException{
		
		HttpSession session = request.getSession();    // create a new session
		
		System.out.println("Session ID: " + session.getId());
		return new ModelAndView("home");
	}
}
