package br.com.TitaTrader.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import br.com.TitaTrader.models.Trader;

@Repository
@Transactional
public class TraderDao implements UserDetailsService {

	@PersistenceContext
	private EntityManager manager;

	@Override
	public Trader loadUserByUsername(String name) throws UsernameNotFoundException {

		List<Trader> trader = manager.createQuery("select t From Trader t" + " where t.name = :name", Trader.class)
				.setParameter("name", name).getResultList();

		if (name.isEmpty()) {
			throw new UsernameNotFoundException("Usuario" + name + "nao foi encontrado");
		}
		return trader.get(0);
	}

	public void gravar(Trader trader) {
		manager.persist(trader);

	}

}
