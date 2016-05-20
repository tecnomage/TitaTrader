package br.com.TitaTrader.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/acao")
public class AcaoController {

	@RequestMapping("/listar")
	public ModelAndView lista() {

		ModelAndView mv = new ModelAndView("acao/listar");
		System.out.println("acessando mv do listar");
		return mv;
	}

	@RequestMapping("/form")
	public String form() {
		return "acao/form";
	}

}
