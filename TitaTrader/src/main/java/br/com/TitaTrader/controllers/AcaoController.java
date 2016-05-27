package br.com.TitaTrader.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.TitaTrader.daos.AcaoDao;
import br.com.TitaTrader.models.Acao;
import br.com.TitaTrader.validators.AcaoValidation;;

@Controller
@RequestMapping("/acao")
public class AcaoController {
	
	@Autowired
	private AcaoDao acaoDao;
	
	@InitBinder
	public void initBind(WebDataBinder dataBinder) {
	   dataBinder.addValidators(new AcaoValidation());
   }

	@RequestMapping("/listar")
	public ModelAndView lista() {

		ModelAndView mv = new ModelAndView("acao/listar");
		System.out.println("acessando mv do listar");
		return mv;
	}


	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView gravar(@Valid Acao acao, BindingResult result) {
		

		if (result.hasErrors()) {
			return form(acao);
		}
		
		ModelAndView mv = new ModelAndView("/TitaTrader");
		System.out.println("acessando o gravar");
		
		acaoDao.save(acao);
		
		return mv;
	}
	
	
	@RequestMapping("/form")
	public ModelAndView form(Acao acao) {
		ModelAndView mv= new ModelAndView("acao/form");
		System.out.println("acessando o form");
		return mv;
	}
	
	
}
