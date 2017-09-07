package com.order.management.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.order.management.domain.User;
import com.order.management.model.UserPojo;
import com.order.management.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	

	@RequestMapping("/createuser")
	public ModelAndView createUserData(ModelMap model) {
		UserPojo userpojo = new UserPojo();
		model.addAttribute("userpojo", userpojo);
		return new ModelAndView("createuser");
	}	   
	   
	@RequestMapping(value = { "/saveUser" }, method = RequestMethod.POST)
	public ModelAndView saveUserData(@Valid @ModelAttribute("userpojo") UserPojo userpojo,BindingResult result,HttpServletRequest req) {
		User user=new User();
		user.setAddress(userpojo.getAddress());
		user.setLoginId(userpojo.getLoginId());
		user.setPassword(userpojo.getPassword());
		user.setCity(userpojo.getCity());
		user.setState(userpojo.getState());
		user.setFirstName(userpojo.getFirstName());
		user.setLastName(userpojo.getLastName());
		user.setEmail(userpojo.getEmail()); 
		user.setPhone(userpojo.getPhone());
		user.setPincode(userpojo.getPincode());
		userService.addUser(user);
		return new ModelAndView("createusersuccess");

	}
	
	@RequestMapping("/updatedeleteuser")
	public ModelAndView createDeleteUser(ModelMap model) {
		List<User> userList=userService.getUser();
		UserPojo userpojo = new UserPojo();
		model.addAttribute("userpojo", userpojo);
		model.addAttribute("userList",userList);
		return new ModelAndView("updatedeleteuser", "model", model);
	}
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public ModelAndView updateUser( @ModelAttribute("userpojo") UserPojo userpojo,HttpServletRequest req,ModelMap model) {
		   String response = "";
		   String userID=req.getParameter("userID");
		   if(userID!=null && userID.length()>0){
		   User user=new User();
		   user.setId(Integer.parseInt(userID));
		   System.out.println(userpojo.getFirstName());
		   System.out.println(userpojo.getLastName());
			user.setAddress(userpojo.getAddress());
			user.setLoginId(userpojo.getLoginId());
			user.setPassword(userpojo.getPassword());
			user.setCity(userpojo.getCity());
			user.setState(userpojo.getState());
			user.setFirstName(userpojo.getFirstName());
			user.setLastName(userpojo.getLastName());
			user.setEmail(userpojo.getEmail()); 
			user.setPhone(userpojo.getPhone());
			user.setPincode(userpojo.getPincode());
			userService.updateUser(user);
			response = "User is updated Successfully";
		   }
		   else{
			   response = "User Id from UI is null can' update user";
		   }
		    List<User> userList=userService.getUser();
			UserPojo userpj = new UserPojo();
			model.addAttribute("userpojo", userpj);
			model.addAttribute("userList",userList);
			return new ModelAndView("updatedeleteuser", "model", model);
		}
}
