package com.Sproject.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Sproject.model.AnswerDAO;
import com.Sproject.model.AnswerDTO;
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
	
	@Autowired
	private AnswerDAO adao;
	
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
	
	@RequestMapping("goProjectAPage.do")
	public String goProjectAPage(Model model) {
		
		List<StudentsDTO> list = this.dao.getStudentsList();
		
//		System.out.println("list-size >>> " + list.size());
		
		model.addAttribute("studentsList", list);
		
		return "projectA";
	}
	
	
	@RequestMapping("goAboutPage.do")
	public String goAboutPage(Model model) {
		
		List<StudentsDTO> list = this.dao.getStudentsList();
		
		model.addAttribute("studentsList", list);

		return "about";
	}
	
	@RequestMapping("goShopPage.do")
	public String goShopPage() {
		
		return "shop";
	}
	
	@RequestMapping("goStudentsPage.do")
	public String goStudentsPage() {
		
		return "students";
	}
	
	@RequestMapping("goAnswerPage.do")
	public String goAnswerPage(Model model) {
		
		List<AnswerDTO> list = this.adao.getAndswerList();
		
		model.addAttribute("aList", list);
		
		return "answer";
	}
	
	@RequestMapping("insertMessage.do")
	public void insertAnswer(AnswerDTO dto, HttpServletResponse response) throws IOException {
		
		int check = this.adao.insertAnswer(dto);
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('메시지 등록 성공')");
			out.println("location.href='goAnswerPage.do'");
			out.println("</script>");
			
		}else {
			out.println("<script>");
			out.println("alert('메시지 등록 실패')");
			out.println("history.back()'");
			out.println("</script>");
			
		}
		
	}
}
