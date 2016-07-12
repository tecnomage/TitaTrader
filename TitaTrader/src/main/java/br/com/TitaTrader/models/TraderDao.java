package br.com.TitaTrader.models;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;



@Component
public class TraderDao implements UserDetailsService {


	@PersistenceContext
	private EntityManager manager;

	@Override
	public Trader loadUserByUsername(String nome) throws UsernameNotFoundException {

		List<Trader> trader = manager.createQuery("select t From Trader t" + " where t.nome = :nome", Trader.class)
				.setParameter("nome", nome).getResultList();

		if (nome.isEmpty()) {
			throw new UsernameNotFoundException("Usuario" + nome + "nao foi encontrado");
		}
		return trader.get(0);
	}

	

	public void gravar(Trader trader) {
		manager.persist(trader);

	}

}
