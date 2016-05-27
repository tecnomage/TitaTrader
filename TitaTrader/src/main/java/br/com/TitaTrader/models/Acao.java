package br.com.TitaTrader.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import br.com.TitaTrader.controllers.AcaoController;


@Entity
public class Acao
{

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Integer id;
   private String nome;
   private String observacoes;
   private Double preco;
   
 
   
   public Integer getId()
   {
      return this.id;
   }

   public void setId(Integer id)
   {
      this.id = id;
   }

   public String getNome()
   {
      return this.nome;
   }

   public void setNome(String nome)
   {
      this.nome = nome;
   }

   public String getDescription()
   {
      return this.observacoes;
   }

   public void setObservacoes(String observacoes)
   {
      this.observacoes = observacoes;
   }

public Double getPreco() {
	return preco;
}

public void setPreco(Double preco) {
	this.preco = preco;
}
}
