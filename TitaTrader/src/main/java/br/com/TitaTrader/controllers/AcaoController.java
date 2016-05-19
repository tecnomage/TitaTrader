package br.com.TitaTrader.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/acao")
public class AcaoController {
	
	
	@RequestMapping("/listar")
	public String lista() {
		System.out.println("acessando novo listar");
		return "acao/listar";
	}
	
	@RequestMapping("/form")
	public String form() {
		return "cadastrar";
	}
	
	
	
	
}
