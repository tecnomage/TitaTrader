package br.com.TitaTrader.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutController {

	@RequestMapping("/about")
	public String about() {
		System.out.println("acessando about.jsp");
		return "about";

	}

}
