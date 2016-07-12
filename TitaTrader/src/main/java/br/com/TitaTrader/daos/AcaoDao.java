package br.com.TitaTrader.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.TitaTrader.models.Acao;
import br.com.TitaTrader.models.PaginatedList;


@Repository
@Transactional
public class AcaoDao {

	@PersistenceContext
	private EntityManager manager;

	public List<Acao> all() {
		return manager.createQuery("select a from Acao a", Acao.class).getResultList();
	}

	public void save(Acao acao) {
		manager.persist(acao);
	}

	public Acao findById(Integer id) {
		return manager.find(Acao.class, id);
	}

	public void remove(Acao category) {
		manager.remove(category);
	}

	public void update(Acao acao) {
		manager.merge(acao);
	}

	public PaginatedList paginated(int page, int max) {
	
		
		return new PaginatorQueryHelper().list(manager, Acao.class, page, max);
		
	}

}
