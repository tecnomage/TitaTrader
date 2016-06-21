package br.com.TitaTrader.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
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

		List<Acao> acoes = acaoDao.all();
		ModelAndView mv = new ModelAndView("acao/listar");

		mv.addObject("acoes", acoes);

		System.out.println("acessando mv do listar");
		return mv;
	}

	@RequestMapping(value = "/gravar", method = RequestMethod.POST)
	public ModelAndView gravar(@Valid Acao acao, BindingResult result) {

		if (result.hasErrors()) {
			return form(acao);
		}

		ModelAndView mv = new ModelAndView("redirect:/");

		acaoDao.save(acao);

		return mv;
	}

	@RequestMapping("acao/form")
	public ModelAndView form(Acao acao) {
		ModelAndView mv = new ModelAndView("acao/form");
		System.out.println("acessando o form");
		return mv;
	}

	@RequestMapping("acao/detalhe/{id}")
	public ModelAndView detalhe(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView("acao/detalhe2");

		Acao acao = acaoDao.findById(id);
		mv.addObject("acao", acao);

		return mv;
	}

	@RequestMapping("acao/atualizar")
	public ModelAndView atualizar(@Valid Acao acao, BindingResult result) {

		if (result.hasErrors())
			return form(acao);

		ModelAndView mv = new ModelAndView("redirect:/");
		System.out.println("acessando o gravar");

		acaoDao.update(acao);

		return mv;
	}

}
