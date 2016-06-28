package br.com.TitaTrader.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Repository
public class TraderDaoData {
	
	@PersistenceContext
	public EntityManager manager;

	public TraderDaoData() {
	}
}