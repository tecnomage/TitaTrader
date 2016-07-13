package br.com.TitaTrader.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.TitaTrader.models.Trader;
import br.com.TitaTrader.models.TraderDao;


@RequestMapping("/trader")
@Controller
public class TraderController {
	
	@Autowired
	private TraderDao traderDao;

	@Transactional
	@RequestMapping("/gravar")
	public ModelAndView gravar(Trader trader) {

		ModelAndView mv = new ModelAndView("/");
		
		trader.toString();
		
		traderDao.gravar(trader);

		return mv;
	}

	@RequestMapping("/form")
	public ModelAndView form() {
		ModelAndView mv = new ModelAndView("/trader/form");
		System.out.println("acessando o form");
		return mv;

	}
}
