package com.Sproject.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Sproject.model.StudentsDAO;
import com.Sproject.model.StudentsDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	
	@Autowired
	private StudentsDAO dao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "home";
	}
	
	@RequestMapping("goMainPage.do")
	public String goMainPage(Model model) {
		
		List<StudentsDTO> list = this.dao.getStudentsList();
		
//		System.out.println("list-size >>> " + list.size());
		
		model.addAttribute("studentsList", list);
		
		return "main";
	}
	
	
	@RequestMapping("goAboutPage.do")
	public String goAboutPage() {
		
		return "about";
	}
	
	@RequestMapping("goShopPage.do")
	public String goShopPage() {
		
		return "shop";
	}
	
}
