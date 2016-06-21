import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.TitaTrader.daos.TraderDao;
import br.com.TitaTrader.models.Trader;


//@RequestMapping("/trader")
public class TraderController {

	@Autowired
	private TraderDao traderDao;

	@RequestMapping("/gravar")
	public ModelAndView gravar(Trader trader) {

		ModelAndView mv = new ModelAndView("/");

		traderDao.gravar(trader);

		return mv;
	}

	@RequestMapping("/form")
	public ModelAndView form() {
		ModelAndView mv = new ModelAndView("/cadastro");
		System.out.println("acessando o form");
		return mv;

	}
}
