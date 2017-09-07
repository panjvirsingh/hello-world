package com.order.management.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.order.management.domain.User;
import com.order.management.service.OrderDocumentService;
import com.order.management.service.UserService;

@Controller
public class HomeController {

	@Autowired
	OrderDocumentService orderDocumentService;
	
	
	@Autowired
	private UserService userService;

	@RequestMapping("/register")
	public ModelAndView getRegisterForm(@ModelAttribute("user") User user,
			BindingResult result) {
		ArrayList<String> gender = new ArrayList<String>();
		gender.add("Male");
		gender.add("Female");
		ArrayList<String> city = new ArrayList<String>();
		city.add("Delhi");
		city.add("Kolkata");
		city.add("Chennai");
		city.add("Bangalore");
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("gender", gender);
		model.put("city", city);
		System.out.println("Register Form");
		return new ModelAndView("Register", "model", model);
	}

/*	@RequestMapping("/saveUser")
	public ModelAndView saveUserData(@ModelAttribute("user") User user,
			BindingResult result) {
		userService.addUser(user);
		System.out.println("Save User Data");
		return new ModelAndView("redirect:/userList.html");
	}*/

	@RequestMapping("/userList")
	public ModelAndView getUserList() {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("user", userService.getUser());
		return new ModelAndView("UserDetails", model);

	}
	 @RequestMapping("/login")
	 public String displayLogin(Model model) { 
		    model.addAttribute("user", new User()); 
		    return "login"; 
		}	
	 
	 
	 @RequestMapping("/loginform")
	 public String login(Model model) { 
		    return "home"; 
		} 
	 
	   @RequestMapping("/signup")
	   public String signup(Model model) { 
		    model.addAttribute("user", new User()); 
		    return "signup"; 
		}	
	   
	   @RequestMapping("/createorder")
	   public String createOrder(Model model) { 
		    model.addAttribute("user", new User()); 
		    return "createorder"; 
		}	
	   
	   
	   @RequestMapping("/createcommunication")
	   public String createCommunication(Model model) { 
		    model.addAttribute("user", new User()); 
		    return "createcommunication"; 
		}	

	   @RequestMapping("/createprincipal")
	   public String createPrincipal(Model model) { 
		    return "createprincipal"; 
		}	
	   
	   
	   @RequestMapping("/managedocuments")
	   public String manageDocuments(Model model) { 
		    return "managedocuments"; 
		}	
	   
	   
	   @RequestMapping("/home")
		 public String homePage(Model model) { 
		   model.addAttribute("user", new User()); 
			    return "home"; 
	}	
	   

		
}
