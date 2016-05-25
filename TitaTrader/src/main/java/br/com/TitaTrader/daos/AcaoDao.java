package br.com.TitaTrader.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import br.com.TitaTrader.models.PaginatedList;
import br.com.TitaTrader.models.Acao;


@Repository
public class AcaoDao {

	@PersistenceContext
	private EntityManager manager;

	public List<Acao> all() {
		return manager.createQuery("select c from Category c", Acao.class).getResultList();
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

	public void update(Acao category) {
		manager.merge(category);
	}

	public PaginatedList paginated(int page, int max) {
	
		
		return new PaginatorQueryHelper().list(manager, Acao.class, page, max);
		
	}

}
