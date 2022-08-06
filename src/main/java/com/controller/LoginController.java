package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.User;
import com.service.UserService;

@Controller
public class LoginController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/")
	public ModelAndView loadLoginPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index.jsp");
		return mav;
	}

	@RequestMapping(value = "signIn", method = RequestMethod.POST)
	public ModelAndView signIn(HttpServletRequest req, User u) {
        HttpSession session = req.getSession();
		String emailid = req.getParameter("emailid");
		String password = req.getParameter("password");

		u.setEmail_Id(emailid);
		u.setPassword(password);

		String result = userService.signIn(u);
		

		ModelAndView mav = new ModelAndView();

		if (result.equals("admin")) {
			mav.setViewName("adminDashboard.jsp");
			mav.addObject("username", u.getEmail_Id());
			session.setAttribute("uname", u.getEmail_Id());
			
		} else if (result.equals("user")) {
			mav.setViewName("home.jsp");
			mav.addObject("username", u.getEmail_Id());
			session.setAttribute("uname", u.getEmail_Id());
			session.setAttribute("uname", u.getEmail_Id());
			
		} else if (result.equals("Wrong email or password")) {
			mav.setViewName("index.jsp");
			mav.addObject("msg", "Wrong username or password");
		} else {
			mav.setViewName("index.jsp");
			mav.addObject("msg", "User Not Found, Please Register");
		}
		return mav;
	}

	@RequestMapping(value = "signUp", method = RequestMethod.POST)
	public ModelAndView signUp(HttpServletRequest req, User u) {
		String email = req.getParameter("emailid");
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String userType = "user";

		u.setEmail_Id(email);
		u.setName(name);
		u.setPassword(password);
		u.setUser_Type(userType);

		ModelAndView mav = new ModelAndView();
		String result = userService.signUp(u);

		mav.setViewName("registration.jsp");
		mav.addObject("msg", result);

		return mav;

	}
	
	@RequestMapping(value = "changePassword",method = RequestMethod.POST)
	public ModelAndView changePassword(HttpServletRequest req, User u) {
		String email = req.getParameter("emailid");
		String newpassword = req.getParameter("password");
		
		u.setEmail_Id(email);
		u.setPassword(newpassword);
		
		String result = userService.changePassword(u);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("changePassword.jsp");
		mav.addObject("msg", result);
		
		return mav;
		
	}
	@RequestMapping(value = "viewUsers",method = RequestMethod.GET)
	public ModelAndView viewUsers() {
		
		List<User>users = userService.getAllUser();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewUsers.jsp");
		mav.addObject("users", users);
		
		return mav;
		
	}
}
