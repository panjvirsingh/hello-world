package com.order.management.controller;

import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;

import com.order.management.domain.Company;
import com.order.management.domain.Contact;
import com.order.management.domain.User;
import com.order.management.model.CompanyPojo;
import com.order.management.service.CompanyService;
import com.order.management.service.UserService;

@Controller
public class CompanyController {

	@Autowired
	private CompanyService companyService;

	@RequestMapping("/createclient")
	public ModelAndView createCompany(ModelMap model) {
		CompanyPojo companyPojo = new CompanyPojo();
		model.addAttribute("companypojo", companyPojo);
		return new ModelAndView("createclient");
	}

	@RequestMapping(value = { "/saveClient" }, method = RequestMethod.POST)
	public ModelAndView saveCompany( @ModelAttribute("companypojo") CompanyPojo companypojo,BindingResult result,HttpServletRequest req) {
		
		
		String contactName=req.getParameter("contactname1");
		String contactDesignation=req.getParameter("contactdesignation1");
		
		Company company=new Company();
		List<Contact> contactList=new ArrayList<Contact>();
		if(checkContact(contactName, contactDesignation)){
			System.out.println("Test");
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setCompanyId(company);
			contact.setDesignation(contactDesignation);
			contactList.add(contact);
		}
		
	    contactName=req.getParameter("contactname2");
		contactDesignation=req.getParameter("contactdesignation2");
		
		if(checkContact(contactName, contactDesignation)){
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setDesignation(contactDesignation);
			contact.setCompanyId(company);
			contactList.add(contact);
		}
		
		contactName=req.getParameter("contactname3");
		contactDesignation=req.getParameter("contactdesignation3");
		
		if(checkContact(contactName, contactDesignation)){
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setDesignation(contactDesignation);
			contact.setCompanyId(company);
			contactList.add(contact);
		}
		
		contactName=req.getParameter("contactname4");
		contactDesignation=req.getParameter("contactdesignation4");
		
		if(checkContact(contactName, contactDesignation)){
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setDesignation(contactDesignation);
			contact.setCompanyId(company);
			contactList.add(contact);
		}
		
		contactName=req.getParameter("contactname5");
		contactDesignation=req.getParameter("contactdesignation5");
		
		if(checkContact(contactName, contactDesignation)){
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setDesignation(contactDesignation);
			contact.setCompanyId(company);
			contactList.add(contact);
		}
		
		contactName=req.getParameter("contactname6");
		contactDesignation=req.getParameter("contactdesignation6");
		
		if(checkContact(contactName, contactDesignation)){
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setDesignation(contactDesignation);
			contact.setCompanyId(company);
			contactList.add(contact);
		}
		
		
		contactName=req.getParameter("contactname7");
		contactDesignation=req.getParameter("contactdesignation7");
		
		if(checkContact(contactName, contactDesignation)){
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setDesignation(contactDesignation);
			contact.setCompanyId(company);
			contactList.add(contact);
		}
		
		
		contactName=req.getParameter("contactname8");
		contactDesignation=req.getParameter("contactdesignation8");
		
		if(checkContact(contactName, contactDesignation)){
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setDesignation(contactDesignation);
			contact.setCompanyId(company);
			contactList.add(contact);
		}
		
		
		contactName=req.getParameter("contactname9");
		contactDesignation=req.getParameter("contactdesignation9");
		
		if(checkContact(contactName, contactDesignation)){
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setDesignation(contactDesignation);
			contact.setCompanyId(company);
			contactList.add(contact);
		}
		
		
		contactName=req.getParameter("contactname10");
		contactDesignation=req.getParameter("contactdesignation10");
		
		if(checkContact(contactName, contactDesignation)){
			Contact contact=new Contact();
			contact.setName(contactName);
			contact.setDesignation(contactDesignation);
			contact.setCompanyId(company);
			contactList.add(contact);
		}
	   
		company.setName(companypojo.getName());
		company.setIecNumber(companypojo.getIecNumber());
		company.setAddress(companypojo.getAddress());
		company.setCity(companypojo.getCity());
		company.setState(companypojo.getState());
		company.setEmail(companypojo.getEmail()); 
		company.setPhone(companypojo.getPhone());
		company.setPincode(companypojo.getPincode());
		company.setContactCollection(contactList);
		companyService.addCompany(company);
		return new ModelAndView("createcompanysuccess");
	}
	
	
	public boolean checkContact(String name,String designation){
		return (name!=null && name!="" && name.length()>0)||(designation!=null && designation!="" && designation.length()>0);
	}
	
}
