package br.com.TitaTrader.controllers;

import org.hibernate.validator.util.privilegedactions.NewInstance;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/about")
public class AboutController {

	@RequestMapping(method= RequestMethod.GET) 
	public ModelAndView about() {
		ModelAndView mv= new ModelAndView("about");
		System.out.println("acessando about.jsp");
		return mv;

	}

}
