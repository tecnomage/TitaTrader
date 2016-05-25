package br.com.TitaTrader.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.TitaTrader.daos.AcaoDao;
import br.com.TitaTrader.models.Acao;

@Controller
@RequestMapping("/acao")
public class AcaoController {
	
	private AcaoDao acaoDao;

	@RequestMapping("/listar")
	public ModelAndView lista() {

		ModelAndView mv = new ModelAndView("acao/listar");
		System.out.println("acessando mv do listar");
		return mv;
	}


	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView gravar(@Valid Acao acao, BindingResult result) {
		ModelAndView mv = null;
		return mv;
	}
	
	
	@RequestMapping("/form")
	public String form() {
		return "acao/form";
	}

}
