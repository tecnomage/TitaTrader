package br.com.TitaTrader.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.TitaTrader.models.PaginatedList;
import br.com.TitaTrader.models.Trader;
import br.com.TitaTrader.models.Acao;

@Repository
@Transactional
public class TraderDao implements UserDetailsService {

	@PersistenceContext
	private EntityManager manager;

	public List<Trader> all() {
		return manager.createQuery("select a from Acao a", Trader.class).getResultList();
	}

	public void save(Trader trader) {
		manager.persist(trader);
	}

	public Trader findById(Integer id) {
		return manager.find(Trader.class, id);
	}

	public void remove(Trader trader) {
		manager.remove(trader);
	}

	public void update(Trader trader) {
		manager.merge(trader);
	}

	public PaginatedList paginated(int page, int max) {

		return new PaginatorQueryHelper().list(manager, Acao.class, page, max);

	}

	@Override
	public Trader loadUserByUsername(String nome) throws UsernameNotFoundException {
		
		List<Trader> trader = manager.createQuery("select t From Trader t" + " where t.nome = : nome", Trader.class)
				.setParameter("nome", nome).getResultList();

		if (nome.isEmpty()) {
			throw new UsernameNotFoundException("Usuario" + nome + "nao foi encontrado");
		}
		return trader.get(0);
	}
}
