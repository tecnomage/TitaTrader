package br.com.TitaTrader.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/contact")
public class ContactController {

	@RequestMapping
	public ModelAndView Contact() {
		System.out.println("acessando contact");
		ModelAndView mv = new ModelAndView("contact");
		
		return mv;
		
	}
	
}
