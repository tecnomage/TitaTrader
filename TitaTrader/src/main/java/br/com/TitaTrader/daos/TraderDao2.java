package br.com.TitaTrader.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.TitaTrader.models.Acao;
import br.com.TitaTrader.models.Trader;

@Repository
@Transactional
public class TraderDao2 {

	@PersistenceContext
	public EntityManager manager;

	public void save(Trader trader) {
		manager.persist(trader);
	}

}