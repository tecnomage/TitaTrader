package br.com.TitaTrader.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController
{

	//TODO colocar o css bootstrap na home
   @RequestMapping("/")
   public String index()
   {
	   System.out.println("acessando a home");
      return "home";
   }
}
